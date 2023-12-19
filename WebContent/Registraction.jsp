<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" type="text/css" href="WEB-INF\styles.css">
</head>

<body style="background-image: url('images/beautiful.jpg');  ">
    
     <section class="h-100 ">
         <form action="addVoter.jsp" method="post" onsubmit="validate()" name="">
  <div class="container py-5 h-100" >
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col" style="border-radius: 16px;">
          <!--<div class="card card-registration my-4" style="box-shadow: -19px -20px 10px #3b3b3b;">-->
          <div class="card card-registration my-4" >
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
                <img src="images/be.png"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
             
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase">Registration form</h3>
                
                 <div class="form-outline mb-4">
                     <input required="email" type="text" id="name" class="form-control form-control-lg" name="name"/>
                 
                  <label class="form-label" for="form3Example97">Name :</label>
                </div>
     

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <input required="contact" maxlength="10" pattern="[0-9]{10}"  type="text" id="contact" class="form-control form-control-lg" name="contact"/>
                      <label class="form-label" for="contact">Contact No.</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <input required="faname"type="text" 
                               
                               id="faname" class="form-control form-control-lg" name="age"/>
                      <label class="form-label" for="form3Example1n1">Age</label>
                    </div>
                  </div>
                </div>
                 <div class="form-outline mb-4">
                     <input required="email" type="email" id="email" class="form-control form-control-lg" name="email"/>
                 
                  <label class="form-label" for="form3Example97">Email ID</label>
                </div>
                 <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <input required="password" maxlength="8" type="text" id="password" class="form-control form-control-lg" name="password"/>
                      <label class="form-label" for="form3Example1m1">Password</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <input maxlength="8" type="text" id="repassword" required="repassword"class="form-control form-control-lg" name="repassword"/>
                      <label class="form-label" for="form3Example1n1">Re-Password</label>
                    </div>
                  </div>
                </div>
                <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                    <h6 class="mb-0 me-4" style="margin-inline-end: 8px; margin-block-start: -3px;">Gender: </h6>

                  <div class="form-check form-check-inline mb-0 me-4">
                      <input required="gender"  class="form-check-input" type="radio" name="gender" id="femaleGender"
                      value="female" />
                    <label class="form-check-label" for="femaleGender">Female</label>
                  </div>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="gender" id="maleGender"
                      value="male" />
                    <label class="form-check-label" for="maleGender">Male</label>
                  </div>

                  <div class="form-check form-check-inline mb-0">
                    <input class="form-check-input" type="radio" name="gender" id="otherGender"
                      value="other" />
                    <label class="form-check-label" for="otherGender">Other</label>
                  </div>

                </div>
                <div class="form-outline mb-4">
                    <input required="address" type="text" id="form3Example8" class="form-control form-control-lg" name="address" />
                  <label class="form-label" for="form3Example8">Address</label>
                </div>
                



                <div class="d-flex justify-content-end pt-3" style="margin-right: 30%;">
                    <button type="" onclick="clearTimeout()" class="btn btn-light btn-lg" style="margin-right: 9%;">Reset all</button>
                    <input type="submit" onclick=""class="btn btn-warning btn-lg ms-2" name="register" value="register1">
                </div>
                   <div class="form-outline mb-4">
                       <label class="form-label" for="form3Example90" style="    position: absolute;left: 34%; margin-block-start: 24px;">Alrady User? <span><a href="login.html">Login</a></span></label>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
 </form>
 

</section>
    <script>
        function validate(){
        let x= document.getElementById("repassword");
         let y= document.getElementById("password");
         
         if( x.value == y.value ){
            
             return false;
         }else{
             alert("Password & re-password is not match");
             x.focus();
             return false;
         }
         var password=document.myform.password.value;  
  
if(password.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }
     }
  
</script> 
    
       
    </body>
</html>