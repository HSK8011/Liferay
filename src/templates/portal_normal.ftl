
<!DOCTYPE html>

<html lang="en">

<head>
	<title><#if themeDisplay??>${themeDisplay.getLayout().getName(themeDisplay.getLocale())}<#else>My Site</#if></title>
	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<@liferay_util["include"] page="/html/common/themes/top_head.jsp" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<@liferay_util["include"] page="/html/common/themes/body_top.jsp" />

<#if themeDisplay?? && themeDisplay.isShowControlPanelIcon()>
	<@liferay.control_menu />
</#if>

<div id="wrapper">
	<header id="banner" role="banner">
		<#include "navigation.ftl" />
	</header>

	<section id="content">
    <div class="container mt-4">
                <h1>Welcome to Our Website</h1>
                <div class="row">
                    <div class="col-md-6">
                        <h2>About Us</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    </div>
                    <div class="col-md-6">
                        <h2>Our Services</h2>
                        <ul class="list-group">
                            <li class="list-group-item">Service 1: Lorem ipsum dolor sit amet</li>
                            <li class="list-group-item">Service 2: Consectetur adipiscing elit</li>
                            <li class="list-group-item">Service 3: Sed do eiusmod tempor</li>
                            <li class="list-group-item">Service 4: Incididunt ut labore</li>
                        </ul>
                    </div>
                </div>
                
                <div class="row mt-4">
                    <div class="col-12">
                        <h2>Latest News</h2>
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Welcome to Our New Website</h5>
                                <p class="card-text">We're excited to launch our new website with improved navigation and content. Check out our pages to learn more about what we offer.</p>
                                <a href="/page1" class="btn btn-primary">Learn More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <#if !themeDisplay.isSignedIn()>
        <#-- Get the current friendly URL and layout name -->
        <#assign currentLayout = themeDisplay.getLayout() />
        <#assign currentUrl = currentLayout.getFriendlyURL() />
        <#assign layoutName = currentLayout.getName(themeDisplay.getLocale())?lower_case?replace(" ", "") />
        
        <#-- Debug information (remove in production) -->
        <!-- 
        <div class="alert alert-info">
            <p>Current URL: ${currentUrl}</p>
            <p>Layout Name: ${layoutName}</p>
        </div>
        -->
        
        <#-- Show different content based on the layout name -->
        <#if layoutName?contains("page1")>
            <#include "page1.ftl" />
        <#elseif layoutName?contains("page2")>
            <#include "page2.ftl" />
        <#elseif layoutName?contains("page3")>
            <#include "page3.ftl" />
        <#elseif layoutName?contains("page4")>
            <#include "page4.ftl" />
        <#else>
        </#if>
    <#else>
        <#-- For logged-in users, show the default portlet content -->
        <@liferay_util["include"] page="/html/common/themes/portlet_content_wrapper.jsp" />
    </#if>
	</section>

	<footer id="footer" role="contentinfo">
		<div class="container">
			<p class="text-center">
				<@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>
			</p>
		</div>
	</footer>
</div>

<@liferay_util["include"] page="/html/common/themes/body_bottom.jsp" />

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>
