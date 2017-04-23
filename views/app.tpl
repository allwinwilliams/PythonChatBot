<html>
  <head>
    <title>PythonChatBot</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
  	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,600,800" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <style type="text/css">
      *{
        text-align: center;
      }
      .container, .container.*{
        text-align: center;
      }
      input{
        margin: 50px auto;
      }
    </style>
  </head>

  <body>
    <div class="container">
        <form action="/app" method="post">
            <input name="myRequest" type="text" />
        </form>
        %if reply:
          {{reply}}
        %end
    </div>
  </body>
</html>
