<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="main-sso-login-page" class="main-sso-login-page">

  <%@ include file="/WEB-INF/viewjsp/layout/header.jsp" %>

  <main id="main-sso-login-main" class="main-sso-login-main">

    <section id="main-sso-login-card" class="main-sso-login-card">

      <!-- LEFT -->
      <div class="main-sso-login-left">
        <h1 class="main-sso-login-title">
          Welcome to<br/>
          My COMP
        </h1>

        <p class="main-sso-login-desc">
          Please sign in using your organization credentials to access the portal.
        </p>

        <p class="main-sso-login-linkline">
          Interested in learning more?<br/>
          <a class="main-sso-login-link" href="<c:url value='/learn-more'/>">Learn more here</a>
        </p>
      </div>

      <!-- RIGHT -->
      <div class="main-sso-login-right">

        <!-- Sign In panel -->
        <div class="main-sso-login-signin">
          <h2 class="main-sso-login-form-title">Sign In</h2>

          <c:if test="${not empty errorMessage}">
            <div class="main-sso-login-alert main-sso-login-alert--error">
              <c:out value="${errorMessage}"/>
            </div>
          </c:if>

          <form class="main-sso-login-form" method="post" action="<c:url value='/login'/>">
            <c:if test="${not empty _csrf}">
              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </c:if>

            <div class="main-sso-login-field">
              <div class="main-sso-login-control">
                <span class="main-sso-login-icon" aria-hidden="true">👤</span>
                <input class="main-sso-login-input"
                       type="text"
                       name="username"
                       placeholder="Username"
                       autocomplete="username"
                       required />
              </div>
              <a class="main-sso-login-help" href="<c:url value='/forgot-username'/>">Forgot your username?</a>
            </div>

            <div class="main-sso-login-field">
              <div class="main-sso-login-control">
                <span class="main-sso-login-icon" aria-hidden="true">🔒</span>
                <input class="main-sso-login-input"
                       type="password"
                       name="password"
                       placeholder="Password"
                       autocomplete="current-password"
                       required />
              </div>
              <a class="main-sso-login-help" href="<c:url value='/forgot-password'/>">Forgot your password?</a>
            </div>

            <button class="main-sso-login-btn-primary" type="submit">SIGN IN</button>
          </form>
        </div>

        <!-- Registration panel (dark) -->
        <div class="main-sso-login-register">
          <div class="main-sso-login-register-title">Registration</div>
          <div class="main-sso-login-register-subtitle">Not yet enrolled?</div>
          <a class="main-sso-login-btn-outline" href="<c:url value='/register'/>">REGISTER NOW</a>
        </div>

      </div>

    </section>

  </main>

  <%@ include file="/WEB-INF/viewjsp/layout/footer.jsp" %>

</div>
