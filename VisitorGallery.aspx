<%@ Page Title="" Language="C#" MasterPageFile="~/MasterVisitor.Master" AutoEventWireup="true" CodeBehind="VisitorGallery.aspx.cs" Inherits="AkaarInstitute.VisitorGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container">
            <h1 class="text-center pt-3">GALLERY</h1>
            <hr class="w-25 mx-auto" />

            <div class="row text-center">
                <div class="col-lg-4 col-md-4 col-12">
                    <div class="card">
                        <img class="card-img-top" src="Source/img/Gallery/Saraswati Pooja/0.jpg" />
                        <div class="card-body">
                            <h4 class="card-title">Saraswati Pooja</h4>
                            <p class="card-text">celebration</p>
                            <a href="#" class="btn btn-primary">see all pictures</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-12">
                    <div class="card">
                        <img class="card-img-top" src="Source/img/Gallery/Diwali Pooja/0.jfif" />
                        <div class="card-body">
                            <h4 class="card-title">Diwali Pooja</h4>
                            <p class="card-text">celebration</p>
                            <a href="#" class="btn btn-primary">see all pictures</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-12">
                    <div class="card">
                        <img class="card-img-top" src="Source/img/Gallery/New Year/0.jfif" />
                        <div class="card-body">
                            <h4 class="card-title">New Year</h4>
                            <p class="card-text">celebration</p>
                            <a href="#" class="btn btn-primary">see all pictures</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr class="w-25 mx-auto" />
    </section>
</asp:Content>
