package creakok.com.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.inject.Inject;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.Gson;

import creakok.com.domain.ChatRoomVO;
import creakok.com.domain.MessageVO;
import creakok.com.domain.UserVO;
import creakok.com.service.ChatDAO;

public class ChatHandler extends TextWebSocketHandler {

	@Inject
	private ChatDAO dao;
	
	// 전체 채팅
	private List<WebSocketSession> connectedUsers;

	public ChatHandler() {
	      connectedUsers = new ArrayList<WebSocketSession>(); // 웹소켓 세션을 저장할 List 생성
	}
	// 1:1 채팅
	private Map<String, WebSocketSession> users = new ConcurrentHashMap<String, WebSocketSession>();

	/* 클라이언트와 연결된 후
	 * WebSocketSession을 매개변수로 받고 클라이언트가 연결된 후 해당 클라이언트의 정보를 가져와 연결확인 작업을 한다.
	 * 접속한 클라이언트의 세션을 세션 저장 리스트에 add()로 추가한다.
	 */
	@Override 
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		log(session.getId() + " 연결 됨!!");
		users.put(session.getId(), session);
		connectedUsers.add(session);
	}
	
	/* 클라이언트와 연결이 끊어진 경우
	 * add()와 반대로 remove()를 이용해서 세션리스트에서 제거한다. 
	 */
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		log(session.getId() + " 연결 종료됨");
		connectedUsers.remove(session);
		users.remove(session.getId());
	}

	/* 웹소켓서버로 데이터를 전송했을 경우
	 * 연결된 모든 사용자에게 보내야하므로 for문으로 세션리스트에 있는 모든 세션들을 돌면서 
	 * sendMessage()를 이용해서 데이터를 주고 받는다.
	 */
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println(message.getPayload());

		Map<String, Object> map = null;

		MessageVO messageVO = MessageVO.convertMessage(message.getPayload());

	    System.out.println("1 : " + messageVO.toString());

	    ChatRoomVO roomVO  = new ChatRoomVO();
	    roomVO.setCLASS_class_id(messageVO.getCLASS_class_id()); //클래스
	    roomVO.setTUTOR_USER_user_id(messageVO.getTUTOR_USER_user_id()); //튜터
	    roomVO.setUSER_user_id(messageVO.getUSER_user_id()); //유저

	    ChatRoomVO croom =null;
	    if(!messageVO.getUSER_user_id().equals(messageVO.getTUTOR_USER_user_id())) {
	    	System.out.println("a");
	    	  
	    	if(dao.isRoom(roomVO) == null ) {
	    		System.out.println("b");
	    		dao.createRoom(roomVO);
	    		System.out.println("d");
	    		croom = dao.isRoom(roomVO);

	    	}else {
	    		System.out.println("C");
	    		croom = dao.isRoom(roomVO);
	    	}
	    }else {
    		croom = dao.isRoom(roomVO);
    	}

	    messageVO.setCHATROOM_chatroom_id(croom.getChatroom_id());
	    if(croom.getUSER_user_id().equals(messageVO.getMessage_sender())) {
	    	messageVO.setMessage_receiver(roomVO.getTUTOR_USER_user_id());
	    }else {
	    	messageVO.setMessage_receiver(roomVO.getUSER_user_id());
	    }
	    for (WebSocketSession websocketSession : connectedUsers) {
	       map = websocketSession.getAttributes();
	       UserVO login = (UserVO) map.get("login");

	       //받는사람
	       if (login.getUser_id().equals(messageVO.getMessage_sender())) {
	          Gson gson = new Gson();
	          String msgJson = gson.toJson(messageVO);
	          websocketSession.sendMessage(new TextMessage(msgJson));
	       }
	    }
	 }

	@Override

	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		log(session.getId() + " 익셉션 발생: " + exception.getMessage());
	}

	private void log(String logmsg) {
		System.out.println(new Date() + " : " + logmsg);
	}
}