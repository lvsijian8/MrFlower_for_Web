<%--
  Created by IntelliJ IDEA.
  User: desol
  Date: 2017/3/10
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>联系我们</title>
    <meta name="format-detection" content="telephone=no" />
    <link rel="icon" href="images/favicon.ico">
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link rel="stylesheet" href="css/form.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.1.1.js"></script>
    <script src="js/script.js"></script>
    <script src="js/jquery.ui.totop.js"></script>
    <script src="js/TMForm.js"></script>
    <script src="js/superfish.js"></script>
    <script src="js/jquery.equalheights.js"></script>
    <script src="js/jquery.mobilemenu.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script>
        $(document).ready(function(){
            $().UItoTop({ easingType: 'easeOutQuart' });
        })
    </script>
</head>
<body id="top">
<!--==============================header=================================-->
<header>
    <div class="container_12">
        <div class="grid_12">
            <h1>
                <a href="index.jsp">
                    <img src="images/logo.png" alt="Your Happy Family">
                </a>
            </h1>
        </div>
    </div>
    <div class="clear"></div>
    <div class="menu_block">
        <div class="container_12">
            <div class="grid_12">
                <nav class="horizontal-nav full-width horizontalNav-notprocessed">
                    <ul class="sf-menu">
                        <li><a href="index.jsp">首页</a></li>
                        <li><a href="index-1.html">图表</a></li>
                        <li><a href="index-2.html">设备</a></li>
                        <li><a href="index-3.html">价格</a></li>
                        <li><a href="Contacts.jsp">联系我们</a></li>
                        <li><a href="login.jsp">登录|注册</a></li>
                    </ul>
                </nav>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</header>
<!--==============================Content=================================-->
<div class="content">
    <div class="container_12">
        <div class="grid_8">
            <h2>How to Find Us</h2>
            <div class="map">
                <div class="img_block fleft">
                    <figure class="img_inner">
                        <iframe src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
                    </figure>
                    <span class="l"></span>
                    <span class="ll"></span>
                    <span class="r"></span>
                    <span class="rr"></span>
                    <span class="lb"></span>
                    <span class="llb"></span>
                    <span class="rb"></span>
                    <span class="rrb"></span>
                </div>
                <div class="extra_wrapper">
                    <p class="pt1">Get 24/7 support for all <span class="col1"><a href="http://www.templatemonster.com/website-templates.php" rel="nofollow">premium templates</a></span> at our site. We do not provide it for free templates.</p>
                    <p>If you need any help with customization of a chosen free theme, ask <span class="col1"><a href="http://www.templatetuning.com/" rel="nofollow">Template Tuning</a></span> to help you.</p>
                    <address>
                        <dl>
                            <dt>The Company Name Inc. <br>
                                8901 Marmora Road,<br>
                                Glasgow, D04 89GR.
                            </dt>
                            <dd><span>Freephone:</span>+1 800 559 6580</dd>
                            <dd><span>Telephone:</span>+1 800 603 6035</dd>
                            <dd><span>FAX:</span>+1 800 889 9898</dd>
                            <dd>E-mail: <a href="#" class="link-1">mail@demolink.org</a></dd>
                        </dl>
                    </address>
                </div>
            </div>
        </div>
        <div class="grid_4">
            <h2>Contact Form</h2>
            <form id="form">
                <div class="success_wrapper">
                    <div class="success-message">Contact form submitted</div>
                </div>
                <label class="name">
                    <input type="text" placeholder="Name:" data-constraints="@Required @JustLetters" />
                    <span class="empty-message">*This field is required.</span>
                    <span class="error-message">*This is not a valid name.</span>
                </label>
                <label class="email">
                    <input type="text" placeholder="E-mail:" data-constraints="@Required @Email" />
                    <span class="empty-message">*This field is required.</span>
                    <span class="error-message">*This is not a valid email.</span>
                </label>
                <label class="phone">
                    <input type="text" placeholder="Phone:" data-constraints="@Required @JustNumbers"/>
                    <span class="empty-message">*This field is required.</span>
                    <span class="error-message">*This is not a valid phone.</span>
                </label>
                <label class="message">
                    <textarea placeholder="Message:" data-constraints='@Required @Length(min=20,max=999999)'></textarea>
                    <span class="empty-message">*This field is required.</span>
                    <span class="error-message">*The message is too short.</span>
                </label>
                <div>
                    <div class="clear"></div>
                    <div class="btns">
                        <a href="#" data-type="reset" class="btn">clear</a>
                        <a href="#" data-type="submit" class="btn">send</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!--==============================footer=================================-->
<footer>
    <div class="container_12">
        <div class="grid_12 ">
            <div class="copy">
                Copyright &copy; 2014.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</footer>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
