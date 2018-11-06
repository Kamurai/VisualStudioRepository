<%@ Page Title="SQL Server Programming" Language="C#" MasterPageFile="~/Division1/Section1/Template.master" AutoEventWireup="true"
    CodeFile="Project4.aspx.cs" Inherits="_Project1_1_4" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

<h1>
	SQL Server Programming
</h1>
<p id="idCenterContent">
	This section is dedicated to SQL Server programming.
    </br>
    </br>
    SQL Server Instance
    </br>
    </br>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SQLServerConnectionString %>" SelectCommand="SELECT * FROM [Test]">
    </asp:SqlDataSource>
    </br>
    </br>
    <asp:GridView
          id="GridView1"
          runat="server"
          DataSourceID="SqlDataSource1">
    </asp:GridView>
    </br>
    </br>
    SQL Server Express Instance
    </br>
    </br>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SQLServerExpressConnectionString %>" SelectCommand="SELECT * FROM [Test]">
    </asp:SqlDataSource>
    </br>
    </br>
    <asp:GridView
          id="GridView2"
          runat="server"
          DataSourceID="SqlDataSource2">
    </asp:GridView>
    
</div>
    
</asp:Content>

<asp:Content ID="VersionContent" runat="server" ContentPlaceHolderID="VersionContent">
    <a href="http://htkb.dyndns.org/Division1/Section6/Project4.html">HTML</a></br>
	<a href="http://htkb.dyndns.org/Division1/Section6/Project4.php">PHP</a></br>
	<a href="http://htkb.dyndns.org/Division1/Section6/Project4.shtml">Perl</a></br>
	<a href="http://htkb.dyndns.org/SSI/Division1/Section6/Project4.html">Apache SSI</a></br>
    <a href="http://htkb.dyndns.org/Javascript/Division1/Section6/Project4.html">HTML Javascript</a></br>
	<a href="http://htkb.dyndns.org/JQuery/Division1/Section6/Project4.html">JQuery</a></br>
	<a href="http://htkb.dyndns.org/AngularJS/Division1/Section6/Project4.html">Angular JS</a></br>
	<a href="http://htkb.dyndns.org:8080/JSFApplication/Division1/Section6/Project4.xhtml">JSF</a></br>
	<a href="http://htkb.dyndns.org:8080/JSPApplication/Division1/Section6/Project4.jsp">JSP</a></br>
	<a href="http://htkb.dyndns.org:8080/SpringMVC/Division1/Section6/Project4.jsp">JSP Spring MVC</a></br>
	<a href="http://htkb.dyndns.org:81/ASPNET/Division1/Section6/Project4.aspx">ASP.NET Javascript</a></br>
	<a href="http://htkb.dyndns.org:81/ASP/Division1/Section6/Project4.asp">ASP VBscript</a></br>
	<a href="http://htkb.dyndns.org:81/WebApplication/Division1/Section6/Project4.cshtml">ASP.NET Web App</a></br>
	<a href="http://htkb.dyndns.org:81/MVC/Main/Division1/Section6/Project4">ASP.NET MVC App</a></br>
	<a href="http://htkb.dyndns.org:82/Division1/Section6/Project4">Python Web.py</a></br>
    <a href="http://htkb.dyndns.org:83/Division1/Section6/Project4">Ruby on Rails</a></br>
    <a href="http://htkb.dyndns.org:84/Division1/Section6/Project4">Node JS</a></br>
</asp:Content>