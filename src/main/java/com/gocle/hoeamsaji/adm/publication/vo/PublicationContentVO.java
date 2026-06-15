package com.gocle.hoeamsaji.adm.publication.vo;

import com.gocle.hoeamsaji.comm.vo.BaseVO;

public class PublicationContentVO extends BaseVO {

	private static final long serialVersionUID = 1L;

	/** 목차 ID */
	private String contentId;

	/** 발간물 ID */
	private String pubId;

	/** 목차 순서 */
	private String contentOrder;

	/** I, II, III */
	private String contentNo;

	/** 목차 제목 */
	private String contentTitle;

	/** 저자명 */
	private String authorName;

	public String getContentId() {
		return contentId;
	}

	public void setContentId(String contentId) {
		this.contentId = contentId;
	}

	public String getPubId() {
		return pubId;
	}

	public void setPubId(String pubId) {
		this.pubId = pubId;
	}

	public String getContentOrder() {
		return contentOrder;
	}

	public void setContentOrder(String contentOrder) {
		this.contentOrder = contentOrder;
	}

	public String getContentNo() {
		return contentNo;
	}

	public void setContentNo(String contentNo) {
		this.contentNo = contentNo;
	}

	public String getContentTitle() {
		return contentTitle;
	}

	public void setContentTitle(String contentTitle) {
		this.contentTitle = contentTitle;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	
}