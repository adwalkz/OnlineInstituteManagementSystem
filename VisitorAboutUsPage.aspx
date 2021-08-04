<%@ Page Title="" Language="C#" MasterPageFile="~/MasterVisitor.Master" AutoEventWireup="true" CodeBehind="VisitorAboutUsPage.aspx.cs" Inherits="AkaarInstitute.AboutUsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluide">
            <h1 class="text-center pt-3">AKAAR INSTITUTE</h1>
            <hr class="w-25 mx-auto" />

            <div class="container">
                <p>
                    <strong> Aakar Institute </strong> is one of the prestigious institute of INDIA. We prepare our students to crack CBSE Examination and high competative level Examination like JEE.
                    We are celebrating our <strong> SILVER JUBLIEE </strong> this year. The name itself a trust. We here shape future of our students. Secondly our result says it all. <br />
                    Check our result <a href="VisitorAkaarResult.aspx">here</a>
                </p>
            </div>
        </div>
    </section>

    <section>
        <div class="container-fluide">
            <h1 class="text-center pt-3">OUR WORLD CLASS FACULTY</h1>
            <hr class="w-25 mx-auto" />

            <div class="container">
                <p>
                    Aakar Institute is proude of it's WORLD CLASS FACULTY.
                </p>

                <div class="row text-center">
                    <div class="col-lg-4 col-md-4 col-12">
                        <div class="card">
                            <img class="card-img-top" src="Source/img/Teachers/Dad.jfif" />
                            <div class="card-body">
                                <h4 class="card-title">UPENDER JAIN</h4>
                                <p class="card-text">PHYSICS</p>
                                <%--<a href="#" class="btn btn-primary">see all pictures</a>--%>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4 col-12">
                        <div class="card">
                            <img class="card-img-top" src="Source/img/Teachers/Mom.jfif" />
                            <div class="card-body">
                                <h4 class="card-title">KAVITA JAIN</h4>
                                <p class="card-text">CHEMISTRY</p>
                                <%--<a href="#" class="btn btn-primary">see all pictures</a>--%>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4 col-12">
                        <div class="card">
                            <img class="card-img-top" src="Source/img/Teachers/RajeshSir.jfif" />
                            <div class="card-body">
                                <h4 class="card-title">RAJESH KUSHWAHA</h4>
                                <p class="card-text">MATHS</p>
                                <%--<a href="#" class="btn btn-primary">see all pictures</a>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr class="w-25 mx-auto" />
    </section>
</asp:Content>
