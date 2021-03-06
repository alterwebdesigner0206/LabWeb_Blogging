<%-- 
    Document   : aside
    Created on : Sep 17, 2020, 10:13:36 PM
    Author     : ViruSs0209
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="ctx" value="${pageContext.servletContext.contextPath}" />

<!DOCTYPE html>
<aside class="page-aside">
    <div class="page-aside__social">
        <span class="page-aside__title">Share this page</span>
        <ul>
            <li>
                <a class="share-facebook" href="#">
                    <img src="${ctx}/public/image/6.jpg" />
                    <span>Share on Facebook</span>
                </a>
            </li>
            <li>
                <a class="share-twitter" href="#">
                    <img src="${ctx}/public/image/7.jpg" />
                    <span>Share on Twitter</span>
                </a>
            </li>
            <li>
                <a class="share-twitter" href="#">
                    <img src="${ctx}/public/image/8.jpg" />
                    <span>Share on Google+</span>
                </a>
            </li>
        </ul>
    </div>
    <div class="page-aside__crWeb">
        <span class="page-aside__title">Create a website</span>
        <p>
            Everybody can create a website, it's easy.
        </p>
        <button>Try it for FREE now</button>
    </div>
</aside>