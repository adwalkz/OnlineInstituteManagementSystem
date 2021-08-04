<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="CmnSearch.aspx.cs" Inherits="AkaarInstitute.AdminDelete" %>

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
                <asp:Label ID="User" runat="server" Text=""></asp:Label> <asp:Label ID="Act" runat="server" Text="SEARCH"></asp:Label> FORM
            </h1>
            <hr class="w-25 mx-auto" />

            <div class="container">
                <form runat="server">

                    <table class="w-100">
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="623px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                    <asp:ListItem>Search by Unique ID?</asp:ListItem>
                                    <asp:ListItem>Search by User Name</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="UnqID" runat="server" Text="Enter Unique ID"></asp:Label>
                                <asp:Label ID="UsrName" runat="server" Text="Enter User Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="InBox" runat="server" AutoPostBack="True" OnTextChanged="InBox_TextChanged"></asp:TextBox>
                                <asp:Label ID="UpdateLab" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                <asp:Button ID="ActBut" runat="server" Text="" OnClick="ActBut_Click" />
                                <asp:Button ID="bReset" runat="server" OnClick="bReset_Click" Text="Reset" />
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
