<html>
<body>
<?php
include('header.php');
?>

<div class="content">
    <!--slider-->
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="col-sm-6">
                                <a href="about.php?id=12" class="link4" style="text-decoration:none; font-size:50px;">Black Widow</a>
                                <br>
                                <span class="data">Ngày chiếu: 2022-07-09</span>
                                <br>
                                Diễn viên:
                                <span class="data">Scarlett Johansson, Florence Pugh, David Harbour, Rachel Weisz</span>
                                <br>
                                Giới thiệu:
                                <span" class="color2" style="text-decoration:none;">Khi sinh ra, Black Widow (hay còn gọi là Natasha Romanova) được trao cho KGB, đội sẽ đưa cô trở thành đặc vụ cuối cùng của tổ chức này.<br>
                                </span">
                            </div>
                            <div class="col-sm-6">
                                <a target="_blank" href=""><img src="<?php echo BASE_PATH ?> /admin/news_images/blackwidow.jpg"  width="300px" alt=""></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-sm-6">
                                <a href="about.php?id=1" class="link4" style="text-decoration:none; font-size:50px;">Shang-Chi và huyền thoại thập luân</a>
                                <br>
                                <span class="data">Ngày chiếu: 2022-09-14</span>
                                <br>
                                Diễn viên:
                                <span class="data">Simu Liu, Awkwafina, Tony Leung, Fala Chen, Micheele Yeoh</span>
                                <br>
                                Giới thiệu:
                                <span" class="color2" style="text-decoration:none;">Shang-Chi là một bậc thầy của vô số vũ khí và các phong cách wushu dựa trên vũ khí, bao gồm sử dụng súng, côn nhị khúc và jian.<br>
                                </span">
                            </div>
                            <div class="col-sm-6">
                                <a target="_blank" href=""><img src="<?php echo BASE_PATH ?> /admin/news_images/shangchi.jpg" width="300px" alt=""></a>
                            </div>
                        </div>

                        <div class="item">
                            <div class="col-sm-6">
                                <a href="about.php?id=17" class="link4" style="text-decoration:none; font-size:50px;">Chủng tộc bất tử (Eternals)</a>
                                <br>
                                <span class="data">Ngày chiếu: 2022-7-21</span>
                                <br>
                                Diễn viên:
                                <span class="data">Richard Madden, Salma Hayek, Angelina Jolie, Kit Harrington</span>
                                <br>
                                Giới thiệu:
                                <span" class="color2" style="text-decoration:none;">Câu chuyện về sự vĩnh hằng, một chủng tộc của những sinh vật bất tử sống trên trái đất và định hình nên lịch sử và các nền văn minh của nó.<br>
                                </span">
                            </div>
                            <div class="col-sm-6">
                                <a target="_blank" href=""><img src="<?php echo BASE_PATH ?> /admin/news_images/eternals.jpg" width="300px" alt=""></a>
                            </div>
                        </div>

                    </div>

                    <ul class="group" id="example-one" >
                        <li><a href="#slider-carousel" data-slide="prev">
                                <div>before</div>
                            </a></li>
                        <li><a href="#slider-carousel" data-slide="next">
                                <div>next</div>
                            </a></li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <!--/slider-->
    <div class="wrap">
        <div class="content-top">
            <div class="listview_1_of_3 images_1_of_3">
                <h2 style="color:#555;">Upcoming Movies</h2>
                <?php
                $qry3=mysqli_query($con,"SELECT * FROM tbl_news LIMIT 5");

                while($n=mysqli_fetch_array($qry3))
                {
                    ?>
                    <div class="content-left">
                        <div class="listimg listimg_1_of_2">
                            <img src="<?php echo BASE_PATH ?> /admin/<?php echo $n['attachment'];?>">
                        </div>
                        <div class="text list_1_of_2">
                            <div class="extra-wrap">
						  	<span style="text-color:#000" class="data"><strong><?php echo $n['name'];?></strong><br>
						  	<span style="text-color:#000" class="data"><strong>Cast :<?php echo $n['cast'];?></strong><br>
                                <div class="data">Release Date :<?php echo $n['news_date'];?></div>



                                <span class="text-top"><?php echo $n['description'];?></span>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <?php
                }
                ?>


            </div>
            <div class="listview_1_of_3 images_1_of_3">
                <h2 style="color:#555;">Movie Trailers</h2>
                <div class="middle-list">
                    <?php
                    $qry4=mysqli_query($con,"SELECT * FROM tbl_movie ORDER BY rand() LIMIT 6");

                    while($nm=mysqli_fetch_array($qry4))
                    {
                        ?>

                        <div class="listimg1">
                            <a target="_blank" href="<?php echo $nm['video_url'];?>"><img src="<?php echo BASE_PATH ?> /assets/<?php echo $nm['image'];?>" alt=""/></a>
                            <a target="_blank" href="<?php echo $nm['video_url'];?>" class="link" style="text-decoration:none; font-size:14px;"><?php echo $nm['movie_name'];?></a>
                        </div>
                        <?php
                    }
                    ?>
                </div>


            </div>
            <?php include('movie_sidebar.php');?>
        </div>
    </div>
</div>
<?php include('footer.php');?>

<?php include('searchbar.php');?>