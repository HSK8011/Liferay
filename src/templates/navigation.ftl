<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #0d6efd;" role="navigation">
  <div class="container-fluid">

    <a class="navbar-brand" href="${themeDisplay.getURLHome()}">HSK</a>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainNavbar" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="mainNavbar">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">

        <#if themeDisplay?? && themeDisplay.getLayouts()?? && (themeDisplay.getLayouts()?size > 0)>
          <#list themeDisplay.getLayouts() as layout_item>
            <#if layout_item?? && !layout_item.isHidden()>
              <li class="nav-item">
                <a class="nav-link <#if layout_item.getPlid() == themeDisplay.getPlid()>active</#if>" 
                   href="${layout_item.getRegularURL(request)}">
                  ${layout_item.getName(themeDisplay.getLocale())}
                </a>
              </li>
            </#if>
          </#list>
        </#if>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="/web/guest/page1" id="navbarDropdown1" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           Page 1
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
            <a class="dropdown-item" href="/web/guest/page1">Sub Page 1</a>
            <a class="dropdown-item" href="/web/guest/page1">Sub Page 2</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="/web/guest/page1">Sub Page 3</a>
          </div>
        </li>

       <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="/web/guest/page2" id="navbarDropdown2" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           Page 2
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
            <a class="dropdown-item" href="/web/guest/page2">Sub Page 1</a>
            <a class="dropdown-item" href="/web/guest/page2">Sub Page 2</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="/web/guest/page2">Sub Page 3</a>
          </div>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="/web/guest/page3">Page 3</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="/web/guest/page4">Page 4</a>
        </li>

      </ul>
    </div>
  </div>
</nav>