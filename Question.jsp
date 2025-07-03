<%
if(session.getAttribute("user") == null){
    out.print("You need to login");
    return;
}

String[] questions = new String[3];
questions[0] = "What is the capital of japan";
questions[1] = "Who is current president of nepal";
questions[2] = "In which continent turkey lies";

int totalQuest=3; // Total number of questions
String[] correctAns = new String[3];
correctAns[0] = "Tokyo";
correctAns[1] = "Ram chandra poudel";
correctAns[2] = "Europe";

String[][] answer = new String[3][4];
answer[0][0] = "Kathmandu";
answer[0][1] = "Tokyo";
answer[0][2] = "seol";
answer[0][3] = "Beijing";

answer[1][0] = "Ram chandra poudel";
answer[1][1] = "Vidhya devi bhandari";
answer[1][2] = "Kp oli";
answer[1][3] = "Pranchanda";

answer[2][0] = "Asia";
answer[2][1] = "Africa";
answer[2][2] = "Europe";
answer[2][3] = "Russia";


String num=request.getParameter("numb");
String ans=request.getParameter("ans");

int numb=0;
int score;
score = Integer.parseInt(session.getAttribute("score").toString());

if(num==null){
    numb=0;
}else{
    numb=Integer.parseInt(num);
}

if(ans!=null){
if(ans.equals(correctAns[numb-1])){
  out.print("Correct!");
  score++;
  session.setAttribute("score",score);
}
out.print("You got " + score + " out of 3");
}
if(numb==totalQuest){
  response.sendRedirect("result.jsp");
  return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz Based APP</title>
</head>
<body>

<form action="Question.jsp">
  <table border="0" align="center" class="quest">
    <tr><th><%= questions[numb] %></th></tr>

    <tr><td><input type="radio" id="kathmandu" name="ans" value="<%= answer[numb][0] %>" /> <%= answer[numb][0] %></td></tr>
    <tr><td><input type="radio" id="tokyo" name="ans" value="<%= answer[numb][1] %>" /> <%= answer[numb][1] %></td></tr>
    <tr><td><input type="radio" id="seol" name="ans" value="<%= answer[numb][2] %>" /> <%= answer[numb][2] %></td></tr>
    <tr><td><input type="radio" id="beijing" name="ans" value="<%= answer[numb][3] %>" /> <%= answer[numb][3] %></td></tr>
     <input type="hidden" name="numb" value="<%= ++numb %>" />
    <tr><td><input type="submit" value="Next" /></td></tr>
  </table>
</form>

</body>
</html>
