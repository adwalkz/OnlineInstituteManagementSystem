<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAttendant.Master" AutoEventWireup="true" CodeBehind="AttendantIndex.aspx.cs" Inherits="AkaarInstitute.AttendantIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 330px;
        }
        .auto-style2 {
            width: 330px;
            height: 31px;
        }
        .auto-style3 {
            height: 31px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluide">
            <h1 class="text-center pt-3">WELCOME</h1>
            <hr class="w-25 mx-auto" />

            <div class="container">
                <form id="Form1" runat="server">
                    <div class="row text-center">
                        <div class="col-lg-3 col-md-3 col-12">
                            <div class="card">
                                <asp:Image ID="DP" class="card-img-top" runat="server" />
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <asp:Label ID="AName" runat="server" Text=""></asp:Label>
                                    </h4>
                                    <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Edit Profile" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-6">
                            <table class="w-100">
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Unique ID</td>
                                    <td>
                                        <asp:Label ID="UID" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Date of Join</td>
                                    <td>
                                        <asp:Label ID="DOJ" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Date of Birth</td>
                                    <td>
                                        <asp:Label ID="DOB" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1" colspan="2">
                                        <h1 class="text-center pt-3">STATS</h1>
                                        <hr class="w-25 mx-auto" />
                                    </td>
                                    <td ></td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">New Call Back Request (s)</td>
                                    <td class="auto-style3">
                                        <asp:Label ID="NCB" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Pending Complain (s)</td>
                                    <td>
                                        <asp:Label ID="NOC" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                </table>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <hr class="w-25 mx-auto" />
    </section>
</asp:Content>
