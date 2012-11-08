<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to LittleBlog</title>
</head>

<body>
<a href="#page-body" class="skip"><g:message code="default.link.skip.label"
                                             default="Skip to content&hellip;"/></a>

<div ng-controller="AppCtrl">
    <h2>Hello {{name}}</h2>
    <ul class="menu">
        <li>
            <a href="${request.contextPath}/">Home</a>
        </li>
        <li>
            <a href="${request.contextPath}/addPost">Add a new post</a>
        </li>
    </ul>
    <div ng-view></div>
    <div>Angular seed app: v<span app-version></span></div>
</div>
</body>
</html>
