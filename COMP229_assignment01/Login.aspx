<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="COMP229_assignment01.Login" MasterPageFile="~/MasterPage.master" %>

<asp:Content runat="server" ContentPlaceHolderID="contentPlaceHolder">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">

				<asp:Login ID="Login1" runat="server">
					<ValidatorTextStyle CssClass="alert alert-danger"></ValidatorTextStyle>
					<InstructionTextStyle Font-Italic="True" ForeColor="Black" />
					<LoginButtonStyle CssClass="btn btn-primary" />
					<TextBoxStyle CssClass="form-control" />
					<TitleTextStyle />
				</asp:Login>

			</div>
		</div>
	</div>

</asp:Content>
