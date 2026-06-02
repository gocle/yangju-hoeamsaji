package com.gocle.hoeamsaji.usr.board.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.gocle.hoeamsaji.adm.banner.vo.BannerVO;
import com.gocle.hoeamsaji.usr.board.vo.BoardArticleVO;
import com.gocle.hoeamsaji.usr.board.vo.BoardConfigVO;
import com.gocle.hoeamsaji.usr.board.vo.BoardReplyVO;

public interface UserBoardService {

	BoardConfigVO getBoardConfig(BoardConfigVO boardConfigVO) throws Exception ;

	List<BoardArticleVO> listBoardArticle(BoardArticleVO boardArticleVO) throws Exception;

	List<BoardArticleVO> topNoticeList(BoardArticleVO boardArticleVO) throws Exception;

	int boardHit(BoardArticleVO boardArticleVO) throws Exception;

	BoardArticleVO getUserBoardResult(BoardArticleVO boardArticleVO) throws Exception;

	BoardArticleVO prevNext(BoardArticleVO boardArticleVO) throws Exception;

	List<BoardReplyVO> listBoardReply(BoardReplyVO boardReplyVO) throws Exception;

	int insertUserBoardArticle(BoardArticleVO boardArticleVO, MultipartHttpServletRequest multiRequest) throws Exception;

	BoardArticleVO getBoardArticle(BoardArticleVO boardArticleVO) throws Exception;

	int userUpdateQna(BoardArticleVO boardArticleVO, MultipartHttpServletRequest multiRequest) throws Exception;

	int userDeleteQna(BoardArticleVO boardArticleVO) throws Exception;

	

}
