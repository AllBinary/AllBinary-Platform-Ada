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


package body admin.tags.AuthenticationTag_Package is

   procedure Initialize_Fields (This : in out AuthenticationTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.command := Null_Unbounded_String;
      
      
      This.newPassword_Field := Null_Unbounded_String;
      This.roles := null;
      This.propertiesHashMap := null;
   end Initialize_Fields;


   procedure Initialize (This : in out AuthenticationTag'Class) is
      stringUtil : StringUtil_Access;
   begin
      CustomTagSupport_Package.Initialize (This);
      Initialize_Fields (This);
        stringUtil := StringUtil_Package.getInstance;
        This.userName := stringUtil.EMPTY_STRING;
        This.password := stringUtil.EMPTY_STRING;
   end Initialize;

   function Create return AuthenticationTag_Access is
      This : constant AuthenticationTag_Access := new AuthenticationTag;
   begin
      AuthenticationTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setCommand (This : in out AuthenticationTag; command : Unbounded_String) is
   begin
        This.command := command;
   end setCommand;

   procedure setUserName (This : in out AuthenticationTag; userName : Unbounded_String) is
   begin
        This.userName := userName;
   end setUserName;

   procedure setPassword (This : in out AuthenticationTag; value : Unbounded_String) is
   begin
        This.password := value;
   end setPassword;

   procedure setNewPassword (This : in out AuthenticationTag; value : Unbounded_String) is
   begin
        This.newPassword_Field := value;
   end setNewPassword;

   procedure setRoles (This : in out AuthenticationTag; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      values : constant BasicArrayList_Access := BasicArrayList_Access (values_Param);
   begin
        This.roles := values;
   end setRoles;

   --  throws LicensingException
   function changePassword (This : in out AuthenticationTag) return Boolean is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Boolean;
   begin
        begin
            anyType := AuthenticationRequestHelperFactory_Package.Create.getInstance (This.propertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("changePassword"), null);
            result := Boolean (method.invoke (anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end changePassword;

   --  throws LicensingException
   function newPassword (This : in out AuthenticationTag) return Boolean is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Boolean;
   begin
        begin
            anyType := AuthenticationRequestHelperFactory_Package.Create.getInstance (This.propertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("newPassword"), null);
            result := Boolean (method.invoke (anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end newPassword;

   --  throws LicensingException
   function invalidateSession (This : in out AuthenticationTag) return Integer is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      resultInteger : Integer;
   begin
        begin
            anyType := AuthenticationHelperFactory_Package.Create.getInstance (This.propertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("invalidateSession"), null);
            resultInteger := Integer (method.invoke (anyType, null));
            return Integer (resultInteger);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end invalidateSession;

   --  throws LicensingException
   function isSessionOld (This : in out AuthenticationTag) return Boolean is
      anyType : Java_Object_Access;
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      resultBoolean : Boolean;
   begin
        begin
            anyType := AuthenticationHelperFactory_Package.Create.getInstance (This.propertiesHashMap, This.pageContext);
            helperClass := anyType.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("isSessionOld"), null);
            resultBoolean := Boolean (method.invoke (anyType, null));
            return resultBoolean;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end isSessionOld;

   --  throws LicensingException
   function isRoleValid (This : in out AuthenticationTag) return Boolean is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      methodParams : Ada_Tags_Tag_Array_Access;
      method : Method_Access;
      methodArgs : Java_Object_Access_Array_Access;
      resultBoolean : Boolean;
   begin
        begin
            anyType := AuthenticationRequestHelperFactory_Package.Create.getInstance (This.propertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            methodParams := new Ada_Tags_Tag_Array'(This.userName.all'Tag, This.password.all'Tag, This.roles.all'Tag);
            method := addressHelperClass.getMethod (To_Unbounded_String ("isRoleValid"), methodParams);
            methodArgs := new Java_Object_Access_Array'(This.userName, This.password, This.roles);
            resultBoolean := Boolean (method.invoke (anyType, methodArgs));
            return resultBoolean;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end isRoleValid;

   --  throws LicensingException
   function validRole (This : in out AuthenticationTag) return Unbounded_String is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := AuthenticationHelperFactory_Package.Create.getInstance (This.propertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("validRole"), null);
            result := Java_Unbox (method.invoke (anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end validRole;

   --  throws LicensingException
   function invalidRole (This : in out AuthenticationTag) return Unbounded_String is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := AuthenticationHelperFactory_Package.Create.getInstance (This.propertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("invalidRole"), null);
            result := Java_Unbox (method.invoke (anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end invalidRole;

   --  throws LicensingException
   function isAuthenticationSessionValid (This : in out AuthenticationTag) return Boolean is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      methodParams : Ada_Tags_Tag_Array_Access;
      method : Method_Access;
      methodArgs : Java_Object_Access_Array_Access;
      resultBoolean : Boolean;
   begin
        begin
            anyType := AuthenticationHelperFactory_Package.Create.getInstance (This.propertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            methodParams := new Ada_Tags_Tag_Array'(0 => This.roles.all'Tag);
            method := addressHelperClass.getMethod (To_Unbounded_String ("isAuthenticationSessionValid"), methodParams);
            methodArgs := new Java_Object_Access_Array'(0 => This.roles);
            resultBoolean := Boolean (method.invoke (anyType, methodArgs));
            return resultBoolean;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end isAuthenticationSessionValid;

   --  throws LicensingException
   function processIfNewLogin (This : in out AuthenticationTag) return Boolean is
      anyType : Java_Object_Access;
      helperClass : Ada.Tags.Tag;
      methodParams : Ada_Tags_Tag_Array_Access;
      method : Method_Access;
      methodArgs : Java_Object_Access_Array_Access;
      resultBoolean : Boolean;
   begin
        begin
            anyType := AuthenticationHelperFactory_Package.Create.getInstance (This.propertiesHashMap, This.pageContext);
            helperClass := anyType.all'Tag;
            methodParams := new Ada_Tags_Tag_Array'(This.userName.all'Tag, This.password.all'Tag);
            method := helperClass.getMethod (To_Unbounded_String ("processIfNewLogin"), methodParams);
            methodArgs := new Java_Object_Access_Array'(This.userName, This.password);
            resultBoolean := Boolean (method.invoke (anyType, methodArgs));
            return resultBoolean;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end processIfNewLogin;

   --  throws LicensingException
   function processInvalidation (This : in out AuthenticationTag) return Boolean is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      resultBoolean : Boolean;
   begin
        begin
            anyType := AuthenticationHelperFactory_Package.Create.getInstance (This.propertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("processInvalidation"), null);
            resultBoolean := Boolean (method.invoke (anyType, null));
            return resultBoolean;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end processInvalidation;

   --  throws JspTagException
   function doStartTag (This : in out AuthenticationTag) return Integer is
      stringUtil : StringUtil_Access;
      request : HttpServletRequest_Access;
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringUtil := StringUtil_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                request := HttpServletRequest_Access (This.pageContext.getRequest);
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String (" Request URI: "));
                stringBuffer.append (request.getRequestURI);
                This.logUtil.putF (stringBuffer.toString, AuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
            end if;
            if (This.command) /= (Null_Unbounded_String) then
                This.propertiesHashMap := StdUtil_Package.getInstance.createHashMap;
                if (Java_Compare_To (This.command, org_Package.allbinary.globals.GLOBALS2.NEWPASSWORD)) = (0) then
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                        This.logUtil.putF (To_Unbounded_String ("New Password"), AuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                    end if;
                    if not (AuthenticationTag'Class (This).newPassword) then
                        This.pageContext.getOut.print (To_Unbounded_String ("New Password Request Failed.<p/>"));
                        return EVAL_BODY_INCLUDE;
                    else
                        This.pageContext.getOut.print (To_Unbounded_String ("New Password Was Sent.<p/>"));
                        return SKIP_BODY;
                    end if;
                elsif (Java_Compare_To (This.command, org_Package.allbinary.globals.GLOBALS2.CHANGEPASSWORD)) = (0) then
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                        This.logUtil.putF (To_Unbounded_String ("Change Password"), AuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                    end if;
                    if not (AuthenticationTag'Class (This).changePassword) then
                        This.pageContext.getOut.print (To_Unbounded_String ("Password Change Attempt Failed.<p/>"));
                        return EVAL_BODY_INCLUDE;
                    else
                        This.pageContext.getOut.print (To_Unbounded_String ("Password Changed Successfully.<p/>"));
                        return SKIP_BODY;
                    end if;
                elsif (Java_Compare_To (This.command, WeblisketSessionData_Package.INVALIDATESESSION)) = (0) then
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                        This.logUtil.putF (To_Unbounded_String ("INVALIDATESESSION"), AuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                    end if;
                    return AuthenticationTag'Class (This).invalidateSession;
                else
                    if AuthenticationTag'Class (This).isSessionOld then
                        if AuthenticationTag'Class (This).processInvalidation then
                            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                                This.logUtil.putF (To_Unbounded_String ("Processing Invalidation"), AuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                            end if;
                            This.pageContext.getOut.print (To_Unbounded_String ("Please login again.<p>"));
                            if (Java_Compare_To (This.command, org_Package.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED)) = (0) then
                                return TagSupport_Package.SKIP_BODY;
                            else
                                return TagSupport_Package.EVAL_BODY_INCLUDE;
                            end if;
                        else
                            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                                This.logUtil.putF (To_Unbounded_String ("Preparing session for invalidation"), AuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                            end if;
                            if (Java_Compare_To (This.command, org_Package.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED)) = (0) then
                                return TagSupport_Package.SKIP_BODY;
                            else
                                return TagSupport_Package.EVAL_BODY_INCLUDE;
                            end if;
                        end if;
                    end if;
                    if ((((((This.userName) = (Null_Unbounded_String)) or else ((Java_Compare_To (This.userName, stringUtil.EMPTY_STRING)) = (0)))) and then ((((This.password) = (Null_Unbounded_String)) or else ((Java_Compare_To (This.password, stringUtil.EMPTY_STRING)) = (0))))) and then ((This.roles) /= (null))) and then (AuthenticationTag'Class (This).isAuthenticationSessionValid) then
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                            This.logUtil.putF (To_Unbounded_String ("Authenticated session is valid"), AuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                        end if;
                        if (Java_Compare_To (This.command, org_Package.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED)) = (0) then
                            return TagSupport_Package.EVAL_BODY_INCLUDE;
                        else
                            return TagSupport_Package.SKIP_BODY;
                        end if;
                    end if;
                    if (((This.userName) /= (Null_Unbounded_String)) and then ((This.password) /= (Null_Unbounded_String))) and then (AuthenticationTag'Class (This).processIfNewLogin) then
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                            This.logUtil.putF (To_Unbounded_String ("Processing new login."), AuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                        end if;
                        if AuthenticationTag'Class (This).isRoleValid then
                            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                                This.logUtil.putF (To_Unbounded_String ("Role is valid - Processing new login"), AuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                            end if;
                            This.pageContext.getOut.print (AuthenticationTag'Class (This).validRole);
                            if (Java_Compare_To (This.command, org_Package.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED)) = (0) then
                                return EVAL_BODY_INCLUDE;
                            else
                                return SKIP_BODY;
                            end if;
                        else
                            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                                This.logUtil.putF (To_Unbounded_String ("Role is not valid - Processing new login"), AuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                            end if;
                            This.pageContext.getOut.print (AuthenticationTag'Class (This).invalidRole);
                            if (Java_Compare_To (This.command, org_Package.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED)) = (0) then
                                return SKIP_BODY;
                            else
                                return EVAL_BODY_INCLUDE;
                            end if;
                        end if;
                    else
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                            This.logUtil.putF (To_Unbounded_String ("Invalid Login"), AuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                        end if;
                        if ((((This.userName) /= (Null_Unbounded_String)) and then ((Java_Compare_To (This.userName, stringUtil.EMPTY_STRING)) /= (0))) and then ((This.password) /= (Null_Unbounded_String))) and then ((Java_Compare_To (This.password, stringUtil.EMPTY_STRING)) /= (0)) then
                            This.pageContext.getOut.print (To_Unbounded_String ("Sorry your username and/or password is invalid.<p/>"));
                        end if;
                    end if;
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Major authentication error - userName: ")).append (This.userName).append (To_Unbounded_String (" Password: ")).append (This.password).append (To_Unbounded_String (" Command: ")).append (This.command).toString, AuthenticationTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
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

end admin.tags.AuthenticationTag_Package;


