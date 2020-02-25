<%@tag description="viewing all the students" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@attribute name="indicators" fragment="true" %>
<%@attribute name="student_cards" fragment="true" %>
<t:template>
   
        <div class="content fifth-content"  style="background: transparent">
        <div class="mycss">
            <div id="carouselExampleIndicators" class="carousel slide student-card" 
                data-ride="carousel" style="width: 70%;height:758px;margin-left: 90px;">
                <ol class="carousel-indicators" style="background: transparent">
                    <jsp:invoke fragment="indicators"/>
                    <!--<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>-->
                </ol>
                <div class="carousel-inner">
                    <jsp:invoke fragment="student_cards"/>
<!--                    <div class="carousel-item active">
                        <div class="card-container">
                            <img src="static/img/author_image.png" alt="user"/>
                            <h3 class="student-name">Student Name</h3>
                            <h6 class="student-id">ID: </h6>

                            <div class="student-information" style="height: 250px;background: black!important;">

                            </div>
                            <div class="student-skills"  style="background-color: #1F1A36;">
                                <h6>Skills</h6>
                                <ul>
                                    <li>Docker</li>
                                    <li>React</li>
                                    <li>Django</li>
                                    <li>NextJS</li>
                                </ul>
                            </div>
                            <div class="buttons" style="background-color: #1F1A36;">
                                <button class="student-card-button ghost">
                                    Update
                                </button>
                                <button class="student-card-button" style="background-color: #d92121;">
                                    Delete
                                </button>
                            </div>
                        </div>
                    </div>-->
                </div>

            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next" style="margin-right: 20px;">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</t:template>