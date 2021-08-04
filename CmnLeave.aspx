<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAttendant.Master" AutoEventWireup="true" CodeBehind="CmnLeave.aspx.cs" Inherits="AkaarInstitute.AttendantLeave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 325px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluide">
            <h1 class="text-center pt-3">APPLY FOR LEAVE</h1>
            <hr class="w-25 mx-auto" />

            <div class="container">
                <form id="form1" runat="server">

                    <table class="w-100">
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>Leave Balance :
                                <asp:Label ID="Lbalance" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">From Date</td>
                            <td>
                                <asp:TextBox ID="FDate" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">To Date</td>
                            <td>
                                <asp:TextBox ID="TDate" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Reason (in Detail)</td>
                            <td>
                                <asp:TextBox ID="Reason" runat="server" Height="56px" Width="531px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Apply" OnClick="Button1_Click" />
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Check Status</asp:LinkButton>
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
