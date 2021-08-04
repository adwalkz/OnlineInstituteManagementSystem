<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="AdminIndex.aspx.cs" Inherits="AkaarInstitute.AdminIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 328px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluide">
            <h1 class="text-center pt-3">STATS</h1>
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
                            <td class="auto-style1">Number Of Students Enrolled</td>
                            <td>
                                <asp:Label ID="NOS" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Number Of Faculties</td>
                            <td>
                                <asp:Label ID="NOF" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Number of Attendant</td>
                            <td>
                                <asp:Label ID="NOA" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
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

    <section>
        <div class="container">
            <table class="w-100">
                <tr>
                    <td class="auto-style1">Number of Pending Complains</td>
                    <td>
                                <asp:Label ID="PCom" runat="server"></asp:Label>
                            </td>
                </tr>
                <tr>
                    <td class="auto-style1">Number of Pending CallBack</td>
                    <td>
                        <asp:Label ID="PCB" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </section>
</asp:Content>
