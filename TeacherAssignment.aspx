<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTeacher.Master" AutoEventWireup="true" CodeBehind="TeacherAssignment.aspx.cs" Inherits="AkaarInstitute.TeacherAssignment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 327px;
        }
        .auto-style2 {
            width: 327px;
            height: 32px;
        }
        .auto-style3 {
            height: 32px;
        }
        .auto-style4 {
            width: 327px;
            height: 44px;
        }
        .auto-style5 {
            height: 44px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluide">
            <h1 class="text-center pt-3">ASSIGNMENTS</h1>
            <hr class="w-25 mx-auto" />

            <div class="container">
                <form runat="server">

                    <table class="w-100">
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Class</td>
                            <td>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="202px">
                                    <asp:ListItem>XI</asp:ListItem>
                                    <asp:ListItem>XII</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2"></td>
                            <td class="auto-style3"></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Subject</td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>PHYSICS</asp:ListItem>
                                    <asp:ListItem>CHEMISTRY</asp:ListItem>
                                    <asp:ListItem>MATHS</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Topic Name</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="Topic" runat="server" MaxLength="20"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">File</td>
                            <td>&nbsp;&nbsp;
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4"></td>
                            <td class="auto-style5">
                                <asp:Button ID="Upload" runat="server" Text="Upload" OnClick="Upload_Click" />
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
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
