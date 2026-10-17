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
with java.util.Calendar_Package; use java.util.Calendar_Package;
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

   package Calendar_Package renames Standard.java.util.Calendar_Package;
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
   function validationInfo (This : in out User) return Unbounded_String;
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
   function getPrefixName (This : in out User) return Unbounded_String;
   function getFirstName (This : in out User) return Unbounded_String;
   function getLastName (This : in out User) return Unbounded_String;
   function getMiddleName (This : in out User) return Unbounded_String;
   function getSuffixName (This : in out User) return Unbounded_String;
   function getCompany (This : in out User) return Unbounded_String;
   function getPositionAtCompany (This : in out User) return Unbounded_String;
   function getMainEmail (This : in out User) return Unbounded_String;
   function getSecondaryEmail (This : in out User) return Unbounded_String;
   function getHomePhone (This : in out User) return Unbounded_String;
   function getCellPhone (This : in out User) return Unbounded_String;
   function getWorkPhone (This : in out User) return Unbounded_String;
   function getOtherContact (This : in out User) return Unbounded_String;
   function getElectronicContact (This : in out User) return Unbounded_String;
   function getFax (This : in out User) return Unbounded_String;
   function getRole (This : in out User) return UserRole_Access;
   function getPermissions (This : in out User) return Unbounded_String;
   function getEncryption (This : in out User) return Unbounded_String;
   function getSecret (This : in out User) return Unbounded_String;
   function getPassword (This : in out User) return Unbounded_String;
   function toVector (This : in out User) return BasicArrayList_Access;
   function toHashMap (This : in out User) return HashMap_Access;
   function toPasswordHashMap (This : in out User) return HashMap_Access;
   procedure validateSession (This : in out User; weblisketSession : WeblisketSessionInterface_Access);
   procedure updateSession (This : in out User; weblisketSession : WeblisketSessionInterface_Access);
   function isSessionValid (This : in out User) return Boolean;
   function getKey (This : in out User) return Java_Object_Access;
   function toValidationInfoDoc (This : in out User) return Document_Access;
   function toValidationInfoNode (This : in out User; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out User; document : Document_Access);
   function getUserConfigurationInterface (This : in out User) return UserConfigurationInterface_Access;
   procedure setUserConfigurationInterface (This : in out User; userConfigurationInterface : UserConfigurationInterface_Access);

end org.allbinary.business.user.modules.User_Package;


