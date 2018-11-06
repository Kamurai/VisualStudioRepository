<%@ Page Title="MySQL Programming" Language="C#" MasterPageFile="~/Division1/Section1/Template.master" AutoEventWireup="true"
    CodeFile="Project3.aspx.cs" Inherits="_Project1_1_3" %>

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
    <a href="http://htkb.dyndns.org/Division1/Section6/Project3.html">HTML</a></br>
	<a href="http://htkb.dyndns.org/Division1/Section6/Project3.php">PHP</a></br>
	<a href="http://htkb.dyndns.org/Division1/Section6/Project3.shtml">Perl</a></br>
	<a href="http://htkb.dyndns.org/SSI/Division1/Section6/Project3.html">Apache SSI</a></br>
	<a href="http://htkb.dyndns.org/Javascript/Division1/Section6/Project3.html">HTML Javascript</a></br>
	<a href="http://htkb.dyndns.org/JQuery/Division1/Section6/Project3.html">JQuery</a></br>
	<a href="http://htkb.dyndns.org/AngularJS/Division1/Section6/Project3.html">Angular JS</a></br>
	<a href="http://htkb.dyndns.org:8080/JSFApplication/Division1/Section6/Project3.xhtml">JSF</a></br>
	<a href="http://htkb.dyndns.org:8080/JSPApplication/Division1/Section6/Project3.jsp">JSP</a></br>
	<a href="http://htkb.dyndns.org:8080/SpringMVC/Division1/Section6/Project3.jsp">JSP Spring MVC</a></br>
	<a href="http://htkb.dyndns.org:81/ASPNET/Division1/Section6/Project3.aspx">ASP.NET Javascript</a></br>
	<a href="http://htkb.dyndns.org:81/ASP/Division1/Section6/Project3.asp">ASP VBscript</a></br>
	<a href="http://htkb.dyndns.org:81/WebApplication/Division1/Section6/Project3.cshtml">ASP.NET Web App</a></br>
	<a href="http://htkb.dyndns.org:81/MVC/Main/Division1/Section6/Project3">ASP.NET MVC App</a></br>
    <a href="http://htkb.dyndns.org:82/Division1/Section6/Project3">Python Web.py</a></br>
    <a href="http://htkb.dyndns.org:83/Division1/Section6/Project3">Ruby on Rails</a></br>
    <a href="http://htkb.dyndns.org:84/Division1/Section6/Project3">Node JS</a></br>
</asp:Content>