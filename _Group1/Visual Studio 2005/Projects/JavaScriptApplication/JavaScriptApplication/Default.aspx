<%@Page Language="JScript" %>
<%@Import Namespace="Resources" %>
<%@Import Namespace="System.Globalization"%>
<%@Import Namespace="System.Resources"%>
<%@Import Namespace="System.Threading"%>
<%@Import Namespace="System.DirectoryServices" %>
<%@Import Namespace="Ent.Web.Authentication"%>
<%@Import Namespace="Ent.Authentication"%>
<%@Import Namespace="System.Collections"%>
<%@Import Namespace="System.Web"%>

<% 
	if (Request.LogonUserIdentity != null)
    {
		g_strNTName = Request.LogonUserIdentity.Name;
    }
	if(Session["TermsAccepted"] != null ){
		Session["TermsAccepted"] = null;
	}
    pc = new PageContext(Application, Request, Response, Server, Session);
    pc.LocalResourceFiles.Add("L_SYS_common");
    pc.LocalResourceFiles.Add("L_SYS_login");
    pc.Constants.Execute();
	pc.Logger.Trace("Entering SYS_Login.aspx");
	if(Session["AuthMethod"])
    {
        g_nAuthMethodId = Session["AuthMethod"];
    }
	var showLMLogin = pc.Util.SYS_UTL_RequestString("ShowLMLogin");
	
	if(showLMLogin != undefined)
	{
		pc.Session["showLMLogin"] = showLMLogin;
	}
//
// Variables are considered global (g_<name>) if they
// are defined in one file and used in other files that
// are included into the page, but the variable is not
// passed as a parameter.
//
// Variables are considered local if they are defined
// and used within the same file.
//
    
    //
    // Fix for bug#47351
    // Does not cache this page, even if for use by the same client
    //
    
    Response.CacheControl = "no-cache";
    g_nSilentAuthEnabled = Application["Config"].GetInteger( "App", "SLCommonSettings", "EnableSilentLogOn", 0);    
 
 // Bhanu - APHL dt: 
    g_nCommonSettingsFlag = Application["Config"].GetInteger( "App", "SLCommonSettings", "EnableCommonSettings", 0);
 // ENd Bhanu - APHL 
 
 //McAfee SoW #5 SAML SSO Enhancement Oct-19-2012

 
  
       if( g_nAuthMethodId == ObjConstants.AUTH_SAML )
            {
               strSAMLReqType=pc.Login.SYS_Login_GetSAMLData("ReqAuthURL");
			   strSAMLRelayFormat = pc.Login.SYS_Login_GetSAMLData("SAMLRelayStateFormat");
             
            }
     //
     //Changes done for Talent Management Integration
     //For Integrated TM-LM installation, all the requests come via talent management system.
     //So if a user has already been authenticated, do not try to authenticate again(and hit TM auth web svc)
     //in order to improve performance. 
     //
     
     if(pc.Util.SYS_UTL_IsIFrameMode() && (pc.Session["UserIsLoggedIn"] == true) 
     && (pc.Session["TMSessionId"] ==  pc.Util.SYS_UTL_QueryString("sessionid", "", true, true)) && 
     (pc.Util.SYS_UTL_QueryString("viewempid", "", true, true) == pc.Session["ViewEmpID"]))
     {
         if( pc.LoginData.g_strRU.length > 0 )
            {
                Response.Clear();
                if  ( pc.LoginData.g_strRU.indexOf("http") == 0)
                {
                    Response.Redirect(pc.LoginData.g_strRU,false);
					return;
                }
                else
                {
                    Response.Redirect(pc.Util.SYS_UTL_GetServerPrefix() + pc.LoginData.g_strRU,false);
					return;
                }
            }
     }
     
     if(!pc.Session["FallBackAuth"] || pc.Session["UserIsLoggedIn"] == false)
    {
        pc.Session["FallBackAuth"] = false;
    }

    if  ( pc.Login.SYS_Login_AspenIsNotInstalled() )
    {
        pc.LoginData.g_bLoginMayProceed = false;
        pc.LoginUI.SYS_Login_UI_AppNotInstalled();
        //Response.End();
		HttpContext.Current.ApplicationInstance.CompleteRequest();
    }
//CONDITIONAL:if ( @ENABLE_TRY_CATCH == true )
    try
    {
//CONDITIONAL:end
		pc.LoginData.strAspPage =  pc.Util.SYS_UTL_GetPagePath("SYS_Login.aspx");
		
		if  (!(parseInt(pc.Util.SYS_UTL_GetCWD()) == 0))
		{
		    pc.LoginData.g_EncDomainId = pc.CDSCrypto._CDS_Crypt_Encrypt(pc.Util.SYS_UTL_GetCWD());
		}
        else if(pc.LoginData.g_EncDomainId == 0)
        {
		    pc.LoginData.g_EncDomainId = pc.CDSCrypto._CDS_Crypt_Encrypt(-1);
        }
    
        if  (pc.CDSCrypto._CDS_Crypt_IsEncrypted(pc.LoginData.g_EncDomainId))
        {
            pc.LoginData.g_strDomainId = pc.CDSCrypto._CDS_Crypt_Decrypt(pc.LoginData.g_EncDomainId);	
		}
		else
        {
            Response.Write(L_SYS_login.Error_InValidURL);
            //Response.End();
			HttpContext.Current.ApplicationInstance.CompleteRequest();
        }

        pc.LoginData.g_strDomainId = parseInt(pc.LoginData.g_strDomainId,10);

        if  (isNaN(pc.LoginData.g_strDomainId))
        {
            Response.Write(L_SYS_login.Error_InValidURL);
            //Response.End();
			HttpContext.Current.ApplicationInstance.CompleteRequest();
        }

        pc.Login.SYS_Login_Configure();

        if ( Application["CFRSchemaInstalled"] == -1 )
        {
              pc.Util.SYS_UTL_CFRSchemaInstalled();
        }

        //
        // Special case of setting the language for login page
        //
        // Donot set the language for guest users
        //
        if(String(pc.AspenUserCookie.GetValue("Lang")) == "undefined" && pc.LoginData.g_strGuestLogon == 0)
        {
			g_strLangBestMatch = pc.Login.SYS_Login_LangDoRedirect();
       
            if(String(g_strLangBestMatch) != "default" && String(g_strLangBestMatch) != "undefined" && g_strLangBestMatch != "" )
        {
                pc.AspenUserCookie.SetValue("Lang", g_strLangBestMatch );
				pc.Util.SYS_UTL_SetLangCode(String(pc.AspenUserCookie.GetValue("Lang")));
				Thread.CurrentThread.CurrentUICulture = new CultureInfo(pc.Util.SYS_UTL_GetLangCode());
			}
            else
             pc.AspenUserCookie.SetValue("Lang", String(Thread.CurrentThread.CurrentUICulture.Name));
        }
      
        if(pc.LoginData.g_strPortalRUParamName != "" && pc.LoginData.g_strPortalRUParamVal != "")
		{
		    pc.AspenUserCookie.SetValue(pc.LoginData.g_strPortalRUParamName, pc.LoginData.g_strPortalRUParamVal);
		}			
      
        pc.Util.SYS_UTL_SetLangCode(String(pc.AspenUserCookie.GetValue("Lang")));
       
        //Response.Write("User" + String(Request.Cookies("AspenUser")("Lang")));
        //Response.End();

        if  ( pc.Login.SYS_Login_SetupNeedsToBeDone() )
        {
            Response.Redirect( pc.Util.SYS_UTL_GetPagePath("webadmin/CFG_Database.aspx?noconnect=true"),false);
			return;
        }

        if  ( pc.Login.SYS_Login_UserIsLoggingOut() )
        {
            Sys_LogIn_UserLoggingOut();
			
			if (g_bSSOLogOff )
				{
					return;
				}
        }


        //
        // Every time the login page is hit reset the login session as the user
        // has to log in again
        //
        Session["UserIsLoggedIn"] = false;

        if (!Session["PassportRedirectURL"])
        {
            Session["PassportReDirectURL"] = Application["Config"].GetString( "App", "Security", "PassportRedirectUrl", "");
        }

        pc.LoginData.g_strPassportRedirectURL = Session["PassportReDirectURL"];

        if (!Session["PassportErrorURL"])
        {
            Session["PassportErrorURL"] = Application["Config"].GetString( "App", "Security", "PassportErrorUrl", "");
        }

        pc.LoginData.g_strPassportErrorURL = Session["PassportErrorURL"];




        //
        // Now go ahead and show the login UI or process the user login
        //
        if  (pc.LoginData.g_strGuestLogon == 0)
        {
            pc.LoginData.g_bIsNTLogin = pc.Login.SYS_Login_IsNTLogin();
        }

        pc.LoginData.g_strAppProblem = pc.Login.SYS_Login_SanityCheck(pc.LoginData.g_bDebugFlag);
        pc.LoginData.g_bLoginMayProceed = ( pc.LoginData.g_strAppProblem.length == 0 );      
        //
        // Log the user on
        //
        if  (   pc.LoginData.g_bLoginMayProceed
            || pc.LoginData.g_objLoginMode.isLocalAdmin() )
        {
            //This is to check for the passport Integration.
            // With the PUID the user name and password is extracted from the Database
            // and depending on weather the user is authorized to login or not the user
            //  is take to the page or login page.
            pc.Login.SYS_Login_PassportPreLogin();
            var nloginResult = pc.Login.SYS_Login_NTIntegrated(g_strNTName);



            if  ( (pc.LoginData.g_strGuestLogon == 0 && (g_nSilentAuthEnabled == 1 || g_nCommonSettingsFlag == 1) && pc.LoginData.g_strReqExit != 1 && !pc.LoginData.g_bIsNTLogin && pc.Session["FallBackAuth"] != true) || (pc.LoginData.g_strGuestLogon == 0 && (g_nSilentAuthEnabled == 1 || g_nCommonSettingsFlag == 1) && nloginResult != 0 && pc.Session["FallBackAuth"] != true))
                {
				//Silent Authnetication Code Start	
				var objAuthResponse : AuthenticationResponse = Sys_Login_SilentLogin();
				// Set the session Variable
				pc.LoginData.g_bAllowLogon = objAuthResponse.Authenticated;	
				pc.Session["FallBackAuth"] = objAuthResponse.IsAuthFallBack;
				//if (objAuthResponse.UserName != null && objAuthResponse.UserName.length > 0)
				if (objAuthResponse.UserName != "undefined" && objAuthResponse.UserName != null && objAuthResponse.UserName != "")
				pc.Session["UserName"] = objAuthResponse.UserName;
				if(pc.LoginData.g_strRU == "" && objAuthResponse.DeepLinkURL != "")
                {
                   pc.LoginData.g_strRU = objAuthResponse.DeepLinkURL;
                }
				
				//created session for eSignatures(value true indicates user logged in through SSO)
				pc.Session["FromSSO"] = objAuthResponse.Authenticated;
		if ( objAuthResponse.IsAuthFallBack != true && pc.Session["showLMLogin"] != "true")
				{  
            // If there is an Redirection URL
				    if (objAuthResponse.RedirectURL != "" && objAuthResponse.RedirectURL != null && pc.LoginData.g_strDeepLinkFallBackAuth != "true" && (!(strSAMLReqType ==  ObjConstants.REQ_SAMLPOST ))  )
	                {  
	                    pc.Logger.Info(" Redirection URL Exists, Redirecting to " + objAuthResponse.RedirectURL);
	                    var strURL = "";
	                    if ( !objAuthResponse.RedirectURL.StartsWith("http"))
						{
	                        pc.Response.Redirect(pc.Util.SYS_UTL_GetPagePath(objAuthResponse.RedirectURL),false);
							return;
						}
	                     else
						 {
	                        pc.Response.Redirect(objAuthResponse.RedirectURL,false);
							return;
						 }
	                        
	                }
	            }	
				//Silent Authentication Code End
                 if  (pc.LoginData.g_bAllowLogon == true)
                 {
                    pc.LoginData.g_strLoginProblem = pc.Login.SYS_Login_DoLogin(pc.LoginData.g_strAppProblem,
                                                  pc.LoginData.g_bIsNTLogin,
                                                  objAuthResponse.UserName,
                                                  pc.LoginData.g_strReqPassword,
                                                  pc.LoginData.g_strReqLogin,
                                                  pc.LoginData.g_strReqShowLogin,
                                                  pc.LoginData.g_strReqChangePwd,
                                                  pc.LoginData.g_strSOrg,
                                                  pc.LoginData.g_strNOrg,
                                                  pc.LoginData.g_bDebugFlag, 
												  g_nSilentAuthEnabled);
                 }
                 else
                {
                     //We are sending g_nSilentAuthEnabled = 0 when username is blank and fallback authentication is true.
                      pc.LoginData.g_strLoginProblem = pc.Login.SYS_Login_DoLogin(pc.LoginData.g_strAppProblem,
                                                  pc.LoginData.g_bIsNTLogin,
                                                  pc.LoginData.g_strReqUserName,
                                                  pc.LoginData.g_strReqPassword,
                                                  pc.LoginData.g_strReqLogin,
                                                  pc.LoginData.g_strReqShowLogin,
                                                  pc.LoginData.g_strReqChangePwd,
                                                  pc.LoginData.g_strSOrg,
                                                  pc.LoginData.g_strNOrg,
                                                  pc.LoginData.g_bDebugFlag,0);
                }
            }
            else if  ( pc.LoginData.g_strGuestLogon == 1  || g_nSilentAuthEnabled == 0 || pc.LoginData.g_bIsNTLogin ||  pc.Session["FallBackAuth"] == true)
            {
                if( pc.Session["FallBackAuth"] == true)
                {
                    pc.LoginData.g_strLoginProblem = pc.Login.SYS_Login_DoLogin(pc.LoginData.g_strAppProblem,
                                                  pc.LoginData.g_bIsNTLogin,
                                                  pc.LoginData.g_strReqUserName,
                                                  pc.LoginData.g_strReqPassword,
                                                  pc.LoginData.g_strReqLogin,
                                                  pc.LoginData.g_strReqShowLogin,
                                                  pc.LoginData.g_strReqChangePwd,
                                                  pc.LoginData.g_strSOrg,
                                                  pc.LoginData.g_strNOrg,
                                                  pc.LoginData.g_bDebugFlag, 0);
                }
                else
                {
                    pc.LoginData.g_strLoginProblem = pc.Login.SYS_Login_DoLogin(pc.LoginData.g_strAppProblem,
                                                  pc.LoginData.g_bIsNTLogin,
                                                  pc.LoginData.g_strReqUserName,
                                                  pc.LoginData.g_strReqPassword,
                                                  pc.LoginData.g_strReqLogin,
                                                  pc.LoginData.g_strReqShowLogin,
                                                  pc.LoginData.g_strReqChangePwd,
                                                  pc.LoginData.g_strSOrg,
                                                  pc.LoginData.g_strNOrg,
                                                  pc.LoginData.g_bDebugFlag, g_nSilentAuthEnabled);
                }
                
                if(pc.LoginData.g_strGuestLogon == 1)
                {
                    Sys_LogIn_UpdateGuestLCID();
                }
            }
          
           
           if(  g_nAuthMethodId == ObjConstants.AUTH_SAML &&
                strSAMLReqType ==  ObjConstants.REQ_SAMLPOST &&
                pc.LoginData.g_strGuestLogon != 1 &&
               pc.Session["FallBackAuth"] != true &&
               objAuthResponse.Authenticated==true ) 
            {   
               Sys_Login_SAMLPOST_Redirect(objAuthResponse);
            }
 if  ( pc.LoginData.g_strLoginProblem.indexOf("RU-") >= 0 )
            {
				//	Fix for the bug #46766 & 46927
				//	We get IsGuestLogin in the RU URL when the guest user logs in and 
				//	tries to Register or Launch any 
				// activity from the Search Page.
				if  ( pc.LoginData.g_strLoginProblem.indexOf("IsGuestLogin") >= 0 )
                {
					//	If the logged in user is an admin, then Redirect the user to the 
					//	Admin home, otherwise redirect to the Search page from where the user came
					if  ( pc.UserInfo.SYS_USR_EmpId() == -1 )
                    {
                        pc.LoginData.g_strRedirectURL = pc.Util.SYS_UTL_GetPagePath("administration/ADM_AdminHome.aspx");
                        pc.LoginData.g_bShowUI = false;
                    }
                    else
                    {
                        var position = pc.LoginData.g_strLoginProblem.indexOf("IsGuestLogin");
                        var position1 = pc.LoginData.g_strLoginProblem.indexOf("-");
                        var strURL = pc.LoginData.g_strLoginProblem.substring(position1+1, position - position1 + 1);
                        pc.LoginData.g_strRedirectURL = strURL;
                        pc.LoginData.g_bShowUI = false;
                    }
                }
                else if ( strSAMLRelayFormat != "GUID" )
                {
					//
					// if there is an RU due to invalid login/timeout, honors RU.
					//
					var strURL = pc.LoginData.g_strLoginProblem.substring(
                                        pc.LoginData.g_strLoginProblem.indexOf("-")+1,
                                        pc.LoginData.g_strLoginProblem.length);
                    pc.LoginData.g_strRedirectURL = strURL;
                    pc.LoginData.g_bShowUI = false;
                }
            }
            else
            {
                if  ( pc.LoginData.g_strLoginProblem.indexOf("REDIRECT-") >= 0 )
                {

                    var strURL = pc.LoginData.g_strLoginProblem.substring(
                                        pc.LoginData.g_strLoginProblem.indexOf("-")+1,
                                        pc.LoginData.g_strLoginProblem.length);
                    pc.LoginData.g_strRedirectURL = pc.Util.SYS_UTL_GetSitePrefix()
                                   + "app/"
                                   + strURL;
                    pc.LoginData.g_bShowUI = false;

                }

                if  ( pc.LoginData.g_strLoginProblem.indexOf("REDLOC-") >= 0 )
                {

                    var strURL = pc.LoginData.g_strLoginProblem.substring(
                                        pc.LoginData.g_strLoginProblem.indexOf("-")+1,
                                        pc.LoginData.g_strLoginProblem.length);
                    if(pc.Constants.g_objBrowser.IsMobile())
                    {
                        pc.LoginData.g_strRedirectURL = pc.Util.SYS_UTL_GetSitePrefix() + strURL;
                    }
                    else
                    {
                        pc.LoginData.g_strRedirectURL = pc.Util.SYS_UTL_GetPagePath(strURL);
                    }
                    pc.LoginData.g_bShowUI = false;
                }
            }
        }

        pc.LoginUI.SYS_Login_UI_Debug( pc.LoginData.g_bDebugFlag, "...ServerName = "
                                      + Application["SERVER_NAME"]);

		//Bug 51105 fix
		/* Defect #56807 Commented the below section as this is not required
		UserTimeOffset = pc.Util.SYS_UTL_RequestString("jTimeOffset","",true);
        if ( (UserTimeOffset == null || UserTimeOffset == "") && pc.LoginData.g_bIsNTLogin )
        {
            pc.LoginData.g_strRedirectURL = "";
        }
        else
        {
            Session["jTimeOffset"] = UserTimeOffset;
        }Defect #56807 */
        

        pc.Util.SYS_UTL_SetDomainModeSkin(ObjConstants.USER_MODE_LOGIN, pc.LoginData.g_strDomainId,null);        
        
        pc.Util.SYS_UTL_SetUserMode(ObjConstants.USER_MODE_LOGIN);

       if  ( pc.LoginData.g_bShowUI )
        {
            // Begin - Code changes for APHL common authenitcation settings customization Dt: 16/12/2009
			// handling Login error messages to redirect to the auth/exit URL provided along with error code (StrErrCode)
            if (pc.Session["FallBackAuth"]!=true && g_nCommonSettingsFlag == 1 && pc.LoginData.g_strLoginErrCode != 0 && (pc.Session["FromStandardLogin"] == undefined || pc.Session["FromStandardLogin"] == false))
            {
                var strSSOAuthURL = Application["Config"].GetString( "App", "SLCommonSettings", "AuthenticationURL", "");
			    if (strSSOAuthURL.length > 0)
				{
			        Response.Redirect(strSSOAuthURL + "?StrErrCode=" + pc.LoginData.g_strLoginErrCode + "&RU=" + Server.UrlEncode(pc.LoginData.g_strRU),false);
					return;
				}
					//Avanthi added the server.urlencode
            }
            // END - Code changes for APHL common authenitcation settings customization Dt: 16/12/2009
            
                if(pc.Constants.g_objBrowser.IsMobile())
                {
                  pc.LoginUI.SYS_Login_UI_ShowMobileUItoUser( pc.LoginData.g_strLoginProblem,
                                           pc.LoginData.g_strAppProblem,
                                           pc.LoginData.g_strReqUserName,
                                           pc.LoginData.g_strSOrg,
                                           pc.LoginData.g_strNOrg,
                                           pc.LoginData.g_strReqTimeout, pc.LoginData.g_strReqError, pc.LoginData.g_strReqErrorMsg);
                }
                else
                {
                  pc.LoginUI.SYS_Login_UI_ShowUItoUser( pc.LoginData.g_strLoginProblem,
                                           pc.LoginData.g_strAppProblem,
                                           pc.LoginData.g_strReqUserName,
                                           pc.LoginData.g_strSOrg,
                                           pc.LoginData.g_strNOrg,
                                           pc.LoginData.g_strReqTimeout, pc.LoginData.g_strReqError, pc.LoginData.g_strReqErrorMsg); 
                }
        }
        /*else Defect #56807 Commented the below section as this is not required
        {
                if ( (UserTimeOffset == null || UserTimeOffset == "") && pc.LoginData.g_bIsNTLogin )
                {
                    pc.LoginUI.SYS_NTLogin_UI_GenerateScreen( pc.LoginData.g_strLoginProblem,
                                               pc.LoginData.g_strAppProblem,
                                               pc.LoginData.g_strReqUserName,
                                               pc.LoginData.g_strSOrg,
                                               pc.LoginData.g_strNOrg,
                                               pc.LoginData.g_strReqTimeout, pc.LoginData.g_strReqError, pc.LoginData.g_strReqErrorMsg);
                }
        }*/
//CONDITIONAL:if ( @ENABLE_TRY_CATCH )
    }
    catch(exception)
    {

        if  ( exception instanceof ObjLog )
        {
            //
            // Error should be logged already
            //
            pc.LoginData.g_objError = exception;

        }
        else
        {
            //
            // Create error object, log error and throw error
            //
            pc.LoginData.g_objError = new ObjLog(pc,ObjConstants.LOG_TYPE_ERROR_ASP,
                                    "ACP",
                                    "Course",
                                    "SYS_login.aspx",
                                    "Failed", exception);
            pc.LoginData.g_objError.Log();

        }

        pc.LoginData.g_bPageHasErrors = true;

    }
//CONDITIONAL:end

    pc.LoginData.g_objEngine       = null;
    pc.LoginData.g_objConfig       = null;
    pc.LoginData.g_objLicMgr       = null;
    pc.LoginData.g_objLoginMode    = null;


    if  ( pc.LoginData.g_bPageHasErrors )
    {
        //
        // If login code has errors come back to the login page
        //
        Response.Clear();
        Response.Redirect( pc.Util.SYS_UTL_GetPagePath("SYS_login.aspx") + "?Error=true&ErrorMsg=" + escape(pc.LoginData.g_objError.LogErrorDesc()),false);
		return;

    }
	//Added by V Satya Desina for Exxon Terms and Conditions .
	if ((pc.LoginData.g_strReqExit != "1") && pc.LoginData.g_strGuestLogon != 1 && pc.LoginData.g_strUserName != "")
	{
		if (pc.Login.VerifyAcceptTerms(pc.LoginData.g_strUserName) == 0 && pc.LoginData.g_strLoginErrCode != 1001 && pc.LoginData.g_strLoginErrCode != 1004)
		{
			pc.Session["UName"] = pc.LoginData.g_strUserName;
			pc.Session["PWord"] = pc.LoginData.g_strReqPassword;
			pc.Response.Redirect(pc.Util.SYS_UTL_GetPagePath("LMS_TermsAndConditions.aspx?CallerURTC=" + escape(pc.LoginData.g_strRedirectURL)),false);
			return;
		} 								  
	}
	//End

    //
    // Redirect to page if required
    //
	var strRedirectURLModified = "";
    if  ( pc.LoginData.g_strRedirectURL.length > 0 )
    {
        Response.Clear();
        //Fix for bug#44942 & QFE:32516
        if  ( pc.LoginData.g_strRedirectURL.indexOf("http") == 0)
        {
            strRedirectURLModified = pc.LoginData.g_strRedirectURL;
        }
        else
        {
            strRedirectURLModified = pc.Util.SYS_UTL_GetServerPrefix() + pc.LoginData.g_strRedirectURL;
        }
        }
		if (strRedirectURLModified.length > 0 )
		{
		
			g_setLanguage = pc.Login.CheckUserProfileLang();
			
			if( g_setLanguage == 1 &&  pc.LoginData.g_strGuestLogon == 0)
			{
				Response.Redirect( pc.Util.SYS_UTL_GetPagePath("LMS_GetLang.aspx") + "?Redir=" + escape(strRedirectURLModified),false);
				return;
			}
			else
			{
				Response.Redirect( strRedirectURLModified,false);
				return;
			}
    }
    pc.Dispose();

    Response.Flush();
%>
