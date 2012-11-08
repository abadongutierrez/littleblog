<h2>Write a new post</h2>
<label for="title">Title:</label>
<input ng-model="form.title" name="title" />
<p>Body:</p>
<textarea rows="15" cols="50" ng-model="form.text"></textarea>
<p><button ng-click="submitPost()">Submit Post</button></p>