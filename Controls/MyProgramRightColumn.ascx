﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MyProgramRightColumn.ascx.cs" Inherits="STG.SRP.Controls.MyProgramRightColumn" %>

<%@ Register src="~/Controls/MyPointsControl.ascx" TagPrefix="uc2" TagName="MyPointsControl" %>
<%@ Register Src="~/Controls/LeaderBoardControl.ascx" TagPrefix="uc1" TagName="LeaderBoardControl" %>

<uc2:MyPointsControl ID="MyPointsControl" runat="server" />
<br />
<uc1:LeaderBoardControl runat="server" id="LeaderBoardControl" />

    <div class="secondary-nav">
        <ul class="nav">
            <li><a href="/ReadingLists.aspx" 
                    ><!--<i class="icon-angle-right"></i> Reading Lists <i class="icon-angle-left"></i><br /><small>Reading lists reccommended by our librarians</small></a>-->
                    <i class="icon-angle-right"></i> Book Lists <i class="icon-angle-left"></i><br /><small>Earn badges by reading my library's top picks</small></a></li>
            <li><a href="/Events.aspx" 
                    ><i class="icon-angle-right"><!--</i> Events <i class="icon-angle-left"></i><br /><small>Upcoming events you might be interested in</small></a>-->
                    </i> Events <i class="icon-angle-left"></i><br /><small>Earn badges by going to awesome library programs</small></a></li>
            <li><a href="/MyOffers.aspx" 
                    ><!--<i class="icon-angle-right"></i> Offers <i class="icon-angle-left"></i><br /><small>Coupons and other exclusive offers you might be interested in </small></a>-->
                    <i class="icon-angle-right"></i> Offers <i class="icon-angle-left"></i><br /><small>Download promo coupons from select community partners</small></a></li>
        </ul>
    </div>

