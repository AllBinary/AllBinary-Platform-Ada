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


package body org.allbinary.business.user.username.UserName_Package is

   procedure Initialize_Fields (This : in out UserName'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   function getInstance return UserName_Access is
   begin
        return UserName_Package.instance;
   end getInstance;

   procedure Initialize (This : in out UserName'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UserName_Access is
      This : constant UserName_Access := new UserName;
   begin
      UserName_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out UserName'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Initialize_Fields (This);
        This.userName := Java_Unbox (hashMap.get (UserData_Package.USERNAME));
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return UserName_Access is
      This : constant UserName_Access := new UserName;
   begin
      UserName_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   function isValid (This : in out UserName) return Boolean is
   begin
        begin
            return UserName'Class (This).isValid (This.userName);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), UserName_Access'(This'Unchecked_Access), To_Unbounded_String ("isUserNameValid()"), e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function get (This : in out UserName) return Unbounded_String is
   begin
        return This.userName;
   end get;

   function isValid (This : in out UserName; aUserName : Unbounded_String) return Boolean is
      commonStrings : CommonStrings_Access;
      booleanFactory : BooleanFactory_Access;
      valid : Boolean;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        begin
            booleanFactory := BooleanFactory_Package.getInstance;
            valid := booleanFactory.TRUE;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VALIDATION) then
                This.logUtil.putF (To_Unbounded_String ("UserName: ") & aUserName, UserName_Access'(This'Unchecked_Access), commonStrings.IS_VALID);
            end if;
            if not (StringValidationUtil_Package.getInstance.isValidRequired (aUserName, 5, UserData_Package.MAXLEN)) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VALIDATION) then
                    This.logUtil.putF (To_Unbounded_String ("UserName is invalid"), UserName_Access'(This'Unchecked_Access), commonStrings.IS_VALID);
                end if;
                valid := booleanFactory.FALSE;
            end if;
            return valid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), UserName_Access'(This'Unchecked_Access), commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function getValidationInfo (aUserName : Unbounded_String) return Unbounded_String is
   begin
        if not (StringValidationUtil_Package.getInstance.isValidRequired (aUserName, 5, UserData_Package.MAXLEN)) then
            return To_Unbounded_String ("Please enter a User Name with more than 5 characters.<br/>");
        end if;
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getValidationInfo;

   procedure isValid (This : in out UserName; aUserName : Unbounded_String) is
      Java_Result : constant Boolean := UserName'Class (This).isValid (aUserName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure getValidationInfo (aUserName : Unbounded_String) is
      Java_Result : constant Unbounded_String := getValidationInfo (aUserName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getValidationInfo;

begin
   null;
   instance := UserName_Package.Create;

end org.allbinary.business.user.username.UserName_Package;


