<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My first JSP page</title>
</head>
<body>
    <% int x = 12; int y=14; String myText="My first text"; %>
    <% int sum=x+y; %>
     <%= x %>
     <%= "My text is:" + myText %>
     <%= "Add is: " + sum %>
</body>
</html>
