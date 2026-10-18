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


package body admin.taghelpers.AuthenticationRequestHelper_Package is

   procedure Initialize_Fields (This : in out AuthenticationRequestHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AuthenticationRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        This.weblisketSession := WeblisketSession_Package.Create (hashMap, pageContext);
        This.request := HttpServletRequest_Access (pageContext.getRequest);
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return AuthenticationRequestHelper_Access is
      This : constant AuthenticationRequestHelper_Access := new AuthenticationRequestHelper;
   begin
      AuthenticationRequestHelper_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure Initialize (This : in out AuthenticationRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      httpServletRequest : constant HttpServletRequest_Access := HttpServletRequest_Access (httpServletRequest_Param);
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        This.weblisketSession := WeblisketSession_Package.Create (hashMap, httpServletRequest);
        This.request := httpServletRequest;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return AuthenticationRequestHelper_Access is
      This : constant AuthenticationRequestHelper_Access := new AuthenticationRequestHelper;
   begin
      AuthenticationRequestHelper_Package.Initialize (This.all, hashMap_Param, httpServletRequest_Param);
      return This;
   end Create;

   --  throws Exception
   function generateNewPassword (This : in out AuthenticationRequestHelper) return Unbounded_String is
      startIndex : Integer;
   begin
        if ((This.weblisketSession) /= (null)) and then ((This.weblisketSession.getId) /= (null)) then
            startIndex := This.weblisketSession.getId.length;
            if (startIndex) >= (8) then
                return This.weblisketSession.getId.substring ((startIndex) - (8));
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Error Generating New Password")));
            end if;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Session Available For Generating New Password")));
        end if;
   end generateNewPassword;

   function newPassword (This : in out AuthenticationRequestHelper) return Boolean is
      userName : Unbounded_String;
      email : Unbounded_String;
      userEntityInterface : UserEntityInterface_Access;
      userInterface : UserInterface_Access;
      newPassword : Unbounded_String;
      newPasswordHashMap : HashMap_Access;
   begin
        begin
            userName := This.request.getParameter (WeblisketSessionData_Package.REMOVABLEUSERNAME);
            email := This.request.getParameter (UserData_Package.MAINEMAIL);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                This.logUtil.putF (To_Unbounded_String ("Generating New Password For: ") & userName, AuthenticationRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("newPassword()"));
            end if;
            userEntityInterface := UserEntityFactory_Package.getInstance;
            userInterface := userEntityInterface.getUser (userName);
            if (userInterface.getMainEmail.compareTo (email)) /= (0) then
                if ((userInterface.getSecondaryEmail) /= (null)) and then ((userInterface.getSecondaryEmail.compareTo (email)) /= (0)) then
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                        This.logUtil.putF (To_Unbounded_String ("Requested Email Is Not In User Profile"), AuthenticationRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("newPassword()"));
                    end if;
                    return False;
                end if;
            end if;
            newPassword := AuthenticationRequestHelper'Class (This).generateNewPassword;
            userInterface.setPassword (newPassword);
            newPasswordHashMap := userInterface.toPasswordHashMap;
            UserEntityFactory_Package.getInstance.update (userName, newPasswordHashMap);
            NewPasswordEmail_Package.Create (This.abeClientInformation, userInterface, newPassword).process;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                This.logUtil.putF (To_Unbounded_String ("Generated New Password For: ") & userName, AuthenticationRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("newPassword()"));
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, AuthenticationRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("newPassword()"), e);
            end if;
            return False;
                end;
        end;
   end newPassword;

   function changePassword (This : in out AuthenticationRequestHelper) return Boolean is
      userName : Unbounded_String;
      passwordString : Unbounded_String;
      newPassword : Unbounded_String;
      newReenteredPassword : Unbounded_String;
      password : Password_Access;
      sessionPassword : Unbounded_String;
      userEntityInterface : UserEntityInterface_Access;
      userInterface : UserInterface_Access;
      login : Unbounded_String;
      newPasswordHashMap : HashMap_Access;
   begin
        begin
            userName := This.request.getParameter (WeblisketSessionData_Package.REMOVABLEUSERNAME);
            passwordString := This.request.getParameter (WeblisketSessionData_Package.REMOVABLEPASSWORD);
            newPassword := This.request.getParameter (WeblisketSessionData_Package.REMOVABLENEWPASSWORD);
            newReenteredPassword := This.request.getParameter (WeblisketSessionData_Package.REMOVABLEREENTERNEWPASSWORD);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                This.logUtil.putF (To_Unbounded_String ("Changing Password For User: ") & userName, AuthenticationRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("changePassword()"));
            end if;
            password := Password_Package.Create (newPassword);
            if not (password.isValid.booleanValue) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                    This.logUtil.putF (To_Unbounded_String ("New Password Is Not Valid"), AuthenticationRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("changePassword()"));
                end if;
                return False;
            end if;
            if (Java_Compare_To (newPassword, newReenteredPassword)) /= (0) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                    This.logUtil.putF (To_Unbounded_String ("New Password Fields Do Not Match"), AuthenticationRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("changePassword()"));
                end if;
                return False;
            end if;
            sessionPassword := This.weblisketSession.getPassword;
            userEntityInterface := UserEntityFactory_Package.getInstance;
            userInterface := userEntityInterface.getUser (userName);
            login := userEntityInterface.login (userName, passwordString);
            if (Java_Compare_To (login, GLOBALS2.LOGINSUCCESS)) = (0) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                    This.logUtil.putF (To_Unbounded_String ("Authentication Successful"), AuthenticationRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("changePassword()"));
                end if;
                newPasswordHashMap := password.toHashMap (null);
                UserEntityFactory_Package.getInstance.update (userName, newPasswordHashMap);
                NewPasswordEmail_Package.Create (This.abeClientInformation, userInterface, newPassword).process;
                return True;
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                This.logUtil.putF (To_Unbounded_String ("Authentication Failed"), AuthenticationRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("changePassword()"));
            end if;
            return False;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (To_Unbounded_String ("Authentication Failed"), AuthenticationRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("changePassword()"), e);
            end if;
            return False;
                end;
        end;
   end changePassword;

   function isRoleValid (This : in out AuthenticationRequestHelper; userName : Unbounded_String; password : Unbounded_String; roles_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean is
      roles : constant BasicArrayList_Access := BasicArrayList_Access (roles_Param);
      userEntityInterface : UserEntityInterface_Access;
      userInterface : UserInterface_Access;
      basicUserRoleArray : Java_Object_Access_Array_Access;
      size : Integer;
      nextRole : BasicUserRole_Access;
      index : Integer;
      stringBuffer : StringMaker_Access;
   begin
        begin
            userEntityInterface := UserEntityFactory_Package.getInstance;
            userInterface := userEntityInterface.getUser (userName);
            if (userInterface.getRole) = (null) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                    This.logUtil.putF (To_Unbounded_String ("Role is null: ") & Java_Image (userInterface.getRole) & To_Unbounded_String (" Valid Roles: ") & roles.toString, AuthenticationRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("isRoleValid()"));
                end if;
                return False;
            end if;
            basicUserRoleArray := roles.toArray;
            size := basicUserRoleArray'Length;
            for index in 0 .. (size) - 1 loop
                nextRole := BasicUserRole_Access (basicUserRoleArray (index));
                if userInterface.getRole.getBasicUserRole.equals (nextRole) then
                    userInterface.validateSession (WeblisketSessionInterface_Access (This.weblisketSession));
                    This.request.removeAttribute (WeblisketSessionData_Package.REMOVABLEUSERNAME);
                    This.request.removeAttribute (WeblisketSessionData_Package.REMOVABLEPASSWORD);
                    return True;
                end if;
            end loop;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Role is not valid: "));
                stringBuffer.append (userInterface.getRole.toString);
                stringBuffer.append (To_Unbounded_String (" Valid Roles: "));
                stringBuffer.append (roles.toString);
                This.logUtil.putF (stringBuffer.toString, AuthenticationRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("isRoleValid()"));
            end if;
            return False;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, AuthenticationRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("isRoleValid()"), e);
            end if;
            return False;
                end;
        end;
   end isRoleValid;

   procedure isRoleValid (This : in out AuthenticationRequestHelper; userName : Unbounded_String; password : Unbounded_String; roles_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Boolean := AuthenticationRequestHelper'Class (This).isRoleValid (userName, password, roles_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRoleValid;

end admin.taghelpers.AuthenticationRequestHelper_Package;


