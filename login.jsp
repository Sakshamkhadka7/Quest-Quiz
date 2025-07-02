<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz Based App</title>
    <style>
      
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url("quizimg.avif");
            background-size: cover;        
            background-repeat: no-repeat;  
            background-position: center;   
            height: 100vh;                 
        }

        
        html {
            height: 100%;
        }

        .quiz-form {
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            width: 300px;
            box-shadow: 2px 2px 10px rgba(0,0,0,0.2);
            background-color: rgba(255, 255, 255, 0.9); /* Slight transparency over image */
            border-radius: 10px;
            margin-top: 140px;
        }

        .quiz-form h2 {
            text-align: center;
        }

        .quiz-form td {
            padding: 10px;
        }

        .quiz-form button {
            width: 100%;
            padding: 8px;
            cursor: pointer;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
        }

        .quiz-form button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
<%
    String myUser=request.getParameter("username");
    String myPass=request.getParameter("password");
    out.print("You entered " + myUser + "<br>");
     
     if(myUser!=null && myPass!=null){
      /*  out.print("You entered " + myUser + "<br>"); */

         if(myUser.equals("admin") && myPass.equals("Nepal123")){
       response.sendRedirect("Question.jsp");
       session.setAttribute("user","admin");
    }else{
        out.print("Login failure");
    }
     }
    
    %>

    <form class="quiz-form" action="login.jsp">
        <table>
            <tr>
                <th colspan="2"><h2>Quiz App</h2></th>
            </tr>
            <tr>
                <td><label for="username">Username:</label></td>
                <td><input type="text" id="username" name="username" required></td>
            </tr>
            <tr>
                <td><label for="password">Password:</label></td>
                <td><input type="password" id="password" name="password" required></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit">Login</button>
                </td>
            </tr>
        </table>
    </form>

</body>
</html>
