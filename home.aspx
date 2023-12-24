<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebProject.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flower Shop Website Design</title>
    <!-- font change -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <link rel="stylesheet" href="home.css">
</head>
<body>
    <header>
        <input type="checkbox" name="" id="toggler">
        <label for="toggler" class="fas fa-bars"></label>
        <a href="#" class="logo">FLOWRA<span>.</span></a>
        <nav class="navbar">
            <a href="home.aspx">Home</a>
            <a href="#about">About</a>
            <a href="#review">Review</a>
            <a href="register.aspx">Register</a>
            <a href="login.aspx">Login</a>
            <a href="shop.aspx">Shop</a>
            <a href="blog.aspx">Blog</a>
            <a href="admin.aspx">Admin</a>
        </nav>

        <div class="icons">
            <a href="blog.aspx" class="fas fa-heart"></a>
            <a href="userdetails.aspx" class="fas fa-shopping-cart"></a>
        </div>
    </header>

<section class="home" id="home">
    <div class="content">
        <h1>Where Flowers Bloom So Does Hope </h1>
        <h5>Welcome to our page! May your day be as beautiful as a flower bouquet.<br /> Pick your bouquet any time anywhere!</h5>
        <a href="shop.aspx" class="btn">See Products</a>
    </div>
</section>

<section class="about" id="about">
    <h1 class="heading"><span>FLOWERS 24/7 </span> OUR POLICY</h1>
    <div class="row">
        <div class="video-container">
            <video src="cover.video.mp4" loop autoplay muted></video> 
            <h3>Flowra Best Seller</h3>
        </div>
    
        <div class="content">
            <p>We prefer Creative Floral Designs Creativity is everything when dealing with floral designs and arrangement. 
                Excellent Color Coordination A good understanding of color coordination is an important trait that any professional florist should have.
                Verifiable Physical Address. No Hidden Costs. Reasonable Substitution Policy. Timely Delivery etc.</p>
            <p>
                There is a common misconception that being a florist is as easy as cutting some flowers and selling them, but this is completely wrong. Things like a good required amount of experience combined with knowledge make being a florist a really difficult task. Many people need a florist to tell them the best type of flower they can buy. Additionally, different occasions need different type of flowers for them. Here are some of the best qualities that an individual has to acquire in order to become a good florist. Love Flowers And Plants The must have quality that you'll need to start the flower business is that you should love flowers and plants. Passion is the only quality that will keep you curious to try and learn new and unique skills. 
            </p>
            </div>

    </div>
</section>

<section class="products" id="products">
  <div class="icons">
        <img src="Images/1.png" alt="">
        <div class="info">
            <h3>free Delivery</h3>
            <span>on all orders</span>
        </div>
    </div>

    <div class="icons">
        <img src="Images/2.png" alt="">
        <div class="info">
            <h3>10 days returns</h3>
            <span>moneyback garantee</span>
        </div>
    </div>

    <div class="icons">
        <img src="Images/3.png" alt="">
        <div class="info">
            <h3>offer & gifts</h3>
            <span>on special occasions</span>
        </div>
    </div>

    <div class="icons">
        <img src="Images/4.png" alt="">
        <div class="info">
            <h3>secure payments</h3>
            <span>protected by Bkash</span>
        </div>
    </div>


</section>
<section class="review">
    <h3 class="heading" style="color:MediumSeaGreen;background:LightGreen">LATEST WEDDING <span style="color:Green">BOUQUETS</span></h3>
        <div class="row">
            <div class="image-container">
                <img src="Images/wedding2.jpg" width="205" height="290">
                <img src="Images/wedding5.jpg" width="205" height="290">
                <img src="Images/wedding3.jpg" width="200" height="290">
                <img src="Images/wed.jpeg" width="204" height="290">
                <img src="Images/wedding4.jpg" width="205" height="290">
                <img src="Images/wedding6.jpg" width="205" height="290">
            </div>   
            </section>

    <section class="about">
    <h1 class="heading" style="color:MediumSeaGreen;background:LightGreen"><span style="color:Green">FLOWER LEAVES </span> & FLOWERS</h1>
        <div>
                <img src="Images/l2.png" width="620" height="450">
                <img src="Images/f1.jpg" width="620" height="450">
        </div>
        <br />
        <br />
        <br />

            <h2><a style="color:mediumseagreen;" href="https://www.thetreecenter.com/types-of-leaves/">Click here to know more on leaves</a></h2><br />
        <h2><a href="https://www.allaboutgardening.com/types-of-flowers/"> <span style="color:mediumpurple;">Click here for information of different flowers</span></a></h2>

</section>



<section class="review" id="review">
        <h1 class="heading" style="color:steelblue;background:Lightblue"><span style="color:cornflowerblue">CUSTOMER'S </span> REVIEW</h1>
<div class="box-container">
    <div class="box">
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
        </div>

        <p>The flowers are beautiful and exactly as expected and depicted in the photo. The only challenge was they were delivered late. Which is frustrating when the delivery fee is higher than others. Still the quality was good and so I'm going to order next time from your shop. Just try to improve the issues. Best wishes!</p>
        <div class="user">
            <img src="Images/r3.jfif" alt="">
            <div class="user-info">
                <h3>Mr. John Deo</h3>
                <span>ok customer</span>
            </div>
        </div>

        <span class="fas fa-quote-right"></span>
    </div>

    <div class="box">
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>         
        </div>

        <p>I had to postpone the delivery of the bouquet and they accommodated to my request right away. No questions ask or additional charges whatsoever. Great communication, prompt delivery and responding to my queries! Most importantly, the bouquet is fresh and stunning! I'm definitely keeping them in my favourite list for florist!!!</p>
        <div class="user">
            <img src="Images/r1.jfif" alt="">
            <div class="user-info">
                <h3>Mr. Ali Abhaya</h3>
                <span>cheerful customer</span>
            </div>
        </div>

        <span class="fas fa-quote-right"></span>
    </div>
    </div>
    </section>
 <section class="review">
<h1 class="heading" style="color:cornflowerblue;background:Lightblue"><a href="reviewadd.aspx"><span style="color:steelblue">ADD </span>REVIEW</a></h1>

</section>
<section class="review">
        <h1 class="heading" style="color:cornflowerblue;background:Lightblue"><a href="reviews.aspx"><span style="color:steelblue">CLICK TO SEE </span>MORE REVIEWS</a></h1>

</section>

  
</body>
</html>

</asp:Content>
