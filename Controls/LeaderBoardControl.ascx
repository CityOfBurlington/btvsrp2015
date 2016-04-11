<%@ Control Language="VB" AutoEventWireup="false" %>
<div class="pill">
    <table width="100%" style="font-size: smaller;">
		<tr>
			<td colspan="2" align="center"><h4>School Leaderboard</h4></td>
		</tr>
        <asp:Repeater runat="server" ID="rptr" DataSourceID="dsRankings" >
            <ItemTemplate>
                <tr style="border-top: 1px dotted silver; height: 48px;">
                    <td align="left" valign="middle"><%# Eval("SchoolName")%></td>
                    <td align="right" valign="middle" nowrap><%# Eval("Points")%></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>                               
    </table>
</div>
<asp:SqlDataSource runat="server" ID="dsRankings" ConnectionString="<%$ ConnectionStrings: SRPDBConn %>" 
    SelectCommand="SELECT SchoolName, HourMinutesLabel AS Points FROM [uvw_SchoolRankingsReadingMinutesWeb] WHERE ProgramId=@ProgramID ORDER BY NumMinutes DESC"> 
    <SelectParameters>
        <asp:SessionParameter Name="ProgramID" SessionField="ProgramID" />
    </SelectParameters>
</asp:SqlDataSource>