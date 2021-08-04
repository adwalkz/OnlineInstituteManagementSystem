<%@ Page Title="" Language="C#" MasterPageFile="~/MasterStudent.Master" AutoEventWireup="true" CodeBehind="StudentPaymentPage.aspx.cs" Inherits="AkaarInstitute.StudentPaymentPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 329px;
        }
        .auto-style2 {
            width: 100%;
        }
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluide mb-4">
            <h1 class="text-center pt-3">PAY FEES</h1>
            <hr class="w-25 mx-auto" />

            <div class="container">
                <form runat="server">

                    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" DisplaySideBar="False" FinishCompleteButtonText="Pay" StartNextButtonText="Proceed to Pay" OnFinishButtonClick="Wizard1_FinishButtonClick" FinishPreviousButtonText="" FinishPreviousButtonType="Link">
                        <WizardSteps>
                            <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                                 <table class="w-100">
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">Any Code? Apply here</td>
                                        <td>
                                            <asp:TextBox ID="OfferCode" runat="server" MaxLength="20"></asp:TextBox>
                                            <asp:Button ID="bApply" runat="server" Text="Apply" OnClick="bApply_Click" />
                                            <asp:Label ID="Label1" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                     <tr>
                                         <td class="auto-style1">Number Of Installment(s) Left</td>
                                         <td>
                                             <asp:Label ID="NOI" runat="server" Text=""></asp:Label>
                                         </td>
                                     </tr>
                                    <tr>
                                        <td class="auto-style1">Payable Amount</td>
                                        <td>
                                            <asp:Label ID="PayableLab" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                            <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                                <table class="auto-style2">
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">Card Type</td>
                                        <td>
                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="553px">
                                                <asp:ListItem>Visa</asp:ListItem>
                                                <asp:ListItem>MasterCard</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">Card Number</td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" MaxLength="16"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">Name on Card</td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server" MaxLength="30"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">CVV Number</td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server" type="password" Width="81px" MaxLength="3"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">Expiry Date</td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server" TextMode="Month" Width="154px"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                            <%--<asp:WizardStep ID="WizardStep3" runat="server" Title="Step 3">
                                <table class="auto-style2">
                                    <tr>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">Transaction ID</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td>Note: Keep Transation ID handy for future reference.</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:WizardStep>--%>
                        </WizardSteps>
                    </asp:Wizard>
                </form>
            </div>
        </div>
    </section>
</asp:Content>
