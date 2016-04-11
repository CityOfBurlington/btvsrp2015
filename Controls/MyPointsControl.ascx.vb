Imports System.Data
Imports System.Data.SqlClient 
Imports STG.SRP.DAL

Partial Class Controls_MyPointsControl
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        'For i As Integer = 0 To Session.Contents.Count - 1
        '    Response.Write("<p>" & Session.Contents.Keys(i).ToString & "=" & Session.Contents.Item(i).ToString & "</p>")
        'Next
        Try
            Dim patron As Patron = Session("Patron")

            ShowUserPoints(patron.PID)
        Catch ex As Exception
            Response.Write(vbCrLf & vbCrLf & vbCrLf & vbCrLf & vbCrLf & "<!--" & vbCrLf & vbCrLf & ex.Message.ToString & vbCrLf & vbCrLf & "-->" & vbCrLf & vbCrLf & vbCrLf & vbCrLf & vbCrLf)
        End Try
    End Sub

    Private Sub ShowUserPoints(ByVal PatronId As Integer)
        Dim strSQL As String = "SELECT HourMinutesLabel AS Points FROM [uvw_PatronRankingsReadingMinutesWeb] WHERE PatronId=" & PatronId.ToString

        Try
            Dim objConn As New SqlConnection(ConfigurationManager.ConnectionStrings("SRPDBConn").ToString())
            objConn.Open()
            Dim objCommand As New SqlCommand
            Dim objReader As SqlDataReader

            With objCommand
                .Connection = objConn
                .CommandType = CommandType.Text
                .CommandText = strSQL
                objReader = .ExecuteReader()
            End With

            If objReader.HasRows Then
                objReader.Read()

                Me.lblPoints.Text = "Time Read:<br />" & objReader("Points").ToString
            Else
                Me.pnlPatronPoints.Visible = False
            End If

            objReader.Close()
            objReader = Nothing

            objCommand = Nothing

            objConn.Close()
            objConn = Nothing

            Me.pnlPatronPoints.Visible = True
        Catch ex As Exception
            Me.pnlPatronPoints.Visible = False
            Response.Write(vbCrLf & vbCrLf & vbCrLf & vbCrLf & vbCrLf & "<!--" & vbCrLf & vbCrLf & strSQL & vbCrLf & vbCrLf & ex.Message.ToString & vbCrLf & vbCrLf & "-->" & vbCrLf & vbCrLf & vbCrLf & vbCrLf & vbCrLf)
        End Try
    End Sub
End Class
