<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="WebProject.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
<html>
    <style>
        table, th {
          border:1px lightgreen;
        }
        </style>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="blog.css">
</head>
<body style="background-color:paleturquoise">
   
    <section class="about" id="about">
        <div class="row">
            <div class="video-container">
                <div >
                <video src="blog1.mp4" loop autoplay muted></video></div>
            </div>
        
            <div class="content">
                <h3>Grow of Flower & Tips</h3>
                <p>Ralph Waldo Emerson once said, "The Earth laughs in flowers." Make your home or garden a joyous and bright place to be by planting flowers--nature's own way of showing happiness. Follow these steps to make your favorite locations blissful with the addition of flowers.
                </p>
                <p>Did you know there are over 400,000 plant species across the world? In other words, that's more than the number of bird, butterfly and bee species, combined! While many flowers grow naturally in forests, grasslands, deserts and tundras, growing your own garden or picking up some unique flowers is a great way to create your own oasis.

                    How do you pick the right type of flowers for your needs? With literally hundreds of thousands to choose from, it can be overwhelming! That’s why we’ve compiled our handy guide below of 151 Most Common Flower Types in the U.S. Wondering how much sun or soil your flower will need? Where it grows best? How to make a fabulous flower bouquet for your indoor table? </p>
                </div>
    
        </div>
    </section>
    

    <section class="about" id="about2">
        <div class="row">
            <div class="image-container">
                <img src="Images/howplant.jpg" width="800" height="500">
                 
            <div class="content">
                <h3>How to Plant Flowers</h3>

                <ol>
                    <li>Planning Your Flower Garden
                        <ul>
                            <li>Get the best soil</li>
                            <li>Select your location</li>
                            <li>Decide on your flowers</li>
                            <li>Plant at the right time</li>
                        </ul>
                    </li>
                    <li>Planting Your Flowers
                        <ul>
                            <li>Dig a hole</li>
                            <li>Get out your flowers</li>
                            <li>Feed your flowers</li>
                      Plant your flowers</li>
                        </ul>
                    </li>
                </ol>

                </div>   
                </div> 
        </div>
    </section>
    




    <section class="about" id="about3">
        <div class="row">
            <div class="image-container">
                <img src="Images/maintain.jfif" style="width: 569px; height: 383px">
                <img src="Images/maintain2.jfif" height="383" style="width: 569px">

            </div>      
            <div class="content">
                <h3>How to Maintain Flowersin Flowers</h3>

                <ol type="A">
                    <li> your flowers regularly. Unless you are experiencing rain on a daily basis, take the time to give water to your flowers. Although individual needs vary based on humidity and the type of plant, it is most common to add several cups of water to each plant by using a watering close to the soil to avoid disturbing the growing flowers or causing soil erosion. You can also have a sprinkler or drip system installed to do the work for you on an automated basis.</li>
               <br> <li>Weed the area. You want your flowers to be the focal point of your little garden plot, so don’t let weeds steal the show! As you see them appear, pull out unsightly weeds from the soil around your flowers. Not only are the weeds unattractive, they take nutrients from the soil and space in the ground that your flowers need to grow healthily.</li>
               <br> <li>Deadhead your flowers. Whenever blooms on your flowers die off or become old and wilted, cut them off. Cutting off the dead blossoms and leaves will stimulate new growth and have your flowers looking even more beautiful than ever.</li>
               <br> <li>Add support. If your flowers are tall growing, over time they may become too heavy to stand on their own. Add bamboo stakes or forked branches upright in the ground for the plants to lean against or wrap around for support. This is particularly helpful and necessary for vine-y flowers which grow by wrapping around things.</li>
           <br> <li>Consider relocating. As you continue to help your flowers grow, they may become too large for the plot you originally chose for them. Consider moving them to a larger location and adding new flowers to their old location. This will keep your garden growing big, healthy, and beautiful.</li>    
            
            
            </ol>
                </div>   
        </div>
    </section>

<section><div class="visit">
    <h3>Visit These Sites</h3>
    <table>
    <tr>
    <th>Site</th>
    <th>Links</th>
   </tr> 
   <tr>
<td><img src="Images/logo1.jpg"></td>
<td><a href="https://www.ftd.com/">Perfect Gift</a></td>
   </tr>

   <tr>
    <td><img src="Images/logo2.png"></td>
    <td><a href="https://www.floweraura.com/sendflowers/gurgaon">Flower Aura</a></td>
       </tr>

       <tr>
        <td><img src="Images/logo3.jpg"></td>
        <td><a href="https://www.bloomandwild.com/">Bloomwild</a></td>
           </tr>

           <tr>
            <td><img src="Images/logo4.jpg"></td>
            <td><a href="https://www.snapblooms.com/">Snapblooms</a></td>
               </tr>

</table>
    </div>
</section>


</body>
</html>
</asp:Content>
