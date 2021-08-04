<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="AdminOffersPage.aspx.cs" Inherits="AkaarInstitute.AdminOffersPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"><style type="text/css">
    .auto-style1 {
        width: 327px;
    }
    .auto-style2 {
        width: 327px;
        height: 36px;
    }
    .auto-style3 {
        height: 36px;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluide">
            <h1 class="text-center pt-3">OFFERS MANAGEMENT</h1>
            <hr class="w-25 mx-auto" />

            <div class="container">
                <form runat="server">

                    <table class="w-100">
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Offer Name</td>
                            <td>
                                <asp:TextBox ID="OName" runat="server" MaxLength="30"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Promo Code</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="PCode" runat="server" MaxLength="20"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Discount</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="Discount" runat="server" MaxLength="5" Width="91px"></asp:TextBox>
&nbsp;%</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Start From</td>
                            <td>
                                <asp:TextBox ID="Strt" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Ends On</td>
                            <td>
                                <asp:TextBox ID="End" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
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
