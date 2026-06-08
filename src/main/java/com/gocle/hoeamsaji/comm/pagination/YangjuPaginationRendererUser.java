package com.gocle.hoeamsaji.comm.pagination;

import org.egovframe.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import org.egovframe.rte.ptl.mvc.tags.ui.pagination.AbstractPaginationRenderer;

public class YangjuPaginationRendererUser extends AbstractPaginationRenderer {

    @Override
    public String renderPagination(PaginationInfo p, String jsFunction) {
        final int first       = p.getFirstPageNo();            // 보통 1
        final int last        = p.getLastPageNo();             // 전체 마지막 페이지 (= totalPageCount)
        final int current     = p.getCurrentPageNo();          // 현재 페이지
        final int firstOnList = p.getFirstPageNoOnPageList();  // 블록 시작
        final int lastOnList  = p.getLastPageNoOnPageList();   // 블록 끝
        final int total       = p.getTotalPageCount();         // 전체 페이지 수
        final int pageSize    = p.getPageSize();               // 블록당 페이지 수

        final String fn = (jsFunction == null || jsFunction.isEmpty()) ? "fn_search" : jsFunction;

        // 블록 이동 타겟
        int prevBlockTarget = Math.max(first, firstOnList - pageSize); // 이전 10페이지(블록)
        int nextBlockTarget = Math.min(last, firstOnList + pageSize);  // 다음 10페이지(블록)

        // 한 페이지 이동 타겟
        int prevOneTarget = Math.max(first, current - 1);
        int nextOneTarget = Math.min(last, current + 1);

        boolean isFirstPage = (current <= first);
        boolean isLastPage  = (current >= last);
        boolean isFirstBlock = (firstOnList <= first);
        boolean isLastBlock  = (lastOnList >= total);

        StringBuilder sb = new StringBuilder(512);

        sb.append("<div class=\"board-pagination\">");

        // 1. 처음 페이지로 (arrow first)
        appendArrowLink(sb, "arrow first", first, fn, isFirstPage);

        // 2. 이전 페이지 블록 또는 이전 한 페이지 (arrow prev)
        appendArrowLink(sb, "arrow prev", prevOneTarget, fn, isFirstPage);

        // 3. 페이지 번호 목록 (숫자들)
        int end = Math.min(lastOnList, total);
        for (int i = firstOnList; i <= end; i++) {
            if (i == current) {
                // 현재 페이지 활성화 클래스: is-active
                sb.append("<a href=\"#\" class=\"is-active\" onclick=\"return false;\" title=\"current ").append(i).append("page\">")
                  .append(i).append("</a>");
            } else {
                sb.append("<a href=\"?pageIndex=").append(i).append("\"")
                  .append(" onclick=\"").append(fn).append("(").append(i).append(");return false;\">")
                  .append(i).append("</a>");
            }
        }

        // 4. 다음 페이지 (arrow next)
        appendArrowLink(sb, "arrow next", nextOneTarget, fn, isLastPage);

        // 5. 끝 페이지로 (arrow last)
        appendArrowLink(sb, "arrow last", last, fn, isLastPage);

        sb.append("</div>");

        return sb.toString();
    }

    /** 
     * 화살표 링크 전용 메서드 
     */
    private void appendArrowLink(StringBuilder sb, String cssClass, int target, String fn, boolean disabled) {
        sb.append("<a href=\"?pageIndex=").append(disabled ? "#" : target).append("\"")
          .append(" class=\"").append(cssClass).append("\"");
        
        if (disabled) {
            sb.append(" onclick=\"return false;\" aria-disabled=\"true\"");
        } else {
            sb.append(" onclick=\"").append(fn).append("(").append(target).append(");return false;\"");
        }
        
        sb.append("></a>");
    }
}
