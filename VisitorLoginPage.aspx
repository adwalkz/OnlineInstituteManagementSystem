<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VisitorLoginPage.aspx.cs" Inherits="AkaarInstitute.VisitorLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title> Login | akaarinstitute.ac.in</title>

        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="author" content="ADITYA JAIN"/>

        <style>
            body {
                font-family: sans-serif;
                background-color: #2a2a2a!important;
            }

            button {
                width: 40%;
                margin: 5px 0 25px;
            }

                .btn {
                    background-color: #27c2a5!important;
                    color: #fff!important;
                    font-size: 19px;
                    padding: 7px 14px;
                    border-radius: 5px;
                    border-bottom: 4px solid #219882;
                    resize: both;
                }
                .btn:hover, .btn:focus {
                        background-color: #25a890!important;
                }
        </style>
        <link rel="stylesheet" href="Source/css/MasterStyle.css" />
    </head>

    <body>
        <hr class="w-25 mx-auto" />
        <section>
            <div class="container mb-5">
                <div class="row text-center">
                    <div class="col-lg-4 col-md-4 col-12">
                        <div class="card">
                            <img class="card-img-top" src="Source/img/Icon/userlogin.jpg" />
                            <div class="card-body">
                                 <form id="Form1" runat="server" class="col-12">
                                    <div class="card-text mb-2">
                                        <asp:DropDownList ID="UserType" runat="server">
                                            <asp:ListItem>Student</asp:ListItem>
                                            <asp:ListItem>Teacher</asp:ListItem>
                                            <asp:ListItem>Attendant</asp:ListItem>
                                            <asp:ListItem>Admin</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="mb-2">
                                         <asp:TextBox ID="UserName" runat="server" type="text" class="form-control" placeholder="Enter Username" MaxLength="30"></asp:TextBox>
                                    </div>
                                    <div class="mb-2">
                                         <asp:TextBox ID="UserPassword" runat="server" type="password" class="form-control" placeholder="Enter Password" MaxLength="8"></asp:TextBox>
                                    </div>
                                    <div class="mb-2">
                                         <asp:Button ID="Button1" runat="server" Text="Login" class="btn"  Width="118px" OnClick="Button1_Click"/>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4 col-12">
                        <div class="card">
                            <%--<img class="card-img-top" src="Source/img/Teachers/aditya.jpg" />--%>
                            <div class="card-body">
                                <h1 class="card-title">LOGIN PAGE</h1>
                                <h3 class="card-title">SELECT USER TYPE AND ENTER CORRECT USERNAME AND PASSWORD</h3>
                                <h6 class="card-title">Note: This is a formal page of our institute. Only registered users are allowed.</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <footer id="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 footer-info">
                            <h3>Akaar Educational Services Limited</h3>
                            <p></p>
                        </div>
                        <div class="col-lg-2 col-md-6 footer-links">
                            <h4>COMPANY</h4>
                            <ul>
                                <li> <a href="VisitorAboutUsPage.aspx">About Us</a></li>
                                <li> <a href="VisitorGallery.aspx">Gallery</a></li>
                                <li> <a href="#">Courses</a></li>
                                <li> <a href="#">Prospectus</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-3 col-md-6 footer-contact">
                            <h4>Reach Us</h4>
                            <p> B-169, street II <br />
                                <strong>PhNo: +91 1234-567-890</strong> <br />
                                <strong>Email: support@akaarinstitute.com</strong>
                            </p>

                            <div class="social-links">
                                <a href="https://twitter.com/adwalkz">
                                    <img src="Source/img/Icon/twitter.jpg" style="height: 35px; width: 34px"/>
                                </a>

                                <a href="https://instagram.com/adwalkz">
                                    <img src="Source/img/Icon/instagram.jpg" style="height: 35px; width: 34px"/>
                                </a>

                                <a href="https://facebook.com/adwalkz">
                                    <img src="Source/img/Icon/facebook.jpg" style="height: 35px; width: 34px"/>
                                </a>

                                <a href="https://github.com/adwalkz">
                                    <img src="Source/img/Icon/github.jpg" style="height: 35px; width: 34px"/>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 footer-student-area">
                            <h4>Student Area</h4>
                            <ul>
                                <li> <a href="VisitorAkaarResult.aspx">Akaar Result</a></li>
                                <li> <a href="Source/pdf/Visitor/Admission.pdf" target="_blank">Admission at Akaar</a></li>
                                <hr class="w-25 mx-auto" />
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong>AKAAR INSTITUTE</strong>. All Rights Reserved
                </div>
                <div class="credits">
                    Designed and Developed by <a href="https://github.com/adwalkz"> ADITYA JAIN </a>
                </div>
            </div>
        </footer>

        <!-- FILES -->
        <link rel="stylesheet" href="Source/css/bootstrap.min.css" />                <!-- BOOTSTRAP FILE -->
        <script type="text/javascript" src="Source/jquery-3.4.1.min.js"></script>    <!-- JQUERY FILE -->
        <script type="text/javascript" src="Source/js/bootstrap.min.js"></script>    <!-- JAVASCRIPT FILE -->
    </body>
</html>
