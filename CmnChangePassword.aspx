<%@ Page Title="" Language="C#" MasterPageFile="~/MasterStudent.Master" AutoEventWireup="true" CodeBehind="CmnChangePassword.aspx.cs" Inherits="AkaarInstitute.ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 330px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluide">
            <h1 class="text-center pt-3">CHANGE PASSWORD</h1>
            <hr class="w-25 mx-auto" />

            <div class="container">
                <form runat="server">

                    <table class="w-100">
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Old Password</td>
                            <td>
                                <asp:TextBox ID="OldPass" type="password" runat="server" MaxLength="8"></asp:TextBox>
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">New Password</td>
                            <td>
                                <asp:TextBox ID="TextBox2" type="password" runat="server" MaxLength="8"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Confirm New Password</td>
                            <td>
                                <asp:TextBox ID="NewPass" type="password" runat="server" MaxLength="8"></asp:TextBox>
                                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Done" OnClick="Button1_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                </form>
            </div>
        </div>
    </section>
</asp:Content>
