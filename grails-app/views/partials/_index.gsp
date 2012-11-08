<p>There are {{posts.length}}</p>
<div ng-repeat="post in posts">
    <h3>{{post.title}}</h3>
    <div>{{post.text}}</div>
    <a href="${request.contextPath}/readPost/{{post.id}}">More</a>
    | -
    <a href="${request.contextPath}/editPost/{{post.id}}">Edit</a>
    | -
    <a href="${request.contextPath}/deletePost/{{post.id}}">Delete</a>
</div>