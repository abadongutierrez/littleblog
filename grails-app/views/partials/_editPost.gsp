<h2>Edit post</h2>
<label for="title">Title:</label>
<input ng-model="form.title" name="title" />
<p>Body:</p>
<textarea ng-model="form.text" rows="15" cols="50"></textarea>
<p>
    <button ng-click="editPost()">Edit Post</button>
</p>
