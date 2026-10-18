--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


with java.util.Calendar_Package; use java.util.Calendar_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.init.InstallerInfo_Package; use org.allbinary.business.init.InstallerInfo_Package;
with org.allbinary.business.user.role.BasicUserRoleFactory_Package; use org.allbinary.business.user.role.BasicUserRoleFactory_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.java.bool.BooleanUtil_Package; use org.allbinary.logic.java.bool.BooleanUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package body admin.tags.FileAuthenticationTag_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package InstallerInfo_Package renames Standard.org.allbinary.business.init.InstallerInfo_Package;
   package BasicUserRoleFactory_Package renames Standard.org.allbinary.business.user.role.BasicUserRoleFactory_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package WeblisketSessionData_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package BooleanUtil_Package renames Standard.org.allbinary.logic.java.bool.BooleanUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   procedure Initialize_Fields (This : in out FileAuthenticationTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.attemptsInteger := 0;
      This.weblisketSession := null;
      This.request := null;
      This.command := Null_Unbounded_String;
      This.userName := Null_Unbounded_String;
      This.password := Null_Unbounded_String;
      This.newPassword := Null_Unbounded_String;
      This.authenticated := Null_Unbounded_String;
      This.sessionUserName := Null_Unbounded_String;
      This.role := null;
      This.timeout := Null_Unbounded_String;
      This.roles := null;
   end Initialize_Fields;


   procedure Initialize (This : in out FileAuthenticationTag'Class) is
   begin
      CustomTagSupport_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FileAuthenticationTag_Access is
      This : constant FileAuthenticationTag_Access := new FileAuthenticationTag;
   begin
      FileAuthenticationTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setCommand (This : in out FileAuthenticationTag; command : Unbounded_String) is
   begin
        This.command := command;
   end setCommand;

   procedure setUserName (This : in out FileAuthenticationTag; userName : Unbounded_String) is
   begin
        This.userName := userName;
   end setUserName;

   procedure setPassword (This : in out FileAuthenticationTag; value : Unbounded_String) is
   begin
        This.password := value;
   end setPassword;

   procedure setNewPassword (This : in out FileAuthenticationTag; value : Unbounded_String) is
   begin
        This.newPassword := value;
   end setNewPassword;

   procedure setRoles (This : in out FileAuthenticationTag; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      values : constant BasicArrayList_Access := BasicArrayList_Access (values_Param);
   begin
        This.roles := values;
   end setRoles;

   procedure makeSessionValid (This : in out FileAuthenticationTag; storedRole_Param : access BasicUserRole_Package.BasicUserRole'Class; userName : Unbounded_String) is
      storedRole : constant BasicUserRole_Access := BasicUserRole_Access (storedRole_Param);
   begin
        This.weblisketSession.setAuthenticated;
        This.weblisketSession.setRole (storedRole);
        This.weblisketSession.setUserName (userName);
        This.request.removeAttribute (WeblisketSessionData_Package.REMOVABLEUSERNAME);
        This.request.removeAttribute (WeblisketSessionData_Package.REMOVABLEPASSWORD);
   end makeSessionValid;

   procedure getFormData (This : in out FileAuthenticationTag) is
   begin
        This.authenticated := This.weblisketSession.getAuthentication;
        This.sessionUserName := This.weblisketSession.getUserName;
        This.role := This.weblisketSession.getRole;
        This.attemptsInteger := This.weblisketSession.getAttempts;
        This.timeout := This.weblisketSession.getTimeout;
   end getFormData;

   procedure nextAttempt (This : in out FileAuthenticationTag) is
   begin
        if ((This.attemptsInteger) /= (0)) and then ((Integer (This.attemptsInteger)) > (0)) then
            This.weblisketSession.setAttempts ((Integer (This.attemptsInteger)) + (1));
        else
            This.weblisketSession.setAttempts (1);
        end if;
   end nextAttempt;

   --  throws LicensingException
   function changePassword (This : in out FileAuthenticationTag) return Boolean is
      userName : Unbounded_String;
      password : Unbounded_String;
      newPassword : Unbounded_String;
      newReenteredPassword : Unbounded_String;
      installerInfo : InstallerInfo_Access;
   begin
        begin
            userName := This.request.getParameter (WeblisketSessionData_Package.REMOVABLEUSERNAME);
            password := This.request.getParameter (WeblisketSessionData_Package.REMOVABLEPASSWORD);
            newPassword := This.request.getParameter (WeblisketSessionData_Package.REMOVABLENEWPASSWORD);
            newReenteredPassword := This.request.getParameter (WeblisketSessionData_Package.REMOVABLEREENTERNEWPASSWORD);
            if (Java_Compare_To (newPassword, newReenteredPassword)) /= (0) then
                return False;
            end if;
            installerInfo := InstallerInfo_Package.Create;
            if installerInfo.isValid (userName, password) then
                installerInfo.setPassword (newPassword);
                installerInfo.write;
                This.weblisketSession.setUserName (userName);
                This.weblisketSession.setPassword (newPassword);
                return True;
            end if;
            return False;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end changePassword;

   function invalidateSession (This : in out FileAuthenticationTag) return Integer is
   begin
        begin
            This.weblisketSession.clear;
            return TagSupport_Package.EVAL_BODY_INCLUDE.intValue;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, FileAuthenticationTag_Access'(This'Unchecked_Access), To_Unbounded_String ("invalidateSession()"), e);
            end if;
            return TagSupport_Package.SKIP_BODY;
                end;
        end;
   end invalidateSession;

   --  throws LicensingException
   function isSessionOld (This : in out FileAuthenticationTag) return Boolean is
      timeCreated : Long_Long_Integer;
      sessionTimout : Long_Long_Integer;
      calendar : Calendar_Access;
      timeFirst : Long_Long_Integer;
      stringBuffer : StringMaker_Access;
   begin
        begin
            if (This.role) /= (null) then
                timeCreated := This.weblisketSession.getCreationTime;
                sessionTimout := This.role.getSessionTimeout;
                calendar := Calendar_Package.getInstance;
                timeFirst := (calendar.getTimeInMillis) - (sessionTimout);
                if (timeFirst) > (timeCreated) then
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.AUTHENTICATION) then
                        stringBuffer := StringMaker_Package.Create;
                        stringBuffer.append (To_Unbounded_String ("Session Is Old - Timeout: "));
                        stringBuffer.appendlong (sessionTimout);
                        stringBuffer.append (To_Unbounded_String (" Eval: "));
                        stringBuffer.appendlong (timeFirst);
                        stringBuffer.append (To_Unbounded_String (" > "));
                        stringBuffer.appendlong (timeCreated);
                        This.logUtil.putF (stringBuffer.toString, FileAuthenticationTag_Access'(This'Unchecked_Access), To_Unbounded_String ("isSessionOld()"));
                    end if;
                    return True.booleanValue;
                end if;
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.AUTHENTICATION) then
                    This.logUtil.putF (To_Unbounded_String ("Role Is Not In Session"), FileAuthenticationTag_Access'(This'Unchecked_Access), To_Unbounded_String ("isSessionOld()"));
                end if;
            end if;
            return FileAuthenticationTag'Class (This).isRarelyUsedSession.booleanValue;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, FileAuthenticationTag_Access'(This'Unchecked_Access), To_Unbounded_String ("isSessionOld()"), e);
            end if;
            return False;
                end;
        end;
   end isSessionOld;

   function isRarelyUsedSession (This : in out FileAuthenticationTag) return Boolean is
      timeCreated : Long_Long_Integer;
      lastAccess : Long_Long_Integer;
      timePassed : Long_Long_Integer;
      calendar : Calendar_Access;
      timeFirst : Long_Long_Integer;
      stringBuffer : StringMaker_Access;
   begin
        if (This.role) /= (null) then
            timeCreated := This.weblisketSession.getCreationTime;
            lastAccess := This.weblisketSession.getLastAccessedTime;
            timePassed := This.role.getSessionInactivityTimeout;
            calendar := Calendar_Package.getInstance;
            timeFirst := (calendar.getTimeInMillis) - (lastAccess);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.AUTHENTICATION) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Session Is Rarely Used - Timeout: "));
                stringBuffer.appendlong (lastAccess);
                stringBuffer.append (To_Unbounded_String (" Eval: "));
                stringBuffer.appendlong (timeFirst);
                stringBuffer.append (To_Unbounded_String (" > "));
                stringBuffer.appendlong (timePassed);
                This.logUtil.putF (stringBuffer.toString, FileAuthenticationTag_Access'(This'Unchecked_Access), To_Unbounded_String ("isRarelyUsedSession()"));
            end if;
        else
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.AUTHENTICATION) then
                This.logUtil.putF (To_Unbounded_String ("Role Is Not In Session"), FileAuthenticationTag_Access'(This'Unchecked_Access), To_Unbounded_String ("isRarelyUsedSession()"));
            end if;
        end if;
        return False;
   end isRarelyUsedSession;

   --  throws LicensingException
   function isRoleValid (This : in out FileAuthenticationTag) return Boolean is
   begin
        begin
            FileAuthenticationTag'Class (This).makeSessionValid (BasicUserRoleFactory_Package.getInstance.INSTALLER, This.userName);
            return True.booleanValue;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, FileAuthenticationTag_Access'(This'Unchecked_Access), To_Unbounded_String ("isRoleValid()"), e);
            end if;
            return False;
                end;
        end;
   end isRoleValid;

   --  throws LicensingException
   function validRole (This : in out FileAuthenticationTag) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      error : Unbounded_String;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Trying New login<p>"));
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to set valid role");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, FileAuthenticationTag_Access'(This'Unchecked_Access), To_Unbounded_String ("validRole()"), e);
            end if;
            return error;
                end;
        end;
   end validRole;

   --  throws LicensingException
   function invalidRole (This : in out FileAuthenticationTag) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      error : Unbounded_String;
   begin
        begin
            This.weblisketSession.setAuthenticated (False);
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Sorry your username and password is invalid on this page."));
            stringBuffer.append (To_Unbounded_String ("Trying New login<p>"));
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to set role invalid");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, FileAuthenticationTag_Access'(This'Unchecked_Access), To_Unbounded_String ("invalidRole()"), e);
            end if;
            return error;
                end;
        end;
   end invalidRole;

   --  throws LicensingException
   function isAuthenticationSessionValid (This : in out FileAuthenticationTag) return Boolean is
      size : Integer;
      mustBeOfRole : BasicUserRole_Access;
      index : Integer;
   begin
        begin
            if BooleanUtil_Package.getInstance.getFromString (This.authenticated) then
                size := This.roles.size;
                for index in 0 .. (size) - 1 loop
                    mustBeOfRole := BasicUserRole_Access (This.roles.get (index));
                    if ((This.sessionUserName) /= (Null_Unbounded_String)) and then (This.role.equals (mustBeOfRole)) then
                        return True.booleanValue;
                    end if;
                end loop;
                return False.booleanValue;
            end if;
            return False.booleanValue;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, FileAuthenticationTag_Access'(This'Unchecked_Access), To_Unbounded_String ("isAuthenticationSessionValid()"), e);
            end if;
            return False;
                end;
        end;
   end isAuthenticationSessionValid;

   --  throws LicensingException
   function processIfNewLogin (This : in out FileAuthenticationTag) return Boolean is
      login : Unbounded_String;
      installerInfo : InstallerInfo_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.putF (To_Unbounded_String ("Starting for User: ") & This.userName & To_Unbounded_String (" Attempt: ") & Java_Image (This.weblisketSession.getAttempts), FileAuthenticationTag_Access'(This'Unchecked_Access), To_Unbounded_String ("processIfNewLogin()"));
            end if;
            if ((((This.userName) /= (Null_Unbounded_String)) and then ((Java_Compare_To (This.userName, StringUtil_Package.getInstance.EMPTY_STRING)) /= (0))) and then ((This.password) /= (Null_Unbounded_String))) and then ((Java_Compare_To (This.password, StringUtil_Package.getInstance.EMPTY_STRING)) /= (0)) then
                login := Null_Unbounded_String;
                installerInfo := InstallerInfo_Package.Create;
                if installerInfo.isValid (This.userName, This.password) then
                    login := org_Package.allbinary.globals.GLOBALS2.LOGINSUCCESS;
                else
                    login := org_Package.allbinary.globals.GLOBALS2.LOGINFAILED;
                end if;
                if (Java_Compare_To (login, org_Package.allbinary.globals.GLOBALS2.LOGINSUCCESS)) = (0) then
                    This.weblisketSession.setAttempts (0);
                    return True.booleanValue;
                end if;
                FileAuthenticationTag'Class (This).nextAttempt;
                return False.booleanValue;
            end if;
            FileAuthenticationTag'Class (This).nextAttempt;
            return False.booleanValue;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, FileAuthenticationTag_Access'(This'Unchecked_Access), To_Unbounded_String ("processIfNewLogin()"), e);
            end if;
            return False;
                end;
        end;
   end processIfNewLogin;

   --  throws LicensingException
   function processInvalidation (This : in out FileAuthenticationTag) return Boolean is
   begin
        begin
            if BooleanUtil_Package.getInstance.getFromString (This.timeout) then
                declare Java_Result renames FileAuthenticationTag'Class (This).invalidateSession; pragma Unreferenced (Java_Result); begin null; end;
                return True.booleanValue;
            end if;
            begin
                This.weblisketSession.setTimeout (BooleanFactory_Package.getInstance.TRUE_STRING);
                return False.booleanValue;
            end;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, FileAuthenticationTag_Access'(This'Unchecked_Access), To_Unbounded_String ("isSetToInvalidate()"), e);
            end if;
            return False;
                end;
        end;
   end processInvalidation;

   --  throws JspTagException
   function doStartTag (This : in out FileAuthenticationTag) return Integer is
      stringUtil : StringUtil_Access;
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringUtil := StringUtil_Package.getInstance;
            This.request := HttpServletRequest_Access (This.pageContext.getRequest);
            This.weblisketSession := BasicWeblisketSession_Package.Create (This.pageContext);
            FileAuthenticationTag'Class (This).getFormData;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                This.logUtil.putF (To_Unbounded_String ("Started"), FileAuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
            end if;
            if (This.command) /= (Null_Unbounded_String) then
                if (Java_Compare_To (This.command, org_Package.allbinary.globals.GLOBALS2.CHANGEPASSWORD)) = (0) then
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                        This.logUtil.putF (To_Unbounded_String ("Change Password"), FileAuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                    end if;
                    if not (FileAuthenticationTag'Class (This).changePassword) then
                        This.pageContext.getOut.print (To_Unbounded_String ("Password Change Attempt Failed.<p>"));
                        return EVAL_BODY_INCLUDE;
                    else
                        This.pageContext.getOut.print (To_Unbounded_String ("Password Changed Successfully.<p>"));
                        return SKIP_BODY;
                    end if;
                elsif (Java_Compare_To (This.command, WeblisketSessionData_Package.INVALIDATESESSION)) = (0) then
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                        This.logUtil.putF (To_Unbounded_String ("INVALIDATESESSION"), FileAuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                    end if;
                    return FileAuthenticationTag'Class (This).invalidateSession;
                else
                    if FileAuthenticationTag'Class (This).isSessionOld then
                        if FileAuthenticationTag'Class (This).processInvalidation then
                            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                                This.logUtil.putF (To_Unbounded_String ("Processing Invalidation"), FileAuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                            end if;
                            This.pageContext.getOut.print (To_Unbounded_String ("Please login again.<p>"));
                            if (Java_Compare_To (This.command, org_Package.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED)) = (0) then
                                return TagSupport_Package.SKIP_BODY;
                            else
                                return TagSupport_Package.EVAL_BODY_INCLUDE;
                            end if;
                        else
                            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                                This.logUtil.putF (To_Unbounded_String ("Preparing session for invalidation"), FileAuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                            end if;
                            if (Java_Compare_To (This.command, org_Package.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED)) = (0) then
                                return TagSupport_Package.SKIP_BODY;
                            else
                                return TagSupport_Package.EVAL_BODY_INCLUDE;
                            end if;
                        end if;
                    end if;
                    if ((((((This.userName) = (Null_Unbounded_String)) or else ((Java_Compare_To (This.userName, stringUtil.EMPTY_STRING)) = (0)))) and then ((((This.password) = (Null_Unbounded_String)) or else ((Java_Compare_To (This.password, stringUtil.EMPTY_STRING)) = (0))))) and then ((This.roles) /= (null))) and then (FileAuthenticationTag'Class (This).isAuthenticationSessionValid) then
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                            This.logUtil.putF (To_Unbounded_String ("Authenticated session is valid"), FileAuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                        end if;
                        if (Java_Compare_To (This.command, org_Package.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED)) = (0) then
                            return TagSupport_Package.EVAL_BODY_INCLUDE;
                        else
                            return TagSupport_Package.SKIP_BODY;
                        end if;
                    end if;
                    if (((This.userName) /= (Null_Unbounded_String)) and then ((This.password) /= (Null_Unbounded_String))) and then (FileAuthenticationTag'Class (This).processIfNewLogin) then
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                            This.logUtil.putF (To_Unbounded_String ("Processing new login."), FileAuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                        end if;
                        if FileAuthenticationTag'Class (This).isRoleValid then
                            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                                This.logUtil.putF (To_Unbounded_String ("Role is valid - Processing new login"), FileAuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                            end if;
                            This.pageContext.getOut.print (FileAuthenticationTag'Class (This).validRole);
                            if (Java_Compare_To (This.command, org_Package.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED)) = (0) then
                                return EVAL_BODY_INCLUDE;
                            else
                                return SKIP_BODY;
                            end if;
                        else
                            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                                This.logUtil.putF (To_Unbounded_String ("Role is not valid - Processing new login"), FileAuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                            end if;
                            This.pageContext.getOut.print (FileAuthenticationTag'Class (This).invalidRole);
                            if (Java_Compare_To (This.command, org_Package.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED)) = (0) then
                                return SKIP_BODY;
                            else
                                return EVAL_BODY_INCLUDE;
                            end if;
                        end if;
                    else
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                            This.logUtil.putF (To_Unbounded_String ("Invalid Login"), FileAuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                        end if;
                        if ((((This.userName) /= (Null_Unbounded_String)) and then ((Java_Compare_To (This.userName, StringUtil_Package.getInstance.EMPTY_STRING)) /= (0))) and then ((This.password) /= (Null_Unbounded_String))) and then ((Java_Compare_To (This.password, StringUtil_Package.getInstance.EMPTY_STRING)) /= (0)) then
                            This.pageContext.getOut.print (To_Unbounded_String ("Sorry your username and/or password is invalid.<p>"));
                        end if;
                    end if;
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                        stringBuffer := StringMaker_Package.Create;
                        stringBuffer.append (To_Unbounded_String ("Major authentication error - userName: "));
                        stringBuffer.append (This.userName);
                        stringBuffer.append (To_Unbounded_String (" Password: "));
                        stringBuffer.append (This.password);
                        stringBuffer.append (To_Unbounded_String (" Command: "));
                        stringBuffer.append (This.command);
                        This.logUtil.putF (stringBuffer.toString, FileAuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                    end if;
                    if (Java_Compare_To (This.command, org_Package.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED)) = (0) then
                        return TagSupport_Package.SKIP_BODY;
                    else
                        return TagSupport_Package.EVAL_BODY_INCLUDE;
                    end if;
                end if;
            end if;
            return SKIP_BODY;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            AbResponseHandler_Package.sendJspTagLicensingRedirect (This.pageContext, e);
            return SKIP_BODY;
                end;
        end;
   end doStartTag;

end admin.tags.FileAuthenticationTag_Package;


