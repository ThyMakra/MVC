<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2/24/20
  Time: 2:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>B Community</title>
    <link href="homestyle.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="homejs.js"></script>
  </head>
  <body>
  <div class="cotn_principal">
    <div class="cont_centrar">

      <div class="cont_login">
        <div class="cont_info_log_sign_up">
          <div class="col_md_login">
            <div class="cont_ba_opcitiy">

              <h2>LOGIN</h2>
              <p>Login to B Community</p>
              <button class="btn_login" onclick="cambiar_login()">LOGIN</button>
            </div>
          </div>
          <div class="col_md_sign_up">
            <div class="cont_ba_opcitiy">
              <h2>SIGN UP</h2>


              <p>SIGN UP TO BE OUR B COMMUNITY MEMBER</p>

              <button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>
            </div>
          </div>
        </div>


        <div class="cont_back_info">
          <div class="cont_img_back_grey">
            <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d" alt="" />
          </div>

        </div>
        <div class="cont_forms" >
          <div class="cont_img_back_">
            <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d" alt="" />
          </div>
          <form action="loginServlet" method="post">
                <div class="cont_form_login">
                  <a href="#" onclick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>
                  <h2>LOGIN</h2>
                      <input type="text" placeholder="username" name="usernameLogin"/>
                      <input type="password" placeholder="password" name="passwordLogin"/>
                      <button class="btn_login" onclick="cambiar_login()">LOGIN</button>
                </div>
          </form>

            <form action="SignupServlet" method="post">
            <div class="cont_form_sign_up">
              <a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
              <h2>SIGN UP</h2>
              <input type="text" placeholder="Username" name="nameSignup"/>
              <input type="password" placeholder="Password" name="passSignup"/>
              <button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>

            </div>
          </form>  

        </div>

      </div>
    </div>
  </div>
  </body>
</html>
