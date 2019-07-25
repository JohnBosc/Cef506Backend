<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ page session="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="true" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
    String locale = "en_US";
%>

<fmt:setLocale value="${locale}" />
<fmt:bundle basename="com.schedule.mvc.i18n.applicationresources"/>
