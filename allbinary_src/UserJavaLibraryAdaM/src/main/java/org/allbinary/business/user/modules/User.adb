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
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package;
with org.allbinary.business.user.role.UserRoleB_Package; use org.allbinary.business.user.role.UserRoleB_Package;
with org.allbinary.business.user.role.UserRoleData_Package; use org.allbinary.business.user.role.UserRoleData_Package;
with org.allbinary.business.user.username.UserName_Package; use org.allbinary.business.user.username.UserName_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.business.user.modules.User_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package UserConfigurationDomDocumentMapping_Package renames Standard.org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package;
   package UserConfigurationInterfaceFactory_Package renames Standard.org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package;
   package UserRoleB_Package renames Standard.org.allbinary.business.user.role.UserRoleB_Package;
   package UserRoleData_Package renames Standard.org.allbinary.business.user.role.UserRoleData_Package;
   package UserName_Package renames Standard.org.allbinary.business.user.username.UserName_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package RequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.RequestParams_Package;
   package WeblisketSessionData_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out User'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.userName := Null_Unbounded_String;
      This.prefixName := Null_Unbounded_String;
      This.firstName := Null_Unbounded_String;
      This.lastName := Null_Unbounded_String;
      This.middleName := Null_Unbounded_String;
      This.suffixName := Null_Unbounded_String;
      This.company := Null_Unbounded_String;
      This.positionAtCompany := Null_Unbounded_String;
      This.mainEmail := Null_Unbounded_String;
      This.secondaryEmail := Null_Unbounded_String;
      This.homePhone := Null_Unbounded_String;
      This.cellPhone := Null_Unbounded_String;
      This.workPhone := Null_Unbounded_String;
      This.otherContact := Null_Unbounded_String;
      This.electronicDevice := Null_Unbounded_String;
      This.fax := Null_Unbounded_String;
      This.role := null;
      This.encryption := Null_Unbounded_String;
      This.secret := Null_Unbounded_String;
      
      This.enable_Field := Null_Unbounded_String;
      This.permissions := Null_Unbounded_String;
      
   end Initialize_Fields;


   procedure Initialize (This : in out User'Class) is
   begin
      Initialize_Fields (This);
        This.userConfigurationInterface := UserConfigurationInterfaceFactory_Package.getInstance;
        This.password := Password_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING);
   end Initialize;

   function Create return User_Access is
      This : constant User_Access := new User;
   begin
      User_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out User'Class; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      request : constant HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
   begin
      Initialize_Fields (This);
        User'Class (This).getFormData (RequestParams_Package.Create (request).toHashMap);
        This.userConfigurationInterface := UserConfigurationInterfaceFactory_Package.getInstance (User'Class (This).getRole);
   end Initialize;

   function Create (request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return User_Access is
      This : constant User_Access := new User;
   begin
      User_Package.Initialize (This.all, request_Param);
      return This;
   end Create;

   procedure Initialize (This : in out User'Class; userHashMap_Param : access HashMap_Package.HashMap'Class) is
      userHashMap : constant HashMap_Access := HashMap_Access (userHashMap_Param);
   begin
      Initialize_Fields (This);
        User'Class (This).getFormData (userHashMap);
        This.userConfigurationInterface := UserConfigurationInterfaceFactory_Package.getInstance (User'Class (This).getRole);
   end Initialize;

   function Create (userHashMap_Param : access HashMap_Package.HashMap'Class) return User_Access is
      This : constant User_Access := new User;
   begin
      User_Package.Initialize (This.all, userHashMap_Param);
      return This;
   end Create;

   --  throws Exception
   procedure getFormData (This : in out User; userHashMap_Param : access HashMap_Package.HashMap'Class) is
      userHashMap : constant HashMap_Access := HashMap_Access (userHashMap_Param);
      stringUtil : StringUtil_Access;
      passwordString : Unbounded_String;
      stringValidationUtil : StringValidationUtil_Access;
      encryption : Unbounded_String;
      secret : Unbounded_String;
   begin
        This.userName := UserName_Package.Create (userHashMap).get;
        stringUtil := StringUtil_Package.getInstance;
        passwordString := stringUtil.getNonNull (Java_Unbox (userHashMap.get (UserData_Package.PASSWORD)));
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        if (stringValidationUtil.isEmpty (This.userName)) and then (stringValidationUtil.isEmpty (passwordString)) then
            This.userName := stringUtil.getNonNull (Java_Unbox (userHashMap.get (WeblisketSessionData_Package.REMOVABLEUSERNAME)));
            passwordString := stringUtil.getNonNull (Java_Unbox (userHashMap.get (WeblisketSessionData_Package.REMOVABLEPASSWORD)));
        end if;
        encryption := stringUtil.getNonNull (Java_Unbox (userHashMap.get (EntryData_Package.getInstance.ENCRYPTION)));
        secret := stringUtil.getNonNull (Java_Unbox (userHashMap.get (UserData_Package.SECRET)));
        This.password := Password_Package.Create (passwordString);
        This.prefixName := stringUtil.getNonNull (Java_Unbox (userHashMap.get (UserData_Package.PREFIXNAME)));
        This.firstName := stringUtil.getNonNull (Java_Unbox (userHashMap.get (UserData_Package.FIRSTNAME)));
        This.lastName := stringUtil.getNonNull (Java_Unbox (userHashMap.get (UserData_Package.LASTNAME)));
        This.middleName := stringUtil.getNonNull (Java_Unbox (userHashMap.get (UserData_Package.MIDDLENAME)));
        This.suffixName := stringUtil.getNonNull (Java_Unbox (userHashMap.get (UserData_Package.SUFFIXNAME)));
        This.company := stringUtil.getNonNull (Java_Unbox (userHashMap.get (UserData_Package.COMPANY)));
        This.positionAtCompany := stringUtil.getNonNull (Java_Unbox (userHashMap.get (UserData_Package.POSITIONATCOMPANY)));
        This.mainEmail := stringUtil.getNonNull (Java_Unbox (userHashMap.get (UserData_Package.MAINEMAIL)));
        This.secondaryEmail := stringUtil.getNonNull (Java_Unbox (userHashMap.get (UserData_Package.SECONDARYEMAIL)));
        This.homePhone := stringUtil.getNonNull (Java_Unbox (userHashMap.get (UserData_Package.HOMEPHONE)));
        This.cellPhone := stringUtil.getNonNull (Java_Unbox (userHashMap.get (UserData_Package.CELLPHONE)));
        This.workPhone := stringUtil.getNonNull (Java_Unbox (userHashMap.get (UserData_Package.WORKPHONE)));
        This.otherContact := stringUtil.getNonNull (Java_Unbox (userHashMap.get (UserData_Package.OTHERCONTACT)));
        This.electronicDevice := stringUtil.getNonNull (Java_Unbox (userHashMap.get (UserData_Package.ELECTRONICDEVICE)));
        This.fax := stringUtil.getNonNull (Java_Unbox (userHashMap.get (UserData_Package.FAX)));
        This.role := UserRoleB_Package.getRole (Java_Unbox (userHashMap.get (Java_Box (UserRoleData_Package.NAME.toString))));
        This.permissions := stringUtil.getNonNull (Java_Unbox (userHashMap.get (UserData_Package.PERMISSIONS)));
        if (not (stringValidationUtil.isEmpty (This.permissions))) and then ((Java_Compare_To (This.permissions, StoreFrontData_Package.getInstance.NAME)) = (0)) then
            This.permissions := stringUtil.getNonNull (Java_Unbox (userHashMap.get (StoreFrontData_Package.getInstance.NAME)));
        elsif (This.permissions) = (Null_Unbounded_String) then
            This.permissions := To_Unbounded_String ("No Permissions");
        end if;
        This.enable_Field := stringUtil.getNonNull (Java_Unbox (userHashMap.get (EntryData_Package.getInstance.ENABLE)));
   end getFormData;

   function isValid (This : in out User) return Boolean is
      valid : Boolean;
      stringValidationUtil : StringValidationUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            valid := True;
            if not (UserName_Package.getInstance.isValid (This.userName).booleanValue) then
                valid := False;
            end if;
            if not (This.password.isValid.booleanValue) then
                valid := False;
            end if;
            stringValidationUtil := StringValidationUtil_Package.getInstance;
            if not (stringValidationUtil.isValidRequired (This.firstName, 1, UserData_Package.MAXLEN)) then
                valid := False;
            end if;
            if not (stringValidationUtil.isValidRequired (This.lastName, 1, UserData_Package.MAXLEN)) then
                valid := False;
            end if;
            if (not (stringValidationUtil.isValidRequired (This.mainEmail, 1, UserData_Package.MAXLEN))) or else ((Java_Index_Of (This.mainEmail, Java_Image (To_Unbounded_String ("@")))) = (-(1))) then
                valid := False;
            end if;
            return valid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VALIDATIONERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), User_Access'(This'Unchecked_Access), commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out User) return Unbounded_String is
      stringValidationUtil : StringValidationUtil_Access;
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringValidationUtil := StringValidationUtil_Package.getInstance;
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (UserName_Package.getValidationInfo (This.userName));
            stringBuffer.append (This.password.getValidationInfo);
            if not (stringValidationUtil.isValidRequired (This.firstName, 1, UserData_Package.MAXLEN)) then
                stringBuffer.append (To_Unbounded_String ("Please enter a valid First Name.<br />"));
            end if;
            if not (stringValidationUtil.isValidRequired (This.lastName, 1, UserData_Package.MAXLEN)) then
                stringBuffer.append (To_Unbounded_String ("Please enter a valid Last Name.<br />"));
            end if;
            if (not (stringValidationUtil.isValidRequired (This.mainEmail, 1, UserData_Package.MAXLEN))) or else ((Java_Index_Of (This.mainEmail, Java_Image (To_Unbounded_String ("@")))) = (-(1))) then
                stringBuffer.append (To_Unbounded_String ("Please enter a valid email address.<br />"));
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), User_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   procedure setUserName (This : in out User; value : Unbounded_String) is
   begin
        This.userName := value;
   end setUserName;

   procedure setPrefixName (This : in out User; value : Unbounded_String) is
   begin
        This.prefixName := value;
   end setPrefixName;

   procedure setFirstName (This : in out User; value : Unbounded_String) is
   begin
        This.firstName := value;
   end setFirstName;

   procedure setLastName (This : in out User; value : Unbounded_String) is
   begin
        This.lastName := value;
   end setLastName;

   procedure setMiddleName (This : in out User; value : Unbounded_String) is
   begin
        This.middleName := value;
   end setMiddleName;

   procedure setSuffixName (This : in out User; value : Unbounded_String) is
   begin
        This.suffixName := value;
   end setSuffixName;

   procedure setCompany (This : in out User; value : Unbounded_String) is
   begin
        This.company := value;
   end setCompany;

   procedure setPositionAtCompany (This : in out User; value : Unbounded_String) is
   begin
        This.positionAtCompany := value;
   end setPositionAtCompany;

   procedure setMainEmail (This : in out User; value : Unbounded_String) is
   begin
        This.mainEmail := value;
   end setMainEmail;

   procedure setSecondaryEmail (This : in out User; value : Unbounded_String) is
   begin
        This.secondaryEmail := value;
   end setSecondaryEmail;

   procedure setHomePhone (This : in out User; value : Unbounded_String) is
   begin
        This.homePhone := value;
   end setHomePhone;

   procedure setCellPhone (This : in out User; value : Unbounded_String) is
   begin
        This.cellPhone := value;
   end setCellPhone;

   procedure setWorkPhone (This : in out User; value : Unbounded_String) is
   begin
        This.workPhone := value;
   end setWorkPhone;

   procedure setOtherContact (This : in out User; value : Unbounded_String) is
   begin
        This.otherContact := value;
   end setOtherContact;

   procedure setElectronicContact (This : in out User; value : Unbounded_String) is
   begin
        This.electronicDevice := value;
   end setElectronicContact;

   procedure setFax (This : in out User; value : Unbounded_String) is
   begin
        This.fax := value;
   end setFax;

   procedure setRole (This : in out User; role_Param : access UserRole_Package.UserRole'Class) is
      role : constant UserRole_Access := UserRole_Access (role_Param);
   begin
        This.role := role;
   end setRole;

   procedure setPermissions (This : in out User; value : Unbounded_String) is
   begin
        This.permissions := value;
   end setPermissions;

   procedure setEncryption (This : in out User; value : Unbounded_String) is
   begin
        This.encryption := value;
   end setEncryption;

   procedure setSecret (This : in out User; value : Unbounded_String) is
   begin
        This.secret := value;
   end setSecret;

   procedure setPassword (This : in out User; value : Unbounded_String) is
   begin
        This.password.set (value);
   end setPassword;

   procedure enable (This : in out User) is
   begin
        User'Class (This).setEnable (To_Unbounded_String ("Yes"));
   end enable;

   procedure disable (This : in out User) is
   begin
        User'Class (This).setEnable (To_Unbounded_String ("No"));
   end disable;

   procedure setEnable (This : in out User; enable : Unbounded_String) is
   begin
        This.enable_Field := enable;
   end setEnable;

   function getUserName (This : in out User) return Unbounded_String is
   begin
        return This.userName;
   end getUserName;

   function getPrefixName (This : in out User) return Unbounded_String is
   begin
        return This.prefixName;
   end getPrefixName;

   function getFirstName (This : in out User) return Unbounded_String is
   begin
        return This.firstName;
   end getFirstName;

   function getLastName (This : in out User) return Unbounded_String is
   begin
        return This.lastName;
   end getLastName;

   function getMiddleName (This : in out User) return Unbounded_String is
   begin
        return This.middleName;
   end getMiddleName;

   function getSuffixName (This : in out User) return Unbounded_String is
   begin
        return This.suffixName;
   end getSuffixName;

   function getCompany (This : in out User) return Unbounded_String is
   begin
        return This.company;
   end getCompany;

   function getPositionAtCompany (This : in out User) return Unbounded_String is
   begin
        return This.positionAtCompany;
   end getPositionAtCompany;

   function getMainEmail (This : in out User) return Unbounded_String is
   begin
        return This.mainEmail;
   end getMainEmail;

   function getSecondaryEmail (This : in out User) return Unbounded_String is
   begin
        return This.secondaryEmail;
   end getSecondaryEmail;

   function getHomePhone (This : in out User) return Unbounded_String is
   begin
        return This.homePhone;
   end getHomePhone;

   function getCellPhone (This : in out User) return Unbounded_String is
   begin
        return This.cellPhone;
   end getCellPhone;

   function getWorkPhone (This : in out User) return Unbounded_String is
   begin
        return This.workPhone;
   end getWorkPhone;

   function getOtherContact (This : in out User) return Unbounded_String is
   begin
        return This.otherContact;
   end getOtherContact;

   function getElectronicContact (This : in out User) return Unbounded_String is
   begin
        return This.electronicDevice;
   end getElectronicContact;

   function getFax (This : in out User) return Unbounded_String is
   begin
        return This.fax;
   end getFax;

   function getRole (This : in out User) return UserRole_Access is
   begin
        return This.role;
   end getRole;

   function getPermissions (This : in out User) return Unbounded_String is
   begin
        return This.permissions;
   end getPermissions;

   function getEncryption (This : in out User) return Unbounded_String is
   begin
        return This.encryption;
   end getEncryption;

   function getSecret (This : in out User) return Unbounded_String is
   begin
        return This.secret;
   end getSecret;

   function getPassword (This : in out User) return Unbounded_String is
   begin
        return This.password.get;
   end getPassword;

   --  throws Exception
   function toVector (This : in out User) return BasicArrayList_Access is
      values : BasicArrayList_Access;
      userConfigurationDomDocumentMapping : UserConfigurationDomDocumentMapping_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        values := BasicArrayList_Access (BasicArrayListD_Package.Create);
        values.add (This.userName);
        values.add (This.prefixName);
        values.add (This.firstName);
        values.add (This.lastName);
        values.add (This.middleName);
        values.add (This.suffixName);
        values.add (This.company);
        values.add (This.positionAtCompany);
        values.add (This.mainEmail);
        values.add (This.secondaryEmail);
        values.add (This.homePhone);
        values.add (This.cellPhone);
        values.add (This.workPhone);
        values.add (This.otherContact);
        values.add (This.electronicDevice);
        values.add (This.fax);
        values.add (User'Class (This).getRole.toString);
        userConfigurationDomDocumentMapping := UserConfigurationDomDocumentMapping_Package.Create (User'Class (This).getUserConfigurationInterface);
        values.add (userConfigurationDomDocumentMapping.toDomDocumentString);
        values.add (This.permissions);
        values.addAllList (This.password.toVector (This.secret));
        values.add (This.enable_Field);
        calendar := Calendar_Package.getInstance;
        time := Java_New_String (calendar.getTimeInMillis.toString);
        values.add (time);
        values.add (time);
        return values;
   end toVector;

   --  throws Exception
   function toHashMap (This : in out User) return HashMap_Access is
      values : HashMap_Access;
      userConfigurationDomDocumentMapping : UserConfigurationDomDocumentMapping_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        values := StdUtil_Package.getInstance.createHashMap;
        values.put (UserData_Package.USERNAME, This.userName);
        values.put (UserData_Package.PREFIXNAME, This.prefixName);
        values.put (UserData_Package.FIRSTNAME, This.firstName);
        values.put (UserData_Package.LASTNAME, This.lastName);
        values.put (UserData_Package.MIDDLENAME, This.middleName);
        values.put (UserData_Package.SUFFIXNAME, This.suffixName);
        values.put (UserData_Package.COMPANY, This.company);
        values.put (UserData_Package.POSITIONATCOMPANY, This.positionAtCompany);
        values.put (UserData_Package.MAINEMAIL, This.mainEmail);
        values.put (UserData_Package.SECONDARYEMAIL, This.secondaryEmail);
        values.put (UserData_Package.HOMEPHONE, This.homePhone);
        values.put (UserData_Package.CELLPHONE, This.cellPhone);
        values.put (UserData_Package.WORKPHONE, This.workPhone);
        values.put (UserData_Package.OTHERCONTACT, This.otherContact);
        values.put (UserData_Package.ELECTRONICDEVICE, This.electronicDevice);
        values.put (UserData_Package.FAX, This.fax);
        if (User'Class (This).getRole) /= (null) then
            values.put (UserRoleData_Package.NAME.toString, User'Class (This).getRole.toString);
        end if;
        userConfigurationDomDocumentMapping := UserConfigurationDomDocumentMapping_Package.Create (User'Class (This).getUserConfigurationInterface);
        values.put (UserData_Package.CONFIGURATION, userConfigurationDomDocumentMapping.toDomDocumentString);
        values.put (UserData_Package.PERMISSIONS, This.permissions);
        values.putAll (This.password.toHashMap (This.secret));
        values.put (EntryData_Package.getInstance.ENABLE, This.enable_Field);
        calendar := Calendar_Package.getInstance;
        time := Java_New_String (calendar.getTimeInMillis.toString);
        values.put (EntryData_Package.getInstance.LASTMODIFIED, time);
        return values;
   end toHashMap;

   function toPasswordHashMap (This : in out User) return HashMap_Access is
   begin
        return This.password.toHashMap (This.secret);
   end toPasswordHashMap;

   procedure validateSession (This : in out User; weblisketSession_Param : access WeblisketSessionInterface_Package.WeblisketSessionInterface'Class) is
      weblisketSession : constant WeblisketSessionInterface_Access := WeblisketSessionInterface_Access (weblisketSession_Param);
   begin
        weblisketSession.setAuthenticated;
        weblisketSession.setRole (User'Class (This).getRole);
        weblisketSession.setUserName (User'Class (This).getUserName);
   end validateSession;

   procedure updateSession (This : in out User; weblisketSession_Param : access WeblisketSessionInterface_Package.WeblisketSessionInterface'Class) is
      weblisketSession : constant WeblisketSessionInterface_Access := WeblisketSessionInterface_Access (weblisketSession_Param);
   begin
        null;
   end updateSession;

   function isSessionValid (This : in out User) return Boolean is
   begin
        return True;
   end isSessionValid;

   --  throws Exception
   function getKey (This : in out User) return Java_Object_Access is
   begin
        return Java_Box (This.userName);
   end getKey;

   function toValidationInfoDoc (This : in out User) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out User; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   function getUserConfigurationInterface (This : in out User) return UserConfigurationInterface_Access is
   begin
        return This.userConfigurationInterface;
   end getUserConfigurationInterface;

   procedure setUserConfigurationInterface (This : in out User; userConfigurationInterface_Param : access UserConfigurationInterface_Package.UserConfigurationInterface'Class) is
      userConfigurationInterface : constant UserConfigurationInterface_Access := UserConfigurationInterface_Access (userConfigurationInterface_Param);
   begin
        This.userConfigurationInterface := userConfigurationInterface;
   end setUserConfigurationInterface;

   procedure toValidationInfoNode (This : in out User; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := User'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end org.allbinary.business.user.modules.User_Package;


