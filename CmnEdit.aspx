<%@ Page Title="" Language="C#" MasterPageFile="~/MasterStudent.Master" AutoEventWireup="true" CodeBehind="CmnEdit.aspx.cs" Inherits="AkaarInstitute.CmnEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluide">
            <h1 class="text-center pt-3">
                <asp:Label ID="Action" runat="server" Text=""></asp:Label> PROFILE
            </h1>
            <hr class="w-25 mx-auto" />

            <div class="container">
                <form id="form1" runat="server">

                    <table class="w-100">
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>DP</td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                <asp:Label ID="OR" runat="server" Text="or"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Set Default" OnCheckedChanged="CheckBox1_CheckedChanged" />
                                <div class="row text-center">
                                    <div class="col-lg-3 col-md-3 col-6">
                                        <div class="card">
                                            <asp:Image ID="DP" class="card-img-top" runat="server" />
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Name</td>
                            <td>
                                <asp:TextBox ID="Name" runat="server" MaxLength="30"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Gender</td>
                            <td>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="220px">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>DOB</td>
                            <td>
                                <asp:TextBox ID="DOB" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Contact</td>
                            <td>
                                <asp:TextBox ID="Con1" runat="server" MaxLength="10"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="Con2" runat="server" MaxLength="10"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>
                                <asp:TextBox ID="EMail" runat="server" MaxLength="320"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td>
                                <asp:TextBox ID="Addr" runat="server" Height="94px" MaxLength="100" TextMode="MultiLine" Width="477px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>User Name</td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="bUpdate" runat="server" Text="Update Changes" OnClick="bUpdate_Click" />
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="bEdit" runat="server" Text="Edit this Record" OnClick="bEdit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="bDel" runat="server" Text="Delete this Record" OnClick="bDel_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                </form>
            </div>
        </div>
    </section>
</asp:Content>
