package creakok.com.service;

import creakok.com.domain.LikeTable;

public interface LikeTableService {
	long getLikeNumByTypeAndContentIndex(LikeTable likeTable);
	long setLikeNum(LikeTable likeTable);
	void deleteLike(LikeTable likeTable);
}
