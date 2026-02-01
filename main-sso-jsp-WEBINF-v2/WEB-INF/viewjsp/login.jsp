<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="main-sso-login-page">
<%@ include file="/WEB-INF/viewjsp/layout/header.jsp" %>
<main id="main-sso-login-main">
<section id="main-sso-login-card">
<div class="main-sso-login-grid">
<div class="main-sso-login-left">
<h1 class="main-sso-login-title">Welcome to<br/>My COMP</h1>
</div>
<div class="main-sso-login-right">
<h2 class="main-sso-login-form-title">Sign In</h2>
<form>
<input class="main-sso-login-input" placeholder="Username"/>
<input class="main-sso-login-input" placeholder="Password" type="password"/>
<button class="main-sso-login-btn-primary">SIGN IN</button>
</form>
</div>
</div>
</section>
</main>
<%@ include file="/WEB-INF/viewjsp/layout/footer.jsp" %>
</div>
