<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="COMP229_assignment01.Register" MasterPageFile="~/MasterPage.master" %>

<asp:Content runat="server" ContentPlaceHolderID="contentPlaceHolder">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<asp:CreateUserWizard ID="CreateUserWizard1" runat="server" CreateUserButtonStyle-CssClass="btn btn-success" CreateUserButtonText="Register" AnswerLabelText="Security Answer" CompleteSuccessTextStyle-CssClass="alert alert-info" CssClass="RegistrationWizard" DisplaySideBar="False" ContinueDestinationPageUrl="Default.aspx" TitleTextStyle-CssClass="h3" ContinueButtonStyle-CssClass="btn btn-success" DuplicateUserNameErrorMessage="Please enter a different user name" DuplicateEmailErrorMessage="Email is already taken" ErrorMessageStyle-CssClass="alert alert-danger" FinishCompleteButtonStyle-CssClass="btn btn-success"  ValidatorTextStyle-CssClass="alert alert-danger" RequireEmail="True">
					<WizardSteps>
						<asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" Title="Register new account" >
							<%--<ContentTemplate>
								<div class="h3 text-center">Register a new user</div>
								<dl class="dl-horizontal">
									<dt class="h5 input-required">User name</dt>
									<dd>
										<asp:TextBox runat="server" ID="UserName" CssClass="form-control input-required" />
										<asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1" Display="None" />
									</dd>
									<dt class="h5 input-required">Password</dt>
									<dd>
										<asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control input-required" />
										<asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required" ToolTip="Password is required" ValidationGroup="CreateUserWizard1" Display="None" />
										<asp:RegularExpressionValidator runat="server" ControlToValidate="Password" ValidationExpression="^.{6,}$" ErrorMessage="Password is at least 6 characters long" ValidationGroup="CreateUserWizard1" Display="None"/>
									</dd>
									<dt class="h5 input-required">Confirm password</dt>
									<dd>
										<asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control input-required" />
										<asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required" ToolTip="Confirm Password is required" ValidationGroup="CreateUserWizard1" Display="None" />
										<asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="None" ErrorMessage="Passwords do not match!" ValidationGroup="CreateUserWizard1" />
									</dd>
									<dt class="h5 input-required">Email</dt>
									<dd>
										<asp:TextBox runat="server" ID="Email" TextMode="Email" CssClass="form-control input-required" />
										<asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
											ErrorMessage="Email is required" ToolTip="Email is required" ValidationGroup="CreateUserWizard1" Display="None" />
									</dd>
									<dt class="h5 input-required">Security Question</dt>
									<dd>
										<asp:TextBox runat="server" ID="Question" CssClass="form-control input-required" />
										<asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question"
											ErrorMessage="Security question is required" ToolTip="Security question is required" ValidationGroup="CreateUserWizard1" Display="None" />
									</dd>
									<dt class="h5 input-required">Security Answer</dt>
									<dd>
										<asp:TextBox runat="server" ID="Answer" CssClass="form-control input-required" />
										<asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer"
											ErrorMessage="Security question is required" ToolTip="Security question is required" ValidationGroup="CreateUserWizard1" Display="None" />
									</dd>
									<dt></dt>
									<dd>
										<asp:CheckBox ID="RememberCheckBox" runat="server" Checked="False" Text="Remember me" />
									</dd>
								</dl>

								<asp:ValidationSummary runat="server" ValidationGroup="CreateUserWizard1" CssClass="alert alert-danger" />

							</ContentTemplate>--%>

						</asp:CreateUserWizardStep>
					</WizardSteps>
				</asp:CreateUserWizard>
			</div>
		</div>
	</div>
</asp:Content>
