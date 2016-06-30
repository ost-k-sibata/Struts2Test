<%@ page contentType="text/html; charset=UTF-8" import="java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title><s:text name="HelloWorld.message"/></title>
</head>

<body>
<h2><s:property value="message"/>(<%= new Date() %>)</h2>

<h3>Languages</h3>
<ul>
    <li>
        <s:url var="url" action="HelloWorld">
            <s:param name="request_locale">en</s:param>
        </s:url>
        <s:a href="%{url}">English</s:a>
    </li>
    <li>
        <s:url var="url" action="HelloWorld">
            <s:param name="request_locale">es</s:param>
        </s:url>
        <s:a href="%{url}">Espanol</s:a>
    </li>
    <s:a href="%{url}">Hogehoge</s:a>

</ul>

<s:form action="boe">
	<s:submit></s:submit>

	<!-- スタックコンテキスト内の、#以降の文字列の名前のスタック値を参照 -->
	<s:text name="#url"/>

	<!-- スタックコンテキストの var に valueをセット -->
	<s:set var="boeboe" value="message" /><!-- バリュースタック内の"message"の内容 -->
	<s:set var="boeboe" value="'こんにちは世界'" /><!-- 文字列"こんにちは世界" -->
	<s:set var="boeboe" value="581" /><!-- 数値 581 -->
	<s:set var="boeboe" value="true" /><!-- bool値 false -->
	<br />

	<s:text name="#boeboe"/>

	<!-- struts2 でのif 文処理 -->
	<s:if test="#boeboe == true">
		<div>boeboe は true です！</div>
	</s:if>
	<s:else>
		<div>boeboe は false です！</div>
	</s:else>

	<!-- struts2 でのfor に代わるもの -->
	<s:iterator>
	</s:iterator>

	<!-- property で、バリュースタック内の値取得 -->
	<div><s:property value="message"/></div>
</s:form>
<s:debug></s:debug>

</body>
</html>
