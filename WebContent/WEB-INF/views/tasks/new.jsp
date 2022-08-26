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
                <h2>タスク新規作成ページ</h2>

                <form method="POST" action="${pageContext.request.contextPath}/create">

                    <br /><br />
                    <label for="content_task">タスク</label><br />
                    <input type="text" name="content" id="content_task" value="${task.content}" />
                    <br /><br />

                    <input type="hidden" name="_token" value="${_token}" />
                    <button type="submit">投稿</button>

                </form>

                <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
            </div>
            <div id="footer">
                by Taro Kirameki.
            </div>
        </div>
    </body>
</html>