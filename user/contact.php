
<!DOCTYPE HTML>
<html>
<head>
    <title>Contact</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="<?php echo BASE_PATH ?> /assets/css/style.css" type="text/css" media="all" />
    <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js'></script>
    <script src='<?php echo BASE_PATH ?> /assets/js/jquery.color-RGBa-patch.js'></script>
    <script src='<?php echo BASE_PATH ?> /assets/js/example.js'></script>
</head>
<body>
<div class="header">
    <div class="header-top">
        <div class="wrap">
            <div class="h-logo">
                <a href="index.php"><img src="<?php echo BASE_PATH ?> /assets/images/logo.png" alt=""/></a>
            </div>
            <div class="nav-wrap">
                <ul class="group" id="example-one">
                    <li><a href="index.php">Trang chủ</a></li>
                    <li><a href="about.php">Về chúng tôi</a></li>
                    <li><a href="movies_events.php">Phim và sự kiện</a></li>
                    <li class="current_page_item"><a href="contact.php">Liên hệ</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="block">
        <div class="wrap">

            <form action="#" id="reservation-form" method="post">
                <fieldset>
                    <div class="field">
                        <label>Tìm kiếm phim:</label>
                        <select class="select2">
                            <option>Danh sách phim</option>
                        </select>
                    </div>
                    <div class="field1">
                        <label>Tìm kiếm</label>
                        <select class="select1">
                            <option>Phim hoặc diễn viên</option>
                        </select>
                    </div>
                </fieldset>
            </form>
            <div class="clear"></div>
        </div>
    </div>
</div>
<div class="content">
    <div class="wrap">
        <div class="content-top">
            <div class="section group">
                <div class="col span_2_of_3">
                    <div class="contact-form">
                        <h3>Liên hệ chúng tôi</h3>
                        <form action="process_contact.php" method="post" name="form11">
                            <div>
                                <span><label>Tên</label></span>
                                <span><input type="text" value="" required name="name"></span>
                            </div>
                            <div>
                                <span><label>E-mail</label></span>
                                <span><input type="text" value="" required name="email"></span>
                            </div>
                            <div>
                                <span><label>Số điện thoại</label></span>
                                <span><input type="number" value="" required name="mobile"></span>
                            </div>
                            <div>
                                <span><label>Tiêu đề</label></span>
                                <span><textarea required name="subect"> </textarea></span>
                            </div>
                            <div>
                                <span><input type="submit">Gửi</span>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col span_1_of_3">
                    <div class="contact_info">
                        <h3>Find Us Here</h3>
                        <div class="map">
                            <iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe><br><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color:#666;text-align:left;font-size:12px">View Larger Map</a></small>
                        </div>
                    </div>
                    <div class="company_address">
                        <h3>Company Information :</h3>
                        <p>500 Lorem Ipsum Dolor Sit,</p>
                        <p>22-56-2-9 Sit Amet, Lorem,</p>
                        <p>Phone:(00) 222 666 444</p>
                        <p>Fax: (000) 000 00 00 0</p>
                        <p>Email: <span>info@mycompany.com</span></p>
                        <p>Follow on: <span>Facebook</span>, <span>Twitter</span></p>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="wrap">
        <div class="footer-top">
            <div class="col_1_of_4 span_1_of_4">
                <div class="footer-nav">
                    <ul>
                        <li><a href="">Our Tips of gallery Template diam</a></li>
                        <li><a href="">Our Tips of gallery Template diam</a></li>
                        <li><a href="">Our Tips of gallery Template diam</a></li>
                        <li><a href="">Our Tips of gallery Template diam</a></li>
                    </ul>
                </div>
            </div>
            <div class="col_1_of_4 span_1_of_4">
                <div class="textcontact">
                    <p>consectetuer adipiscing elit,<br>
                        consectetuer<br>
                        Ph: +1-800-234-52589.<br>
                        Email:Support(at)Fotoria-scope.com<br>
                    </p>
                </div>
            </div>
            <div class="col_1_of_4 span_1_of_4">
                <div class="call_info">
                    <p class="txt_3">Call us toll free:</p>
                    <p class="txt_4">1 800 234 23456</p>
                </div>
            </div>
            <div class="col_1_of_4 span_1_of_4">
                <div class=social>
                    <a href="#"><img src="<?php echo BASE_PATH ?> /assets/images/fb.png" alt=""/></a>
                    <a href="#"><img src="<?php echo BASE_PATH ?> /assets/images/tw.png" alt=""/></a>
                    <a href="#"><img src="<?php echo BASE_PATH ?> /assets/images/dribble.png" alt=""/></a>
                    <a href="#"><img src="<?php echo BASE_PATH ?> /assets/images/pinterest.png" alt=""/></a>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<div class="footer-bottom">
    <div class="wrap">
        <div class="copy">
            <p>All rights Reserved | Design by <a href="http://w3layouts.com">W3Layouts</a></p>
        </div>
    </div>
</div>
</body>
</html>
