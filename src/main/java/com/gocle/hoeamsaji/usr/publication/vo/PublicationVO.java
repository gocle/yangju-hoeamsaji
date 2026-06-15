package com.gocle.hoeamsaji.usr.publication.vo;

import java.util.List;

import com.gocle.hoeamsaji.comm.vo.BaseVO;

public class PublicationVO extends BaseVO {

	private static final long serialVersionUID = 1L;

	/** 발간물 ID */
	private String pubId;

	/** 발간물 제목 */
	private String pubTitle;

	/** 발간물 부제 */
	private String pubSubTitle;

	/** 권수(XIII) */
	private String pubVolume;

	/** 발행연도 */
	private String pubYear;

	/** 발간물 유형 */
	private String pubType;

	/** 표지 이미지 파일 ID */
	private String pubThumbFileId;

	/** PDF 파일 ID */
	private String pubPdfFileId;

	/** 구매 링크 */
	private String buyUrl;

	/** 정렬순서 */
	private String displayOrder;

	/** 사용 여부 */
	private String useYn;

	/** 검색 연도 */
	private String searchYear;

	/** 검색 유형 */
	private String searchType;
	
	private String thumbOrgFileName;
	private String thumbSaveFileName;

	private String pdfOrgFileName;
	private String pdfSaveFileName;

	/** 목차 목록 */
	private List<PublicationContentVO> contentList;

	public String getPubId() {
		return pubId;
	}

	public void setPubId(String pubId) {
		this.pubId = pubId;
	}

	public String getPubTitle() {
		return pubTitle;
	}

	public void setPubTitle(String pubTitle) {
		this.pubTitle = pubTitle;
	}

	public String getPubSubTitle() {
		return pubSubTitle;
	}

	public void setPubSubTitle(String pubSubTitle) {
		this.pubSubTitle = pubSubTitle;
	}

	public String getPubVolume() {
		return pubVolume;
	}

	public void setPubVolume(String pubVolume) {
		this.pubVolume = pubVolume;
	}

	public String getPubYear() {
		return pubYear;
	}

	public void setPubYear(String pubYear) {
		this.pubYear = pubYear;
	}

	public String getPubType() {
		return pubType;
	}

	public void setPubType(String pubType) {
		this.pubType = pubType;
	}

	public String getPubThumbFileId() {
		return pubThumbFileId;
	}

	public void setPubThumbFileId(String pubThumbFileId) {
		this.pubThumbFileId = pubThumbFileId;
	}

	public String getPubPdfFileId() {
		return pubPdfFileId;
	}

	public void setPubPdfFileId(String pubPdfFileId) {
		this.pubPdfFileId = pubPdfFileId;
	}

	public String getBuyUrl() {
		return buyUrl;
	}

	public void setBuyUrl(String buyUrl) {
		this.buyUrl = buyUrl;
	}

	public String getDisplayOrder() {
		return displayOrder;
	}

	public void setDisplayOrder(String displayOrder) {
		this.displayOrder = displayOrder;
	}

	public String getUseYn() {
		return useYn;
	}

	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}

	public String getSearchYear() {
		return searchYear;
	}

	public void setSearchYear(String searchYear) {
		this.searchYear = searchYear;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public List<PublicationContentVO> getContentList() {
		return contentList;
	}

	public void setContentList(List<PublicationContentVO> contentList) {
		this.contentList = contentList;
	}

	public String getThumbOrgFileName() {
		return thumbOrgFileName;
	}

	public void setThumbOrgFileName(String thumbOrgFileName) {
		this.thumbOrgFileName = thumbOrgFileName;
	}

	public String getThumbSaveFileName() {
		return thumbSaveFileName;
	}

	public void setThumbSaveFileName(String thumbSaveFileName) {
		this.thumbSaveFileName = thumbSaveFileName;
	}

	public String getPdfOrgFileName() {
		return pdfOrgFileName;
	}

	public void setPdfOrgFileName(String pdfOrgFileName) {
		this.pdfOrgFileName = pdfOrgFileName;
	}

	public String getPdfSaveFileName() {
		return pdfSaveFileName;
	}

	public void setPdfSaveFileName(String pdfSaveFileName) {
		this.pdfSaveFileName = pdfSaveFileName;
	}

}
