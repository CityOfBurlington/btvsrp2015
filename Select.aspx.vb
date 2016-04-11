
Partial Class SelectRedirect
    Inherits System.Web.UI.Page

    Protected Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        Response.Redirect("Default.aspx?pid=13")
    End Sub
End Class
