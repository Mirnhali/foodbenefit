<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FoodBenefits.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <%--  </style>--%>
         <body>
             <%--<link href="Content/bootstrap.css" rel="stylesheet" />--%>
             <link href="Content/FoodBenefits.css" rel="stylesheet" />
             <link href="Content/Home.css" rel="stylesheet" />
             <script src="js/jquery.min.js"></script>
             <script src="js/jquery.isotope.min.js"></script>
             <a href="fonts/fontawesome-webfont.ttf"></a>
            <div class="slideshow-container">

           
            <div class="mySlides fade">
              <div class="numbertext">1 / 3</div>
              <img src="../Image/fruits0.jpg" style="width:100%">
              <div class="text">Caption Fruits</div>
            </div>

            
            <div class="mySlides fade">
              <div class="numbertext">2 / 3</div>
              <img src="../Image/grains1.jpg" style="width:100%">
              <div class="text">Caption Grains</div>
            </div>
                

             
            <div class="mySlides fade">
              <div class="numbertext">3 / 3</div>
              <img src="../Image/nuts2.jpg" style="width:100%">
              <div class="text">Caption Nuts</div>
            </div>
                 

                
              <div class="mySlides fade">
              <div class="numbertext">4 / 3</div>
              <img src="../Image/vegetables1.jpg" style="width:100%">
              <div class="text">Caption Vegetables</div>
              </div>
                    

                 
              <div class="mySlides fade">
              <div class="numbertext">3 / 3</div>
              <img src="../Image/fish4.jpg" style="width:100%">
              <div class="text">Caption Fish</div>
            </div>
                    

                 
               <div class="mySlides fade">
              <div class="numbertext">3 / 3</div>
              <img src="../Image/meat5.jpg" style="width:100%">
              <div class="text">Caption Meat</div>
            </div>
                
            </div>
            <br>

            <div style="text-align:center">
              <span class="dot"></span> 
              <span class="dot"></span> 
              <span class="dot"></span> 
              <span class="dot"></span> 
              <span class="dot"></span> 
              <span class="dot"></span> 
            </div>
    <script>
        var slideIndex = 0;
        showSlides();

        function showSlides() {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 1000); // Change image every 3 seconds
        }
</script>


             <header class="head_section center_section">
                <div class="container">
                    <h1>Welcome to Food Benefit</h1>
                    <div class="separator"></div>
                    <p>The health benefits of food have been studied by countless ancient civilizations and modern herbalists, naturopaths, and dieticians. Doctors have always told us that a properly balanced diet will help us prevent the incidence of a number of illnesses and diseases, treat most ailments, and help us live a healthy and happy life. Despite that advice, most people limit themselves to only a few types of food items, and do not always get the nutrition their body needs.</p>
                </div><!-- end .container -->


                 <div class="container">
                <div class="row">
                    <div class="about_block bg_gray mb30">
                    <div class="col-md-4 col-sm-4">
                        <div class="icon-banner">
                        	<a href="javascript:void(0);">
                                <div class="icon">
                                	<%--<img alt="" src="images/mal.jpg">--%>
                                    <img src="Image/apples_leaves.jpg" />
                                </div>
                                <h3>Health Benefits of Apple</h3>
                                <div class="separator"></div>
                            	<p>Apples are an excellent source of antioxidants, which combat free radicals. Free radicals are damaging substances generated in the body that cause undesirable changes and are involved in the aging process and some diseases.
                                   Some animal studies have found that an antioxidant found in apples (polyphenols) might extend lifespans.
                                   Researchers at The Florida State University said that apples are a "miracle fruit".</p>
                            </a>
                            </div>
                        </div>
                    </div>
                    <div class="about_block bg_gray mb30">
                    <div class="col-md-4 col-sm-4">
                        <div class="icon-banner">
                        	<%--<a href="javascript:void(0);">--%>
                                <div class="icon">
                                	<%--<img alt="" src="images/goa.jpg">--%>
                                    <img src="Image/pomegranate.jpg" />
                                </div>
                                <h3>Health Benefits of Pomegranate</h3>
                                <div class="separator"></div>
                            	<p>The health benefits of pomegranates are innumerable and what makes them special is that apart from being healthy, pomegranates are delicious too. Pomegranates have anti-oxidant, anti-viral and anti-tumor properties and are said to be a good source of vitamins, especially vitamin A, vitamin C, and vitamin E, as well as folic acid. This amazing fruit consists of three times as many antioxidants as both wine or green tea.</p>
                           <%-- </a>--%>
                        </div>
                    </div>
                        </div>
                    <div class="about_block bg_gray mb30">
                    <div class="col-md-4 col-sm-4">
                        <div class="icon-banner">
                        	<%--<a href="javascript:void(0);">--%>
                                <div class="icon">
                                	<%--<img alt="" src="images/ticket book.jpg"--%>
                                    <img src="Image/grapes_branch.jpg" />
                                </div>
                                <h3>Health Benefits of Grapes</h3>
                                <div class="separator"></div>
                            	<p>Grapes are known as ‘The Queen of Fruits’, and are categorized into three variants based on their color – red, green, and black/blue. This wonderful and flavorful fruit not only adds vibrance and appeal to your food, but is also very beneficial. Grapes contain immunity-boosting vitamin C, simple sugars that provide instant energy, and antioxidants that are anti-inflammatory.</p>
                            <%--</a>--%>
                        </div>
                    </div>
                        </div>
                    <div class="clear"></div>
                </div>
            </div>


                <%-- <div class="container wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">   --%>         				
                <div class="about_block bg_gray mb30">                	              	
                    <div class="col_cont">                    	                     	
                        <div class="wrap_cont">                        	
                            <header class="head_section">                            	                         	
                            	<h2>EGG & TOAST DIET</h2>
                               <%-- <tourtraveln>History</tourtraveln>--%>
                              <div class="separator left"></div>                              	
                            </header>
                            <p>Eggs and toast are a healthy choice for breakfast -- as long as they're not the only thing you're eating. The egg and toast diet, also known as the egg diet or the three-day diet, is a crash-diet regimen that involves eating the same low-calorie foods, including eggs and toast, every day. Talk to your doctor before you make any changes in your diet, especially if you have allergies or health conditions.</p> 
                            <p>They are rich in high-quality protein, healthy fats and many essential vitamins and minerals Eggs also have a few unique properties that make them egg-ceptionally weight loss friendly.</p>
                            <a id="rd1" class="shortcode_button" href="#">Read More</a>                            
                        </div>
                    </div>                     
                    <div class="col_img"></div>	
                    <div class="clear"></div>
                </div>
           <%-- </div>--%>

                 <%--<div class="container block-wrap wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
                     <div class="row">
                         <div class="col-md-3">
                             <div class="info-block bg_colored block" style="min-height: 376px;">
                                 <header class="head_section">
                                     <div class="icon-write">
                                         <i class="pe-5x pe-va pe-7s-diamond"></i>
                                     </div>
                                     <h2>WRITE US</h2>
                                     <div class="separator left"></div>
                                 </header>
                                 <p>We value your opinion regarding our service and facilities. Please feel free to contact us with your thoughts.</p>
                             </div>
                         </div>
                         <div class="col-md-6">
                             <div class="contact_form block" style="min-height: 376px;">
                                 <div class="row">
                                     <div class="col-md-12 col-sm-12">
                                         <div id="note"></div>
                                     </div>
                                 </div>
                                 <div id="fields">

                                     <div class="col-md-6 col-sm-6">
                                         <input class="inp" type="text" name="name" placeholder="Name" title="Name">
                                     </div>
                                     <div class="col-md-6 col-sm-6">
                                         <input class="inp" type="text" name="email" placeholder="Email" title="Email">
                                     </div>
                                     <div class="clear"></div>
                                     <div class="col-md-6 col-sm-6">
                                         <input class="inp" type="text" name="phone" placeholder="Phone" title="Phone">
                                     </div>
                                     <div class="col-md-6 col-sm-6">
                                         <input class="inp" type="text" name="subject" placeholder="Subject" title="Subject">
                                     </div>
                                     <div class="clear"></div>
                                     <div class="col-md-12">
                                         <textarea class="inp" rows="4" name="message" placeholder="Message" title="Message"></textarea>
                                     </div>
                                     <div class="col-md-12">
                                         <input class="shortcode_button" type="submit" value="Send message"></div>

                                 </div>
                             </div>
                         </div>
                         <div class="col-md-3">
                             <div class="info-block bg_black block" style="min-height: 376px;">
                                 <header class="head_section">
                                     <div class="icon-write">
                                         <i class="pe-5x pe-va pe-7s-diamond"></i>
                                     </div>
                                     <h2>CONTACT</h2>
                                     <tour traveln="">DETAILS</tour>
                                     <div class="separator left"></div>
                                 </header>
                                 <p>Address: 86, Fifth Avenue St. </p>
                                 <p>New York, NY </p>
                                 <p>United States</p>
                                 <p>Phone: +1 (800) 447 33 21</p>
                                 <p>Fax: +1 (800) 447 33 21</p>
                                 <p>Email: info@yoursite.com </p>
                             </div>
                         </div>
                     </div>
                 </div>--%>





             </header>

         </body>

</asp:Content>
