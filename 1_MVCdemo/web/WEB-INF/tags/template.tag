<%-- 
    Document   : template.tag
    Created on : Feb 24, 2020, 7:47:27 PM
    Author     : makra
--%>

<%@tag description="template tag" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="message"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>The B Home Page</title>

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <link rel="stylesheet" href="static/css/pricing-table.css">
        <link rel="stylesheet" href="static/css/bootstrap.min.css">
        <link rel="stylesheet" href="static/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="static/css/fontAwesome.css">
        <link rel="stylesheet" href="static/css/light-box.css">
        <link rel="stylesheet" href="static/css/templatemo-main.css">
        <link rel="stylesheet" href="static/css/bootstrap4.4.1.css">
    </head>

<body>
    
    
    <div class="sequence">
  
      <div class="seq-preloader">
        <svg width="39" height="16" viewBox="0 0 39 16" xmlns="http://www.w3.org/2000/svg" class="seq-preload-indicator"><g fill="#F96D38"><path class="seq-preload-circle seq-preload-circle-1" d="M3.999 12.012c2.209 0 3.999-1.791 3.999-3.999s-1.79-3.999-3.999-3.999-3.999 1.791-3.999 3.999 1.79 3.999 3.999 3.999z"/><path class="seq-preload-circle seq-preload-circle-2" d="M15.996 13.468c3.018 0 5.465-2.447 5.465-5.466 0-3.018-2.447-5.465-5.465-5.465-3.019 0-5.466 2.447-5.466 5.465 0 3.019 2.447 5.466 5.466 5.466z"/><path class="seq-preload-circle seq-preload-circle-3" d="M31.322 15.334c4.049 0 7.332-3.282 7.332-7.332 0-4.049-3.282-7.332-7.332-7.332s-7.332 3.283-7.332 7.332c0 4.05 3.283 7.332 7.332 7.332z"/></g></svg>
      </div>
      
    </div>
    
  
        <nav>
          <div class="logo">
              <img src="static/img/forum_b.jpg" alt="" width="150px" height="150px">
          </div>
          <div class="mini-logo">
              <img src="static/img/mini_logo.png" alt="">
          </div>
          <ul>
            <li><a href="#1"><i class="fa fa-home"></i> <em>All Student Records</em></a></li>
            <li><a href="#2"><i class="fa fa-pencil"></i> <em>Insert Student Info</em></a></li>
          </ul>
        </nav>
        
        <div class="slides">
            
          <div class="slide" id="1"  style="text-align: center;">
            
            <jsp:doBody/>    
            
          </div>
          
          <div class="slide" id="2">
            <div class="content fifth-content">

                <div style="margin-top: 150px">
                    <div class="col-sm-1">
                        <img src="static/img/forum_b.jpg" class="rounded-circle" style="margin-left: 600px">
                    </div>
                </div>

                <div class="container-fluid" style="margin-left: 220px" style="margin-bottom: 300px">

                    <form id="contact" action="InsertServlet" method="get" style="margin-top: 50px">
                        <div class="col-md-9">
                            <div class="row">
                                <div class="col-md-12">
                                    <div>
                                        <fieldset>
                                            <input name="nameInsert" type="text" class="form-control" id="name_Insert" placeholder="Your name..." required="">
                                        </fieldset>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div>
                                        <fieldset>
                                            <input name="idInsert" type="text" class="form-control" id="id_Insert" placeholder="Your ID..." required="">
                                        </fieldset>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <fieldset>
                                        <button type="submit" id="form-submit" class="btn"> Insert </button>
                                    </fieldset>
                                </div>
                            </div>


                        </div>
                    </form>
                </div>
            </div>
          </div>
        </div>

        <div class="footer">
          <div class="content">
              <p>Copyright &copy; 2020 The B Community .<a rel="nofollow" href="">Welcome to The B</a></p>
          </div>
        </div>
 
    <script src="static/js/vendor/jquery-1.11.2.min.js"></script>
    <!-- <script src="static/js/vendor/bootstrap.js"></script> -->
    <script src="static/dist/js/bootstrap.js"></script>
    
    <script src="static/js/datepicker.js"></script>
    <script src="static/js/plugins.js"></script>
    <script src="static/js/main.js"></script>

    <script type="text/javascript"> 
    $(document).ready(function() {
        // navigation click actions 
        $('.scroll-link').on('click', function(event){
            event.preventDefault();
            var sectionID = $(this).attr("data-id");
            scrollToID('#' + sectionID, 750);
        });
        // scroll to top action
        $('.scroll-top').on('click', function(event) {
            event.preventDefault();
            $('html, body').animate({scrollTop:0}, 'slow');         
        });
        // mobile nav toggle
        $('#nav-toggle').on('click', function (event) {
            event.preventDefault();
            $('#main-nav').toggleClass("open");
        });
    });
    // scroll function
    function scrollToID(id, speed){
        var offSet = 0;
        var targetOffset = $(id).offset().top - offSet;
        var mainNav = $('#main-nav');
        $('html,body').animate({scrollTop:targetOffset}, speed);
        if (mainNav.hasClass("open")) {
            mainNav.css("height", "1px").removeClass("in").addClass("collapse");
            mainNav.removeClass("open");
        }
    }
    if (typeof console === "undefined") {
        console = {
            log: function() { }
        };
    }
    </script>
</body>
</html>