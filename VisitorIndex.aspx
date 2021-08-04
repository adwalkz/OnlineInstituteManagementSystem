<%@ Page Title="" Language="C#" MasterPageFile="~/MasterVisitor.Master" AutoEventWireup="true" CodeBehind="VisitorIndex.aspx.cs" Inherits="AkaarInstitute.IndexVisitor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <!-- CAROUSEL START -->
        <div class="carousel slide" data-ride="carousel" id="myCarousel" >

            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="Source/img/Carousel/1_.png" alt="AAKAR INSTITUTE" style="width:100%;" />
                    <div class="carousel-caption">
			            <h3>AKAAR INSTITUTE</h3>
			            <p>since 1995</p>
		            </div>
                </div>
                
                <div class="carousel-item">
                    <img src="Source/img/Carousel/2_.png" alt="AFFORDABLE" style="width:100%;" />
                </div>
                
                <div class="carousel-item">
                    <img src="Source/img/Carousel/3_.png" alt="CBSE TOP 20" style="width:100%;" />
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>

            <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
        <!-- CAROUSEL END -->
    </header>
</asp:Content>
