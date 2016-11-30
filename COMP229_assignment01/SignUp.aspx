<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="COMP229_assignment01.Register" MasterPageFile="~/MasterPage.master" %>

<asp:Content runat="server" ContentPlaceHolderID="contentPlaceHolder">
	<asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
		<WizardSteps>
			<asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
			</asp:CreateUserWizardStep>
			<asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
			</asp:CompleteWizardStep>
		</WizardSteps>
	</asp:CreateUserWizard>
</asp:Content>