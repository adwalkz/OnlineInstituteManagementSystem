<%@ Page Title="" Language="C#" MasterPageFile="~/MasterStudent.Master" AutoEventWireup="true" CodeBehind="CmnCompnFeed.aspx.cs" Inherits="AkaarInstitute.StudentComplains" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 327px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluide">
            <h1 class="text-center pt-3">
                <asp:Label ID="Act" runat="server" Text=""></asp:Label>
                </h1>
            <hr class="w-25 mx-auto" />
        </div>

        <div class="container">
            <form runat="server">

                <table class="w-100">
                    <tr>
                        <td class="auto-style1">Hey,
                            <asp:Label ID="User" runat="server" Text=""></asp:Label>
                            .<br />
                            <asp:Label ID="Text" runat="server" Text=""></asp:Label>
                            </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Lab" runat="server" Text=""></asp:Label>
                            <br />
                            </td>
                        <td>
                            <asp:TextBox ID="Box" runat="server" TextMode="MultiLine" Height="66px" Width="299px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>
                            <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="Clear" OnClick="Button2_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>
                            <asp:Label ID="Msg" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </form>
        </div>
    </section>
</asp:Content>
