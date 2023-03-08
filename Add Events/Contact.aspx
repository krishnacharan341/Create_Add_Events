<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Add_Events.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Create a list of events in a repeater from a calendar control.</h2>
    <div class="form-group">
        <label>Event Name:</label>
        <asp:TextBox ID="textEvent" CssClass="form-control" runat="server" />
    </div>
    <div class="form-group">
        <label>Event Date:</label>
        <asp:Calendar ID="calendarEvents" runat="server" />
    </div>
    <div class="form-group">
        <asp:Button ID="btnEvent" runat="server" CssClass="btn btn-primary btn-large" Text="Add Event" OnClick="btnEvent_click" />
    </div>
    <h3>Events Repeater.</h3>
    <div>
        <asp:Repeater ID="rptEvents" runat="server">
            <ItemTemplate>
                <h3><%# DataBinder.Eval(Container.DataItem, "EventDate") %><small><%# DataBinder.Eval(Container.DataItem, "EventName") %></small></h3>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
