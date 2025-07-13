<#if !themeDisplay??>
    <#assign themeDisplay = staticUtil["com.liferay.portal.kernel.theme.ThemeDisplay"] />
</#if>

<#assign current_url = themeDisplay.getURLCurrent() />
<#assign is_signed_in = themeDisplay.isSignedIn() />
<#assign layout = themeDisplay.getLayout() />

<#-- Include Liferay's default theme components -->
<@liferay_util["include"] page=themeDisplay.getPathThemeCss() + "/templates/portal_normal.ftl" />

<#-- Include navigation -->
<#if is_signed_in>
    <@liferay.control_menu />
</#if>

<#-- Main content wrapper -->
<div class="container-fluid" id="wrapper">
    <header id="banner" role="banner">
        <#include "navigation.ftl" />
    </header>

    <section id="content">
        ${layout.getContent()}
    </section>

    <footer id="footer" role="contentinfo">
        <div class="container">
            <p class="text-center">
                <@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>
            </p>
        </div>
    </footer>
</div>
