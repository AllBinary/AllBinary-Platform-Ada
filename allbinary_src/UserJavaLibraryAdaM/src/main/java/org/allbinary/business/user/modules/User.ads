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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.Calendar_Package; use java.util.Calendar_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package;
with org.allbinary.business.user.password.Password_Package; use org.allbinary.business.user.password.Password_Package;
with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.business.user.role.UserRoleB_Package; use org.allbinary.business.user.role.UserRoleB_Package;
with org.allbinary.business.user.role.UserRoleData_Package; use org.allbinary.business.user.role.UserRoleData_Package;
with org.allbinary.business.user.username.UserName_Package; use org.allbinary.business.user.username.UserName_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.business.user.modules.User_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package UserConfigurationDomDocumentMapping_Package renames Standard.org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package;
   package UserConfigurationInterface_Package renames Standard.org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
   package UserConfigurationInterfaceFactory_Package renames Standard.org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package;
   package Password_Package renames Standard.org.allbinary.business.user.password.Password_Package;
   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
   package UserRoleB_Package renames Standard.org.allbinary.business.user.role.UserRoleB_Package;
   package UserRoleData_Package renames Standard.org.allbinary.business.user.role.UserRoleData_Package;
   package UserName_Package renames Standard.org.allbinary.business.user.username.UserName_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package RequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.RequestParams_Package;
   package WeblisketSessionData_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;
   package WeblisketSessionInterface_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type User is tagged;
   type User_Access is access all User'Class;
   type User_Access_Array is array (Natural range <>) of User_Access;
   type User_Access_Array_Access is access all User_Access_Array;

   type User is new UserInterface with record
      logUtil : LogUtil_Access;
      userName : Unbounded_String;
      prefixName : Unbounded_String;
      firstName : Unbounded_String;
      lastName : Unbounded_String;
      middleName : Unbounded_String;
      suffixName : Unbounded_String;
      company : Unbounded_String;
      positionAtCompany : Unbounded_String;
      mainEmail : Unbounded_String;
      secondaryEmail : Unbounded_String;
      homePhone : Unbounded_String;
      cellPhone : Unbounded_String;
      workPhone : Unbounded_String;
      otherContact : Unbounded_String;
      electronicDevice : Unbounded_String;
      fax : Unbounded_String;
      role : UserRole_Access;
      encryption : Unbounded_String;
      secret : Unbounded_String;
      password : Password_Access;
      enable : Unbounded_String;
      permissions : Unbounded_String;
      userConfigurationInterface : UserConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out User'Class);
   function Create return User_Access;
   procedure getFormData (This : in out User; userHashMap : HashMap_Access);
   function isValid (This : in out User) return Boolean;
   procedure isValid (This : in out User);
   function validationInfo (This : in out User) return Unbounded_String;
   procedure validationInfo (This : in out User);
   procedure setUserName (This : in out User; value : Unbounded_String);
   procedure setPrefixName (This : in out User; value : Unbounded_String);
   procedure setFirstName (This : in out User; value : Unbounded_String);
   procedure setLastName (This : in out User; value : Unbounded_String);
   procedure setMiddleName (This : in out User; value : Unbounded_String);
   procedure setSuffixName (This : in out User; value : Unbounded_String);
   procedure setCompany (This : in out User; value : Unbounded_String);
   procedure setPositionAtCompany (This : in out User; value : Unbounded_String);
   procedure setMainEmail (This : in out User; value : Unbounded_String);
   procedure setSecondaryEmail (This : in out User; value : Unbounded_String);
   procedure setHomePhone (This : in out User; value : Unbounded_String);
   procedure setCellPhone (This : in out User; value : Unbounded_String);
   procedure setWorkPhone (This : in out User; value : Unbounded_String);
   procedure setOtherContact (This : in out User; value : Unbounded_String);
   procedure setElectronicContact (This : in out User; value : Unbounded_String);
   procedure setFax (This : in out User; value : Unbounded_String);
   procedure setRole (This : in out User; role : UserRole_Access);
   procedure setPermissions (This : in out User; value : Unbounded_String);
   procedure setEncryption (This : in out User; value : Unbounded_String);
   procedure setSecret (This : in out User; value : Unbounded_String);
   procedure setPassword (This : in out User; value : Unbounded_String);
   procedure enable (This : in out User);
   procedure disable (This : in out User);
   procedure setEnable (This : in out User; enable : Unbounded_String);
   function getUserName (This : in out User) return Unbounded_String;
   procedure getUserName (This : in out User);
   function getPrefixName (This : in out User) return Unbounded_String;
   procedure getPrefixName (This : in out User);
   function getFirstName (This : in out User) return Unbounded_String;
   procedure getFirstName (This : in out User);
   function getLastName (This : in out User) return Unbounded_String;
   procedure getLastName (This : in out User);
   function getMiddleName (This : in out User) return Unbounded_String;
   procedure getMiddleName (This : in out User);
   function getSuffixName (This : in out User) return Unbounded_String;
   procedure getSuffixName (This : in out User);
   function getCompany (This : in out User) return Unbounded_String;
   procedure getCompany (This : in out User);
   function getPositionAtCompany (This : in out User) return Unbounded_String;
   procedure getPositionAtCompany (This : in out User);
   function getMainEmail (This : in out User) return Unbounded_String;
   procedure getMainEmail (This : in out User);
   function getSecondaryEmail (This : in out User) return Unbounded_String;
   procedure getSecondaryEmail (This : in out User);
   function getHomePhone (This : in out User) return Unbounded_String;
   procedure getHomePhone (This : in out User);
   function getCellPhone (This : in out User) return Unbounded_String;
   procedure getCellPhone (This : in out User);
   function getWorkPhone (This : in out User) return Unbounded_String;
   procedure getWorkPhone (This : in out User);
   function getOtherContact (This : in out User) return Unbounded_String;
   procedure getOtherContact (This : in out User);
   function getElectronicContact (This : in out User) return Unbounded_String;
   procedure getElectronicContact (This : in out User);
   function getFax (This : in out User) return Unbounded_String;
   procedure getFax (This : in out User);
   function getRole (This : in out User) return UserRole_Access;
   procedure getRole (This : in out User);
   function getPermissions (This : in out User) return Unbounded_String;
   procedure getPermissions (This : in out User);
   function getEncryption (This : in out User) return Unbounded_String;
   procedure getEncryption (This : in out User);
   function getSecret (This : in out User) return Unbounded_String;
   procedure getSecret (This : in out User);
   function getPassword (This : in out User) return Unbounded_String;
   procedure getPassword (This : in out User);
   function toVector (This : in out User) return BasicArrayList_Access;
   procedure toVector (This : in out User);
   function toHashMap (This : in out User) return HashMap_Access;
   procedure toHashMap (This : in out User);
   function toPasswordHashMap (This : in out User) return HashMap_Access;
   procedure toPasswordHashMap (This : in out User);
   procedure validateSession (This : in out User; weblisketSession : WeblisketSessionInterface_Access);
   procedure updateSession (This : in out User; weblisketSession : WeblisketSessionInterface_Access);
   function isSessionValid (This : in out User) return Boolean;
   procedure isSessionValid (This : in out User);
   function getKey (This : in out User) return Java_Object_Access;
   procedure getKey (This : in out User);
   function toValidationInfoDoc (This : in out User) return Document_Access;
   procedure toValidationInfoDoc (This : in out User);
   function toValidationInfoNode (This : in out User; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out User; document : Document_Access);
   function getUserConfigurationInterface (This : in out User) return UserConfigurationInterface_Access;
   procedure getUserConfigurationInterface (This : in out User);
   procedure setUserConfigurationInterface (This : in out User; userConfigurationInterface : UserConfigurationInterface_Access);

end org.allbinary.business.user.modules.User_Package;


