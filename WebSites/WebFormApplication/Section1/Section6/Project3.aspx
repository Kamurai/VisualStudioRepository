<%@ Page Title="MySQL Programming" Language="C#" MasterPageFile="~/Section1/Section6/Template.master" AutoEventWireup="true"
    CodeFile="Project3.aspx.cs" Inherits="_Project1_6_3" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

<h1>
	MySQL Programming
</h1>
<p id="idCenterContent">
	This section is dedicated to MySQL programming.
</br>
</br>
    MySQL Instance
    </br>
    </br>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MySQLConnectionString %>" SelectCommand="SELECT * FROM test" ProviderName="<%$ ConnectionStrings:MySQLConnectionString.ProviderName %>">
    </asp:SqlDataSource>
    </br>
    </br>
    <asp:GridView
          id="GridView1"
          runat="server"
          DataSourceID="SqlDataSource1">
    </asp:GridView>

</asp:Content>

<asp:Content ID="VersionContent" runat="server" ContentPlaceHolderID="VersionContent">
    <a href="http://htkb.dyndns.org/Section1/Section6/Project3.html">HTML</a></br>
	<a href="http://htkb.dyndns.org/Section1/Section6/Project3.php">PHP</a></br>
	<a href="http://htkb.dyndns.org/Javascript/Section1/Section6/Project3.html">HTML Javascript</a></br>
	<a href="http://htkb.dyndns.org:81/ASP/Section1/Section6/Project3.asp">ASP Javascript</a></br>
	<a href="http://htkb.dyndns.org:81/ASPNET/Section1/Section6/Project3.aspx">ASP.NET Javascript</a></br>
	<a href="http://htkb.dyndns.org/Section1/Section6/Project3.shtml">Perl</a></br>
	<a href="http://htkb.dyndns.org:8080/JSPApplication/Section1/Section6/Project3.jsp">JSP</a></br>
	<a href="http://htkb.dyndns.org:8080/JSFApplication/Section1/Section6/Project3.xhtml">JSF</a></br>
	<a href="http://htkb.dyndns.org:81/WebApplication/Section1/Section6/Project3.cshtml">ASP.NET Web App</a></br>
	<a href="http://htkb.dyndns.org:81/MVC/Section1/Section6/Project3">ASP.NET MVC App</a></br>
	<a href="http://htkb.dyndns.org/SSI/Section1/Section6/Project3.html">Apache SSI</a></br>
</asp:Content>