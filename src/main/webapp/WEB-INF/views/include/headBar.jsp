<%--
  Created by IntelliJ IDEA.
  User: Mxia
  Date: 2016/12/15
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--引入el表达式--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="header-bar">
    <div class="container">
        <a href="/home" class="brand">
            <i class="fa fa-reddit-alien"></i>
        </a>
        <ul class="unstyled inline pull-right">
        <c:choose>
            <%--判断session中账户是否登陆--%>
            <c:when test="${not empty sessionScope.curr_user}">
                <li>
                    <a href="/setting">
                        <img id="headBarImg" src="http://oi2ngv1it.bkt.clouddn.com/${sessionScope.curr_user.avatar}?imageView2/1/w/30/h/30" class="img-circle" alt="">
                    </a>
                </li>
                <li>
                    <a href="/newTopic"><i class="fa fa-plus"></i></a>
                </li>
                <li>
                    <a href="/post"><i class="fa fa-bell"></i></a>
                </li>
                <li>
                    <a href="/setting"><i class="fa fa-cog"></i></a>
                </li>
                <li>
                    <a href="/logout"><i class="fa fa-sign-out"></i></a>
                </li>
            </c:when>
            <c:otherwise>
                <c:if test="${not empty requestScope.popup}">
                    <script>
                        (function(){
                            alert("账号已登出，期待您下次登陆");
                        })();
                    </script>
                </c:if>
                <li><a href="/login"><i class="fa fa-sign-in"></i></a></li>
            </c:otherwise>
        </c:choose>

        </ul>
    </div>
</div>
<!--header-bar end-->