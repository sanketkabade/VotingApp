<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" type="text/css" href="WEB-INF\styles.css">
 
 <style type="text/css">
 
 body {
	padding: 70px 50px;;
    background-image: url('images/beautiful.jpg');
    
}
h2{
    text-align: center;
    font-style: oblique;
    text-shadow: -4px 0px 6px #877676;
    margin-bottom: 56px;
}
.b1{
       margin: 50px 32%;

}
.bt{
width: 212px;
    height: 40px;
    background-color: #6499E9;
    text-align: center;
    color: white;
    border: none;
    border-radius: 10px;
    
}


 </style>
</head>
<body>
   <h2 class=""> Coose Candidate </h2>
<form action="CandidateVoting.jsp"  method="post">


<div class="card-deck">
       
  <div class="card">
    <img class="card-img-top" src="images/Modi12.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Narendra Modi</h5>
      <!-- <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>  -->
      <label><input type="radio" name="food" value="modi"> Click Here to vote modi</label><br>
     
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="images/rahul.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Rahul Gandhi</h5>
    <!--   <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p> -->
       <label><input type="radio" name="food" value="rahul"> Click Here to vote rahul</label><br>
     
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="images/raj-thackeray.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Raj Thackeray</h5>
     <!--  <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>  -->
       <label><input type="radio" name="food" value="raj"> Click Here to vote raj</label><br>
     
    </div>
  </div>
</div>



<div class="card-deck" style=" margin-top: 38px;">
  <div class="card">
    <img class="card-img-top" src="images/ajit.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Ajit Pawar</h5>
     <!--  <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p> -->
        <label><input type="radio" name="food" value="ajit"> Click Here to vote Ajit</label><br>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="images/26uddhav.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Uddhav Thackeray</h5>
     <!--  <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
      -->  <label><input type="radio" name="food" value="uddhav"> Click Here to vote Uddhav</label><br>
    </div>
  </div>
<div class="card">
    <img class="card-img-top" src="images/yogi.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Yogi Adityanath</h5>
    <!--  <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p> 
    -->  <label><input type="radio" name="food" value="yogi"> Click Here to vote yogi</label><br>
    </div>
    
  </div> 
</div>
   <div class="b1">
   <input class="bt" style="margin-inline-end: 50px;" type="submit" value="Submit">
   <input  class="bt"  type="reset" value="clear">
   </div>
</form>

</body>
</html>