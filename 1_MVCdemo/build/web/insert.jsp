<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

 <t:wrapper>
        <div class="content fifth-content">

            <div style="margin-top: 180px">
                <div class="col-sm-1">
                    <img src="the_bb.jpg" class="rounded-circle" style="margin-left: 480px">
                </div>
            </div>

            <div class="container-fluid" style="margin-left: 220px" style="margin-bottom: 300px">

                <form id="contact" action="" method="post" style="margin-top: 50px">
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-md-12">
                                <div>
                                    <fieldset>
                                        <input name="name" type="text" class="form-control" id="name" placeholder="Your name..." required="">
                                    </fieldset>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div>
                                    <fieldset>
                                        <input name="email" type="email" class="form-control" id="email" placeholder="Your ID..." required="">
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
    </t:wrapper>