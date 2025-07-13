<#assign currentLayout = themeDisplay.getLayout() />
<#assign layoutName = currentLayout.getName(themeDisplay.getLocale())?lower_case?replace(" ", "") />
<p>hellooo</p>
<#if layoutName?contains("page1")>
<div class="container mt-4">
    <h1>Page 1</h1>
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-4">
                <div class="card-body">
                    <h2>Welcome to Page 1</h2>
                    <p>This is the content for Page 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    
                    <h3 class="mt-4">More Content</h3>
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                    
                    <div class="alert alert-info mt-3">
                        <strong>Note:</strong> This is a sample content area for Page 1.
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<#else>
    <div class="alert alert-warning">
        This content is meant for Page 1. You're currently viewing: ${layoutName}
    </div>
</#if>
