package creakok.com.mapper;

import creakok.com.domain.LikeTable;

public interface LikeTableMapper {
	long selectByTypeAndContentIndex(LikeTable likeTable);
	long insertLikeTable(LikeTable likeTable);
	void deleteLike(LikeTable likeTable);
}
