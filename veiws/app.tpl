<div class="container">
    <form action="/app" method="post">
        Input: <input name="myRequest" type="text" />
    </form>
    %if reply:
      {{reply}}
    %end
</div>
