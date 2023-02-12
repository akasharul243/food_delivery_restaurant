<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="bootstrap-5.2.2-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<title></title>
	<style type="text/css">
		@font-face {
  font-family: naturebeauty;
  src: url('fonts/NatureBeautyPersonalUse-9Y2DK.ttf');
}
    body
        {
            background:url("images/bg1.jpg");
            background-size: 100% 100%;
           
        }
       a{
       display:inline;
       }
        header
        {
             background-image: url("images/mainimage4.jpg");
            background-size: 100% 100%;
            color: yellow;
            height: 300px;
        }
        header span
        {
            margin: 10px;
            color: blue;
            font-family:naturebeauty;
            letter-spacing: -10px;
            font-size: 60px;
        }
        footer
        {
        	background-color: black;
        	height: 400px;
        	width:100% ;

        }
        .col-sm-4
        {
         color: gray;
         font-size: 20px;   
        }
        #dd1
        {
            
            color: gray;
            font-size: 20px;
        }
        .disp1
        {
            width: 250px;
            border-radius: 250px;
            border: 2px ridge gray;
            box-shadow: 5px 5px 5px gray;
            margin: 2px;
            transition: 0.5s;
        }
        .disp1:hover
        {
         transform: scale(1.2) rotate(0deg);
        }
 </style>
 <script type="text/javascript">
     

 </script>

</head>
<body>
    
     <header>
        <h1 style="font-size: 50px;"><span style="font-size: 60px;">AM</span>Restaurant </h1><br>
      
        <p style="font-size:25px; color: white; margin-top:-40px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i>Legendary taste of Chidambaram</i></p>
        
        <a href="login.jsp" style="position: absolute;right: 250px;top: 55px;text-decoration: none;color: yellow; font-size: 25px">Log in</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="register.jsp" style="position: absolute;right: 100px;top: 55px;text-decoration: none;color: yellow;font-size: 25px">Register</a>
       
    </header>
<div class="container">
<div class="row"> <h1 class="title" style="text-align:center;">POPULAR <span style="color: red;"><i>NON-VEG</i></span> MENUS</h1> </div><br><br>
<div class="row">
    
    <a href="show_menu.jsp?cat=non-veg"><img src="images/17.jpg"  class="col-md-3 disp1" style="height:250px;">
    <img src="images/15.jpg"  class="col-md-3 disp1" style="height:250px;"> 
    <img src="images/10.jpg"  class="col-md-3 disp1" style="height:250px;"> 
    <img src="images/25.jpg"  class="col-md-3 disp1" style="height:250px;"></a>
    
</div><br><br>

<div class="row"> <h1 class="title" style="text-align:center;">POPULAR <span style="color:green;"><i>VEG</i></span> MENUS</h1> </div><br><br>
<div class="row">
    
    <a href="show_menu.jsp?cat=veg"><img src="images/6.jpg"  class="col-md-3 disp1" style="height:250px;">
     <img src="images/12.jpg"  class="col-md-3 disp1" style="height:250px;">
     <img src="images/18.jpg"  class="col-md-3 disp1" style="height:250px;"> 
     <img src="images/19.jpg"  class="col-md-3 disp1" style="height:250px;"></a>
    
</div>

 </div><br>

    

  <div class="container">
  <a href="show_menu.jsp?cat=veg" class="btn btn-success" data-toggle="collapse" style="width:50%; font-size:30px; float: left;">VEG</a>

  <a href="show_menu.jsp?cat=non-veg" class="btn btn-danger" data-toggle="collapse" style="width:50%; font-size:30px;">NON-VEG</a>
  </div><br>


    <footer >
    	<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h3>AM Restaurast</h3>
      <p>12,North main street,<br>
        Chidambaram,<br>
        Tamilnadu-608001.
      </p>
      
    </div>


    <div class="col-sm-4">
      <h3>Get in Touch</h3>
      <p>+91&nbsp;&nbsp;6369667840<br>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8682040572<br>
        amrestaurant@gmail.com<br></p>
        <a href="#facebook"><img src="images/f.jpg" style="width:30px; height:30px;"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <a href="#linkedin"> <img src="images/in.jpg" style="width:30px; height:30px;"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="#twitter"><img src="images/t.jpg" style="width:30px; height:30px;"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <div class="col-sm-4">
      <h3>Support:</h3>        
      <p id="p1"><a href="get_help.jsp" style="color:gray;">Get help</a><br>
          <a href="feedback.jsp" style="color:gray;">Feedback</a><br>
          <a href="careers.jsp" style="color:gray;">Careers</a><br>
          <a href="faq.jsp" style="color:gray;">FAQ's</a><br>
          <a href="terms_condition.jsp" style="color:gray;">Term and condition</a> <br>
        <a href="privacy_policy.jsp" style="color:gray;">Privacy policy</a><br></p>
    </div>
  </div>

  <div id="dd1">
  Places we deliver to:<br>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chidambaram | Annamalai Nagar | Ammapettai | Vallampadugai
                Kolidam | Vandigate | Mutlur | Kille  <br>  
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pichavaram | Bhuvanagiri | Parangipettai | Puduchathiram 
                Kumaratchi | Kattumanarkoil |  Veeranam | Puthur<br>
            </p></div>

</div>

    	<p align="center" style="font-size:20px; color:gray;">All rights reserved@2022 Am Restaurant</p>
    </footer>
</body>


    
   
   
</html>
