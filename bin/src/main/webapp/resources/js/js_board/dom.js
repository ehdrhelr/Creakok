$(document).ready(function(){
    // 내용을 변경
    // 텍스트를 변경 : .text()
    $('.list li a:first').text('HOME');
    // 태그를 추가하여 내용을 변경 : .html() 
    $('.list li a:eq(1)').html('<strong>PROFILE</strong>')
    
    // 태그를 삽입
    // prepend() / append() - 대상의 맨 앞/맨 뒤에 태그를 삽입, 괄호 안에 무조건 ''사용("" X, href의 ""와 겹침)
    $('.list').prepend('<li><a href="#">first</a></li>')
    $('.list').append('<li><a href="#">end</a></li>')
    // before() / after() - 대상의 앞/뒤에 태그를 삽입
    $('.list li:eq(2)').before('<li><a href="#">PORTFOLIO</a></li>')
    $('.list li:eq(3)').after('<li><a href="#">BOARD</a></li>')
    
    // 태그를 이동
    
    // prependTo() / appendTo() - 대상을 타겟의 안쪽으로 맨 앞/맨 뒤에 태그를 이동
    $('.list li:first').prependTo('.list2')
    $('.list li:last').appendTo('.list2')
    // insertBefore() / insertAfter() - 대상을 타겟의 앞/뒤로 이동
    $('.list li:eq(1)').insertBefore('.list2 li:eq(1)')
    $('.list li:eq(2)').insertAfter('.list2 li:eq(3)')
    
    // 태그를 삭제
    // remove() : 대상을 삭제 (아예 태그 삭제)
    // empty() : 대상의 안쪽에 있는 내용을 삭제 (대상을 비우기)
    $('.list li:last').remove()
    $('.list2 li:last').empty()
    
    // wrap() / wrapAll() / wrapInner()
    // wrap() : 대상을 원하는 태그로 감쌀 때 사용
    //        : 대상이 여러개일 경우 따로따로 감싸진다.
    // $('.list, .list2').wrap('<nav class="nav"></nav>')
    
    //wrapAll : 대상이 여러개라면 한꺼번에 하나의 태그로 감싸진다.
    //        : 다른태그가 중간에 있을 경우 해당태그를 맨 뒤로 밀어낸다.
    $('.list, .list2').wrapAll('<nav class="nav"></nav>')
    
    //wrapInner : 대상의 안에 있는 태그를 감쌀 때 사용
    $('body').wrapInner('<header></header>')
})