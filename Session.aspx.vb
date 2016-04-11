
Partial Class Session
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        For i As Integer = 0 To Session.Contents.Count - 1
            '    Me.lblTest.Text = Me.lblTest.Text & Session.Contents.Keys(i).ToString & "=" & Session.Contents.Item(i).ToString & "<br />"
        Next


        Me.lblTest.Text =

    End Sub
End Class
