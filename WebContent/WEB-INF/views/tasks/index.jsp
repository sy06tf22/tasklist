<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <h2>タスク一覧</h2>
                <ul>
                    <c:forEach var="task" items="${tasks}">
                        <li>
                            <a href="${pageContext.request.contextPath}/show?id=${task.id}">
                                <c:out value="${task.id}" />
                            </a>
                            ：<c:out value="${task.content}" />
                        </li>
                    </c:forEach>
                </ul>

                <p><a href="${pageContext.request.contextPath}/new">新規タスクの投稿</a></p>
            </div>
            <div id="footer">
                by Taro Kirameki.
            </div>
        </div>
    </body>
</html>