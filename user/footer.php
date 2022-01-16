<div class="footer">
    <div class="wrap">
        <div class="footer-top">
            <div class="col_1_of_4 span_1_of_4">
                <div class="footer-nav">
                    <ul>
                        <li><a href="index.php" style="text-decoration:none;">Trang chủ</a></li>
                        <li><a href="movies_events.php" style="text-decoration:none;">Phim</a></li>
                    </ul>
                </div>
            </div>
            <div class="col_1_of_4 span_1_of_4">
                <div class="call_info">
                    <p class="txt_3">Số điện thoại liên hệ</p>
                    <p class="txt_4">1800.6252</p>
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
</body>
</html>

<style>
    .content {
        padding-bottom:0px !important;
    }
    #form111 {
        width:500px;
        margin:50px auto;
    }
    #search111{
        padding:8px 15px;
        background-color:#fff;
        border:0px solid #dbdbdb;
    }
    #button111 {
        height: 30px;
        padding:6px 15px;
        border:2px solid #ca072b;
        background-color:#ca072b;
        color:#fafafa;
    }
    #button111:hover  {
        background-color:#b70929;
        color:white;
    }

</style>

<script src="<?php echo BASE_PATH ?> /assets/js/auto-complete.js"></script>
<link rel="stylesheet" href="<?php echo BASE_PATH ?> /assets/css/auto-complete.css">
<script>
    var demo1 = new autoComplete({
        selector: '#search111',
        minChars: 1,
        source: function(term, suggest){
            term = term.toLowerCase();
            <?php
            $qry2=mysqli_query($con,"select * from tbl_movie");
            ?>
            var string="";
            <?php $string="";
            while($ss=mysqli_fetch_array($qry2))
            {

                $string .="'".strtoupper($ss['movie_name'])."'".",";
                //$string=implode(',',$string);


            }
            ?>
            //alert("<?php echo $string;?>");
            var choices=[<?php echo $string;?>];
            var suggestions = [];
            for (i=0;i<choices.length;i++)
                if (~choices[i].toLowerCase().indexOf(term)) suggestions.push(choices[i]);
            suggest(suggestions);
        }
    });
</script>