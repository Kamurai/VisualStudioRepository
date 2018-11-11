﻿<%@ Page Title="Minecraft!" Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true"
    CodeFile="Minecraft.aspx.cs" Inherits="_Minecraft" %>
	<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
	<h2>
		Minecraft!
	</h2>

	<div id="idCenterContent">
		If you would like to play Minecraft with us, we have several different servers:</br>
			Mo Creatures Server: (1.7.10) htkb.dyndns.org:25565</br>
			Creative Server:     (1.7.10) htkb.dyndns.org:25567</br>
				This is a list of mods that we are using on the server, compatible with 1.7.10.</br>
					<a href='./Downloads/Minecraft/forge-1.7.10-10.13.3.1401-1710ls-installer.jar'>Forge 1.7.10</a></br>
					<a href='./Downloads/Minecraft/DrZharks MoCreatures Mod v6.3.1.zip'>Dr Zhark's Mo Creatures</a></br>
					<a href='./Downloads/Minecraft/CustomMobSpawner 3.3.0.zip'>Custom Mob Spawner</a></br>
					<a href='./Downloads/Minecraft/[1.7.10]Gender-1.0.2.jar'>iPixeli's Gender Mod</a></br>
					<a href='./Downloads/Minecraft/BspkrsCore-1.7.10.jar'>Bspkrs Core</a></br>
					<a href='./Downloads/Minecraft/[1.7.10]Treecapitator-universal-2.0.4.jar'>Tree Capitator</a></br>
					<a href='./Downloads/Minecraft/MoarFood-5.8.0.jar'>Moar Food</a></br>
					<a href='./Downloads/Minecraft/MoarOres-2.4.5.jar'>Moar Ores</a></br>
					<a href='./Downloads/Minecraft/BiblioCraft[v1.10.4][MC1.7.10].jar'>Biblio Craft</a></br>
					<a href='./Downloads/Minecraft/Fossils_Archeology_Revival-1.7.10_Build-6.4b.jar'>Fossils and Archaeology</a></br>
					<a href='./Downloads/Minecraft/Reis-Minimap-Mod-1.7.10.jar'>Rei's Minimap</a></br>
					<a href='./Downloads/Minecraft/Xaeros_Minimap_1.10.8_Forge_1.7.10.jar'>Xaero's Minimap</a></br>
			Vanilla Server:      htkb.dyndns.org:25566</br>
			Here is a skin template to make custom skins:</br>
			<a href='./Downloads/Minecraft/skin_template.png'>Steve skin template</a></br>

	<br/>
	<br/>
		For first time setups, please follow these steps to make your client compatible with the server:</br>
			 0) If you don't have Minecraft, go to Minecraft.net and download the latest version of the launcher.</br>
			 1) From the launcher create a new profile and change its version to the relevant version (e.g. 1.7.10).</br>
			 2) Save the Profile, select the new profile and click play.</br>
			 3) Exit the program.</br>
			 4) Install Forge.  If it is not automatically selected, then browse to your .minecraft folder.</br>
			 Windows: It is in a hidden folder: c:\Users\*Username*\Appdata\Roaming\.minecraft</br>
			 Mac: "Go to" ~/Library/Application Support/minecraft</br>
			 5) If you are managing multiple non-compatible mods, then you man have to make folders like:</br>
			 "..\Roaming\MoCreatures"</br>
			 6) If your folder doesn't have a /Mods folder, create one. Place the files from the mod list into the /mods folder.</br>
			 Even if it works, don't put two minimap mods in the same folder.</br>
			 7) Open the Minecraft Launcher, edit your version (e.g. 1.7.10) profile to use the forge version of the same.</br>
			 8) If you are using a different folder, then remember to change the Game Directory in the profile.</br>
			 9) Save the Profile, select the new profile and click play.</br>
			10) You should see the mods listed on the side of the Minecraft window.</br>
			11) Go to multiplayer and click add server.</br>
			12) Name the server something distinct and put "htkb.dyndns.org:2556x" in the address bar where 'x' is the relevant port.</br>
			13) Save the server entry.  You should see a connection to the server.  Double click to join.</br>
	</div>
</asp:Content>

<asp:Content ID="VersionContent" runat="server" ContentPlaceHolderID="VersionContent">
    <a href="http://htkb.dyndns.org/Minecraft.html">HTML</a></br>
	<a href="http://htkb.dyndns.org/Minecraft.php">PHP</a></br>
	<a href="http://htkb.dyndns.org/Minecraft.shtml">Perl</a></br>
	<a href="http://htkb.dyndns.org/SSI/Minecraft.html">Apache SSI</a></br>
    <a href="http://htkb.dyndns.org/Javascript/Minecraft.html">HTML Javascript</a></br>
	<a href="http://htkb.dyndns.org/JQuery/Minecraft.html">JQuery</a></br>
	<a href="http://htkb.dyndns.org/AngularJS/Minecraft.html">Angular JS</a></br>
	<a href="http://htkb.dyndns.org:8080/JSFApplication/Minecraft.xhtml">JSF</a></br>
	<a href="http://htkb.dyndns.org:8080/JSPApplication/Minecraft.jsp">JSP</a></br>
	<a href="http://htkb.dyndns.org:8080/SpringMVC/Minecraft.jsp">JSP Spring MVC</a></br>
	<a href="http://htkb.dyndns.org:81/ASPNET/Minecraft.aspx">ASP.NET Javascript</a></br>
	<a href="http://htkb.dyndns.org:81/ASP/Minecraft.asp">ASP VBscript</a></br>
	<a href="http://htkb.dyndns.org:81/WebApplication/Minecraft.cshtml">ASP.NET Web App</a></br>
	<a href="http://htkb.dyndns.org:81/MVC/Main/Minecraft">ASP.NET MVC App</a></br>
	<a href="http://htkb.dyndns.org:82/Minecraft">Python Web.py</a></br>
    <a href="http://htkb.dyndns.org:83/Minecraft">Ruby on Rails</a></br>
    <a href="http://htkb.dyndns.org:84/Minecraft">Node JS</a></br>
</asp:Content>