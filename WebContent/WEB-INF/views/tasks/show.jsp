<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>タスクボード</title>
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <h1>タスクボード アプリケーション</h1>
            </div>
            <div id="content">
                <c:choose>
                    <c:when test="${task != null}">
                        <h2>id : ${task.id} のタスク詳細ページ</h2>

                        <p>メッセージ：<c:out value="${task.content}" /></p>
                        <p>作成日時：<fmt:formatDate value="${task.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>
                        <p>更新日時：<fmt:formatDate value="${task.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>

                        <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
                        <p><a href="${pageContext.request.contextPath}/edit?id=${task.id}">このタスクを編集する</a></p>
                    </c:when>
                    <c:otherwise>
                    <h2>お探しのデータは見つかりませんでした。</h2>
                    </c:otherwise>
                </c:choose>
            </div>
            <div id="footer">
                by Taro Kirameki.
            </div>
        </div>
    </body>
</html>