<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:wrapper>
    <div class="content fifth-content">
        <div class="container-fluid">
            <div class="col-md-6">
                <div id="map">
                <!-- How to change your own map point
                    1. Go to Google Maps
                    2. Click on your location point
                    3. Click "Share" and choose "Embed map" tab
                    4. Copy only URL and paste it within the src="" field below
                -->
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3647.3030413476204!2d100.5641230193719!3d13.757206847615207!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf51ce6427b7918fc!2sG+Tower!5e0!3m2!1sen!2sth!4v1510722015945" width="100%" height="500px" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>>
            <div class="col-md-6">>
                <form id="contact" action="" method="post">
                    <div class="row">
                        <div class="col-md-12">
                          <fieldset>
                            <input name="name" type="text" class="form-control" id="name" placeholder="Your name..." required="">
                          </fieldset>
                        </div>
                        <div class="col-md-12">
                          <fieldset>
                            <input name="email" type="email" class="form-control" id="email" placeholder="Your email..." required="">
                          </fieldset>
                        </div>
                         <div class="col-md-12">
                          <fieldset>
                            <input name="subject" type="text" class="form-control" id="subject" placeholder="Subject..." required="">
                          </fieldset>
                        </div>
                        <div class="col-md-12">
                          <fieldset>
                            <textarea name="message" rows="6" class="form-control" id="message" placeholder="Your message..." required=""></textarea>
                          </fieldset>
                        </div>
                        <div class="col-md-12">
                          <fieldset>
                            <button type="submit" id="form-submit" class="btn">Send Now</button>
                          </fieldset>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</t:wrapper>
