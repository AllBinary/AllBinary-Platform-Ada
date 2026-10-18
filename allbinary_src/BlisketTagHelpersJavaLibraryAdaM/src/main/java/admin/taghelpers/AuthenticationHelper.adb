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


package body admin.taghelpers.AuthenticationHelper_Package is

   procedure Initialize_Fields (This : in out AuthenticationHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.authenticated := Null_Unbounded_String;
      This.sessionUserName := Null_Unbounded_String;
      This.role := null;
      This.timeout := Null_Unbounded_String;
      This.attemptsInteger := null;
   end Initialize_Fields;


   procedure Initialize (This : in out AuthenticationHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        Initialize (This, hashMap, HttpServletRequest_Access (pageContext.getRequest));
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return AuthenticationHelper_Access is
      This : constant AuthenticationHelper_Access := new AuthenticationHelper;
   begin
      AuthenticationHelper_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure Initialize (This : in out AuthenticationHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      httpServletRequest : constant HttpServletRequest_Access := HttpServletRequest_Access (httpServletRequest_Param);
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        This.weblisketSession := WeblisketSession_Package.Create (hashMap, httpServletRequest);
        AuthenticationHelper'Class (This).getFormData;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.AUTHENTICATION) then
            This.logUtil.putF (AuthenticationHelper'Class (This).outputSessionInfo, AuthenticationHelper_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return AuthenticationHelper_Access is
      This : constant AuthenticationHelper_Access := new AuthenticationHelper;
   begin
      AuthenticationHelper_Package.Initialize (This.all, hashMap_Param, httpServletRequest_Param);
      return This;
   end Create;

   --  throws Exception
   procedure getFormData (This : in out AuthenticationHelper) is
   begin
        This.authenticated := This.weblisketSession.getAuthentication;
        This.sessionUserName := This.weblisketSession.getUserName;
        This.role := This.weblisketSession.getRole;
        This.attemptsInteger := This.weblisketSession.getAttempts;
        This.timeout := This.weblisketSession.getTimeout;
   end getFormData;

   --  throws Exception
   function invalidateSession (This : in out AuthenticationHelper) return Integer is
   begin
        begin
            This.weblisketSession.clear;
            return TagSupport_Package.EVAL_BODY_INCLUDE;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.AUTHENTICATIONERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, AuthenticationHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("invalidateSession()"), e);
            end if;
            return null;
                end;
        end;
   end invalidateSession;

   function isSessionOld (This : in out AuthenticationHelper) return Boolean is
      timeCreated : Long_Long_Integer;
      sessionTimout : Long_Long_Integer;
      calendar : Calendar_Access;
      timeFirst : Long_Long_Integer;
      stringBuffer : StringMaker_Access;
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
                    This.logUtil.putF (stringBuffer.toString, AuthenticationHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("isSessionOld()"));
                end if;
                return True;
            end if;
        else
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.AUTHENTICATION) then
                This.logUtil.putF (To_Unbounded_String ("Role Is Not In Session"), AuthenticationHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("isSessionOld()"));
            end if;
        end if;
        return AuthenticationHelper'Class (This).isRarelyUsedSession;
   end isSessionOld;

   function isRarelyUsedSession (This : in out AuthenticationHelper) return Boolean is
      timeCreated : Long_Long_Integer;
      lastAccess : Long_Long_Integer;
      inactivityAllowed : Long_Long_Integer;
      calendar : Calendar_Access;
      timeFirst : Long_Long_Integer;
      stringBuffer : StringMaker_Access;
   begin
        if (This.role) /= (null) then
            timeCreated := This.weblisketSession.getCreationTime;
            lastAccess := This.weblisketSession.getLastAccessedTime;
            inactivityAllowed := This.role.getSessionInactivityTimeout;
            calendar := Calendar_Package.getInstance;
            timeFirst := (calendar.getTimeInMillis) - (lastAccess);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.AUTHENTICATION) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Session Is Rarely Used - Timeout: "));
                stringBuffer.appendlong (lastAccess);
                stringBuffer.append (To_Unbounded_String (" Eval: "));
                stringBuffer.appendlong (timeFirst);
                stringBuffer.append (To_Unbounded_String (" > "));
                stringBuffer.appendlong (inactivityAllowed);
                This.logUtil.putF (stringBuffer.toString, AuthenticationHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("isRarelyUsedSession()"));
            end if;
        else
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.AUTHENTICATION) then
                This.logUtil.putF (To_Unbounded_String ("Role Is Not In Session"), AuthenticationHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("isRarelyUsedSession()"));
            end if;
        end if;
        return False;
   end isRarelyUsedSession;

   function validRole (This : in out AuthenticationHelper) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      error : Unbounded_String;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Trying New login<p/>"));
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to set valid role");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.AUTHENTICATIONERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, AuthenticationHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("validRole()"), e);
            end if;
            return error;
                end;
        end;
   end validRole;

   function invalidRole (This : in out AuthenticationHelper) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      error : Unbounded_String;
   begin
        begin
            This.weblisketSession.setAuthenticated (False);
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Sorry your username and password is invalid on this page. "));
            stringBuffer.append (To_Unbounded_String ("Trying New login<p/>"));
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to set role invalid");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.AUTHENTICATIONERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, AuthenticationHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("invalidRole()"), e);
            end if;
            return error;
                end;
        end;
   end invalidRole;

   --  throws Exception
   function isAuthenticated (This : in out AuthenticationHelper) return Boolean is
   begin
        if BooleanUtil_Package.getInstance.getFromString (This.authenticated) then
            return True;
        else
            return False;
        end if;
   end isAuthenticated;

   function isAuthenticationSessionValid (This : in out AuthenticationHelper; roles_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean is
      roles : constant BasicArrayList_Access := BasicArrayList_Access (roles_Param);
      basicUserRole : BasicUserRole_Access;
      basicUserRoleArray : Java_Object_Access_Array_Access;
      size : Integer;
      mustBeOfRole : BasicUserRole_Access;
      userEntityInterface : UserEntityInterface_Access;
      userInterface : UserInterface_Access;
      index : Integer;
   begin
        begin
            if (This.role) /= (null) then
                if AuthenticationHelper'Class (This).isAuthenticated then
                    if (This.sessionUserName) /= (Null_Unbounded_String) then
                        basicUserRole := This.role.getBasicUserRole;
                        basicUserRoleArray := roles.toArray;
                        size := basicUserRoleArray'Length;
                        for index in 0 .. (size) - 1 loop
                            mustBeOfRole := BasicUserRole_Access (basicUserRoleArray (index));
                            if basicUserRole.equals (mustBeOfRole) then
                                if basicUserRole.equals (UserRoleFactory_Package.getInstance.CUSTOMER) then
                                    userEntityInterface := UserEntityFactory_Package.getInstance;
                                    userInterface := userEntityInterface.getUser (This.sessionUserName);
                                    if not (userInterface.isSessionValid.booleanValue) then
                                        return False;
                                    end if;
                                end if;
                                return True;
                            end if;
                        end loop;
                    end if;
                    return False;
                end if;
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.AUTHENTICATION) then
                    This.logUtil.putF (To_Unbounded_String ("Role Is Not In Session"), AuthenticationHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("isAuthenticationSessionValid()"));
                end if;
            end if;
            return False;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.AUTHENTICATIONERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, AuthenticationHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("isAuthenticatedSessionValid()"), e);
            end if;
            return False;
                end;
        end;
   end isAuthenticationSessionValid;

   procedure nextAttempt (This : in out AuthenticationHelper) is
   begin
        if ((This.attemptsInteger) /= (null)) and then ((Integer (This.attemptsInteger)) > (0)) then
            This.weblisketSession.setAttempts ((Integer (This.attemptsInteger)) + (1));
        else
            This.weblisketSession.setAttempts (1);
        end if;
   end nextAttempt;

   function processIfNewLogin (This : in out AuthenticationHelper; userName : Unbounded_String; password : Unbounded_String) return Boolean is
      login : Unbounded_String;
      userEntityInterface : UserEntityInterface_Access;
      userInterface : UserInterface_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.AUTHENTICATIONERROR) then
                This.logUtil.putF (To_Unbounded_String ("Starting: ") & userName, AuthenticationHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("processIfNewLogin()"));
            end if;
            if ((((userName) /= (Null_Unbounded_String)) and then ((Java_Compare_To (userName, StringUtil_Package.getInstance.EMPTY_STRING)) /= (0))) and then ((password) /= (Null_Unbounded_String))) and then ((Java_Compare_To (password, StringUtil_Package.getInstance.EMPTY_STRING)) /= (0)) then
                login := Null_Unbounded_String;
                userEntityInterface := UserEntityFactory_Package.getInstance;
                login := userEntityInterface.login (userName, password);
                if (Java_Compare_To (login, GLOBALS2.LOGINSUCCESS)) = (0) then
                    userInterface := userEntityInterface.getUser (userName);
                    if userInterface.isSessionValid.booleanValue then
                        This.weblisketSession.setAttempts (0);
                        return True;
                    end if;
                end if;
                AuthenticationHelper'Class (This).nextAttempt;
                return False;
            end if;
            AuthenticationHelper'Class (This).nextAttempt;
            return False;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.AUTHENTICATIONERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, AuthenticationHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("processIfNewLogin()"), e);
            end if;
            return False;
                end;
        end;
   end processIfNewLogin;

   function processInvalidation (This : in out AuthenticationHelper) return Boolean is
   begin
        begin
            if BooleanUtil_Package.getInstance.getFromString (This.timeout) then
                AuthenticationHelper'Class (This).invalidateSession;
                return True;
            end if;
            begin
                This.weblisketSession.setTimeout (BooleanFactory_Package.getInstance.TRUE_STRING);
                return False;
            end;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.AUTHENTICATIONERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, AuthenticationHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("processInvalidation()"), e);
            end if;
            return False;
                end;
        end;
   end processInvalidation;

   function outputSessionInfo (This : in out AuthenticationHelper) return Unbounded_String is
      calendar : Calendar_Access;
      timeCreated : Long_Long_Integer;
      stringBuffer : StringMaker_Access;
      lastAccess : Long_Long_Integer;
   begin
        begin
            calendar := Calendar_Package.getInstance;
            timeCreated := This.weblisketSession.getCreationTime;
            stringBuffer := StringMaker_Package.Create;
            lastAccess := This.weblisketSession.getLastAccessedTime;
            stringBuffer.append (To_Unbounded_String ("Time Since Last Access: ") & Java_Image (((calendar.getTimeInMillis) - (lastAccess))) & To_Unbounded_String ("<br/>" & ASCII.LF & ""));
            if (This.role) /= (null) then
                stringBuffer.append (To_Unbounded_String ("Auth: "));
                stringBuffer.append (This.authenticated);
                stringBuffer.append (To_Unbounded_String (" UserName: "));
                stringBuffer.append (This.sessionUserName);
                stringBuffer.append (To_Unbounded_String (" Role: "));
                stringBuffer.append (This.role.toString);
                stringBuffer.append (To_Unbounded_String ("<br/>" & ASCII.LF & ""));
                stringBuffer.append (To_Unbounded_String ("Time Left: "));
                stringBuffer.appendlong (Long_Long_Integer (((This.role.getSessionTimeout) - (((calendar.getTimeInMillis) - (timeCreated))))));
                stringBuffer.append (To_Unbounded_String ("<br/>" & ASCII.LF & ""));
                stringBuffer.append (To_Unbounded_String ("Inactivity Time Allowed: "));
                stringBuffer.appendlong (Long_Long_Integer (This.role.getSessionTimeout));
                stringBuffer.append (To_Unbounded_String ("<br/>" & ASCII.LF & ""));
                stringBuffer.append (To_Unbounded_String ("Inactivity Time Allowed: "));
                stringBuffer.appendlong (Long_Long_Integer (This.role.getSessionInactivityTimeout));
                stringBuffer.append (To_Unbounded_String ("<br/>" & ASCII.LF & ""));
            else
                stringBuffer.append (To_Unbounded_String ("Role Is Not Set<br/>" & ASCII.LF & ""));
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return To_Unbounded_String ("Error");
                end;
        end;
   end outputSessionInfo;

   function getRole (This : in out AuthenticationHelper) return UserRole_Access is
   begin
        return This.role;
   end getRole;

   procedure isAuthenticationSessionValid (This : in out AuthenticationHelper; roles_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Boolean := AuthenticationHelper'Class (This).isAuthenticationSessionValid (roles_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isAuthenticationSessionValid;

   procedure processIfNewLogin (This : in out AuthenticationHelper; userName : Unbounded_String; password : Unbounded_String) is
      Java_Result : constant Boolean := AuthenticationHelper'Class (This).processIfNewLogin (userName, password);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processIfNewLogin;

end admin.taghelpers.AuthenticationHelper_Package;


