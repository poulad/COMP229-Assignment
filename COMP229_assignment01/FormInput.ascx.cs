using System;

namespace COMP229_assignment01
{
	public partial class FormInput : System.Web.UI.UserControl
	{
		public string Text
		{
			get { return label.Text; }
			set { label.Text = value; }
		}

		public string Value
		{
			get { return textBox.Text; }
			set { textBox.Text = value; }
		}

		protected void Page_Load(object sender, EventArgs e)
		{

		}
	}
}