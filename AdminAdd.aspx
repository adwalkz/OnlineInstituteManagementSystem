<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="AdminAdd.aspx.cs" Inherits="AkaarInstitute.AdminStudentPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 327px;
        }
        .auto-style2 {
            width: 327px;
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
            <h1 class="text-center pt-3">
                <asp:Label ID="User" runat="server" Text="STUDENT"></asp:Label> REGISTRATION FORM
            </h1>
            <hr class="w-25 mx-auto" />

            <div class="container">
                <form id="form1" runat="server">
                    <asp:Wizard ID="Wizard1" runat="server" DisplaySideBar="False" ActiveStepIndex="0" OnActiveStepChanged="Wizard1_ActiveStepChanged" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" FinishPreviousButtonText="" FinishPreviousButtonType="Link">
                        <WizardSteps>
                            <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                                <table class="w-100">
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">Name</td>
                                        <td>
                                            <asp:TextBox ID="Name" runat="server" MaxLength="30"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">Date Of Birth (yyyy/mm/dd)</td>
                                        <td>
                                            <asp:TextBox ID="DOB" runat="server" TextMode="Date"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">Gender</td>
                                        <td class="auto-style3">
                                            <asp:RadioButtonList ID="Gender" runat="server" BorderStyle="None" RepeatDirection="Horizontal" Width="233px">
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">&nbsp;</td>
                                        <td class="auto-style3">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="ClassLab" runat="server" Text="Class"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:RadioButtonList ID="Class" runat="server" BorderStyle="None" RepeatDirection="Horizontal" Width="213px">
                                                <asp:ListItem>XI</asp:ListItem>
                                                <asp:ListItem>XII</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="SubjectLab" runat="server" Text="Subject (s)"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:CheckBoxList ID="Subject" runat="server" RepeatDirection="Horizontal" Width="443px">
                                                <asp:ListItem>Physics</asp:ListItem>
                                                <asp:ListItem>Chemistry</asp:ListItem>
                                                <asp:ListItem>Maths</asp:ListItem>
                                            </asp:CheckBoxList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="BatchLab" runat="server" Text="Batch"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:RadioButtonList ID="Batch" runat="server" RepeatDirection="Horizontal" Width="203px">
                                                <asp:ListItem>Batch 1</asp:ListItem>
                                                <asp:ListItem>Batch 2</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">Contact</td>
                                        <td>
                                            <asp:TextBox ID="Contact1" runat="server" MaxLength="10"></asp:TextBox>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="Contact2" runat="server" MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">Email</td>
                                        <td>
                                            <asp:TextBox ID="Email" runat="server" MaxLength="320"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2"></td>
                                        <td class="auto-style3">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">Address</td>
                                        <td>
                                            <asp:TextBox ID="Address" runat="server" Height="105px" Width="585px" MaxLength="100"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:WizardStep>

                            <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                                <table class="w-100">
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td><h2><strong>
                                            <asp:Label ID="PayDetLab" runat="server" Text="PAYMENT DETAILS"></asp:Label></strong></h2></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="SubFeeLab" runat="server" Text="Subject Fee"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="SubFeeVal" runat="server" Text=""></asp:Label>
                                            &nbsp;<asp:Label ID="Label1" runat="server" Text="per month"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <asp:Label ID="PayLab" runat="server" Text="Pay Type"></asp:Label></td>
                                        <td>
                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="697px">
                                                <asp:ListItem>Yearly</asp:ListItem>
                                                <asp:ListItem>Half-Yearly</asp:ListItem>
                                                <asp:ListItem>Quaterly</asp:ListItem>
                                                <asp:ListItem>Monthly</asp:ListItem>
                                            </asp:RadioButtonList>
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
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td><h2><strong>LOGIN DETAILS</strong></h2></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">Your Unique ID is </td>
                                        <td>
                                            <asp:Label ID="Uid" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">
                                            Set User Name</td>
                                        <td class="auto-style7">
                                            <asp:TextBox ID="UserName" runat="server" MaxLength="30"></asp:TextBox>
                                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Use Unique ID as User Name ?" AutoPostBack="True" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">Set Password</td>
                                        <td class="auto-style3">
                                            <asp:TextBox ID="Password" type="password" runat="server" MaxLength="8"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4"></td>
                                        <td class="auto-style5"></td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                        </WizardSteps>
                    </asp:Wizard>
                </form>
            </div>
        </div>
        <hr class="w-25 mx-auto" />
    </section>
</asp:Content>
