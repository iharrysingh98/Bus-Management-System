

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
        <style>
        
        .glow {
  font-size: 80px;
  color: #fff;
  text-align: center;
  -webkit-animation: glow 1s ease-in-out infinite alternate;
  -moz-animation: glow 1s ease-in-out infinite alternate;
  animation: glow 1s ease-in-out infinite alternate;
}

@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #ffd12b, 0 0 40px #ffd12b, 0 0 50px #ffd12b, 0 0 60px #ffd12b, 0 0 70px #ffd12b;
  }
  
  to {
    text-shadow: 0 0 20px #fff, 0 0 30px #f9e75e, 0 0 40px #f9e75e, 0 0 50px #f9e75e, 0 0 60px #f9e75e, 0 0 70px #ff4da6, 0 0 80px #f9e75e;
  }
}
        
        
        
        
        
		@font-face
		{
		font-family: 'Poppins', sans-serif;
		}
		@font-face
		{
			font-family: Orange Juice;
			src: url('sources/orange juice 2.0.ttf');
		}
		*
		{
			font-family: Segoe UI;
		}
		legend
		{
			color: #c23616;
		}
		iframe
		{	
		outset {border-style: outset;}
			border: 2px solid;
			border-radius: 10px;
			 border-color: red green blue yellow;
		}
		button
		{
			padding: 10px 10px 10px 10px;
			border-radius: 5px;
			background-color: #c23616;
			color: white;
			float: right;
			font-size: 20px;
			font-family: Impact;
			margin: 0px 5px 5px 0px;
		}
		button:hover
		{
			background-color: black;
		}
		
		h2
		{
			float: right;
			color: #c23616;
			font-family: Segoe Print;
			background-color: white;
			border-radius: 20px;
			padding: 10px;
		}
		h2:hover
		{
			color: black;
			cursor: default;
		}
			
			




              

.style1 {
	color: #FFFF99;
	font-size: 36px;
	font-weight: bold;
}
body{

	margin: 0;
	padding: 0;
	background-image: url(images/b2.jpg);
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	font-family: 'Poppins', sans-serif;

}
p {
  position: relative;
	font-family: 'Poppins', sans-serif;
  text-transform: uppercase;
  font-size: 32px;
  letter-spacing: 4px;
  overflow: hidden;
  background: linear-gradient(90deg, #000, #fff, #000);
  background-repeat: repeat;
  background-size: 50%;
  animation: animate 6s linear infinite ;
   text-align:center;
  
  -webkit-background-clip: text;
  -webkit-text-fill-color: rgba(255, 255, 255, 0);
}

@keyframes animate {
  0% {
    background-position: -500%;
  }
  100% {
    background-position: 500%;
  }
}
</style>
</head>
    
          <body>
         
  
           <div style = "margin: 50px 100px 100px 100px;">
		    <%
		    String user= request.getParameter("user");
		    
     String email = request.getParameter("email");
            String pass = request.getParameter("pass");
            
            
            try
            {
                String myUrl = "jdbc:mysql://localhost:3306/acadview";
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection(myUrl,"root","root");
            //out.println("Hello 1");

                String query = "Select email,pass from users where email='"+email+"' and pass ='"+pass+"'";
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery(query);
                
               if(rs.next())
                {
                    out.println("");
                   out.print("Hello "+email);
                }
               else
                   
                   out.println("");
        
                st.close();
            }
            catch(ClassNotFoundException e)
            {
                out.print(e);
            }
            catch(SQLException e)
            {
                out.print(e);
            }
            
           %>
   		<p>Bus Management System</p>

   			 <h2> Welcome <%=user %> [admin]</h2>
   			
   			 <div class="car-body">
        <div class="car-f-glass"></div>
        <div class="car-b-glass">
        </div>

  
        <div class="car-doors">
            
        </div>
   
        <ul class="car-windows">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
              <li></li>
            <li></li>
            <li></li>
            <li></li>
            </h1>
        </ul>
        
        <h1 class="glow"><div class="text-bus">Happy Journey !</div></h1>
        <div class="car-f-wheel"></div>
        <div class="car-b-wheel"></div>
   
    </div>
    
           <iframe src = "buttons_admin.html" name = "tabs" width = "105%" height = "50px"> iframe1 </iframe><br><br>
           
         <iframe src = "dashboard.html" name = "output" width = "105%" height = "600px"> iframe2 </iframe>
        
         </div> 
                             
 
    
                
                
                <style>
body {font-family: 'Poppins', sans-serif;} 
* {box-sizing: border-box;}

/* Button used to open the chat form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.5;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup chat - hidden by default */
.chat-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width textarea */
.form-container textarea {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
  resize: none;
  min-height: 200px;
}

/* When the textarea gets focus, do something */
.form-container textarea:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/send button */
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
</style>
</head>
<body>


<button class="open-button" onclick="openForm()">Chat With us!</button>

<div class="chat-popup" id="myForm">
  <form action="/action_page.php" class="form-container">
    <h1>Chat</h1>

    <label for="msg"><b>Message</b></label>
    <textarea placeholder="Type message.." name="msg" required></textarea>

    <button type="submit" class="btn">Send</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>

<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>




<style>
.car-body{
            width: 250px;
            height: 100px;
            background:#e80000;
          
            position: relative;
            z-index: 1;
            border-radius: 15px 15px 0 0;
            animation: run 6s cubic-bezier(1,.15,.59,1.06);
            animation-iteration-count: infinite;
            animation-direction: alternate-reverse;
        }
        .car-f-wheel,.car-b-wheel {
            position: absolute;
            height: 50px;
            width: 50px;
            border-radius: 50%;
            display: block;
            background: #000 none repeat scroll 0% 0%;
            z-index: 2;
            bottom: -50px;
           
        }
        .car-f-wheel {
            left: 40px;
            box-sizing: border-box;
        }
        .car-f-wheel:after {
            position: absolute;
            content: '';
            display: block;
            top: 8px;
            left: 8px;
            right: 8px;
            bottom: 8px;
            background: #D8C535;
            z-index: 3;
            border-radius: 40%;
            border: 8px solid #000;
        }

        .car-f-wheel:before {
            position: absolute;
            content: '';
            display: block;
            top: 30px;
            left: 30px;
            right: 30px;
            bottom: 30px;
            background: #000;
            z-index: 4;
            border-radius: 50%;
        }

        .car-b-wheel {
            right: 14px;
        }

        .car-b-wheel:after{
            position: absolute;
            content: '';
            display: block;
            top: 8px;
            left: 8px;
            right: 8px;
            bottom: 8px;
            background: #D8C535;
            z-index: 3;
            border-radius: 40%;
            border: 8px solid #000;
        }

        .car-b-wheel:before {
            position: absolute;
            content: '';
            display: block;
            top: 30px;
            left: 30px;
            right: 30px;
            bottom: 30px;
            background: #000;
            z-index: 4;
            border-radius: 50%;
        }
        .car-doors {
            position: absolute;
            height: 60px;
            top: 30px;
            left: 10px;
            background: #C0C0C0;
            width: 30px;
            border-radius: 3px 0 0 0
        }

        .car-doors:after {
            width: 12px;
            background: #838383;
            top: 5px;
            right: 4px;
            bottom: 10px;
            content: "";
            display: block;
            height:50px;
            position: absolute;
        }

        .car-doors:before {
            width: 12px;
            background: #838383;
            top: 5px;
            left: 4px;
            bottom: 10px;
            content: "";
            display: block;
            height: 50px;
            position: absolute;
            border-radius: 3px 0 0 0
        }

        .car-windows {
            list-style: none;
            margin: 0;
            padding: 0;
            position: absolute;
            display: block;
            border: 3px solid #C0C0C0;
            box-sizing: border-box;
            top: 30px;
            left: 46px;
            background: #7A7878;
        }

        .car-windows li {
            width: 15px;
            height: 30px;
            display: block;
            float: left;
            border-left: 2px solid #C0C0C0;
        }

        .car-windows li:first-child {
            border-left: none;
        }

        .car-f-glass {
            position: absolute;
            height: 60px;
            background: rgba(77, 77, 77, 0.56) none repeat scroll 0% 0%;
            width: 4px;
            display: block;
            left: 0px;
            top: 12px;
            border-radius: 0px 2px 2px 0;
        }

        .car-b-glass {
            position: absolute;
            height: 50px;
            background: #7A7878;
            width: 2px;
            display: block;
            right: 0px;
            top: 15px;
        }
        
        .car-windows:after {
            height: 5px;
            top: 40px;
            left: 7px;
            position: absolute;
            content: "";
            display: block;
            background: #C0C0C0;
            width: 180px;
        }

        @keyframes run {
            0%{
                transform: translateX(1100px);
            }
            100%{
                transform: translateX(0px);
            }
        }
.text-bus {
  color: #fff;
  font-size: 10px;
  font-weight: 600;
  position: absolute;
  top:80px;
  left: 100px
}


</style>

    </body>
</html>
