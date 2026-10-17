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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Map_Package; use java.util.Map_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package; use org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.business.installer.DynamicInitDb_Package; use org.allbinary.business.installer.DynamicInitDb_Package;
with org.allbinary.business.installer.InitializerData_Package; use org.allbinary.business.installer.InitializerData_Package;

package org.allbinary.business.installer.InitializerDatabase_Package is

   package DatabaseConnectionInfoInterface_Package renames Standard.org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
   package DbConnectionInfo_Package renames Standard.org.allbinary.business.init.db.DbConnectionInfo_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type InitializerDatabase is tagged;
   type InitializerDatabase_Access is access all InitializerDatabase'Class;
   type InitializerDatabase_Access_Array is array (Natural range <>) of InitializerDatabase_Access;
   type InitializerDatabase_Access_Array_Access is access all InitializerDatabase_Access_Array;

   type InitializerDatabase is new Java_Object with record
      logUtil : LogUtil_Access;
      adminDbUserName : Unbounded_String;
      adminDbPassword : Unbounded_String;
      adminJdbcDriver : Unbounded_String;
      adminSchema : Unbounded_String;
      adminServer : Unbounded_String;
      adminPort : Unbounded_String;
      initDb : DynamicInitDb_Access;
   end record;
   MAXDB : Integer;
   MAX : Integer;
   MIN : Integer;
   MINPASSWORD : Integer;

   procedure Initialize (This : in out InitializerDatabase'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; map_Param : access Map_Package.Map'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; map_Param : access Map_Package.Map'Class) return InitializerDatabase_Access;
   procedure Initialize (This : in out InitializerDatabase'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; initHashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; initHashMap_Param : access HashMap_Package.HashMap'Class) return InitializerDatabase_Access;
   procedure getFormData (This : in out InitializerDatabase; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function isJdbcDriverValid (This : in out InitializerDatabase; jdbcDriverClassPathString : Unbounded_String) return Boolean;
   procedure isJdbcDriverValid (This : in out InitializerDatabase; jdbcDriverClassPathString : Unbounded_String);
   function isValid (This : in out InitializerDatabase) return Boolean;
   function getJdbcDriverValidationInfo (This : in out InitializerDatabase; jdbcDriver : Unbounded_String) return Unbounded_String;
   procedure getJdbcDriverValidationInfo (This : in out InitializerDatabase; jdbcDriver : Unbounded_String);
   function getInvalidInfo (This : in out InitializerDatabase) return Unbounded_String;
   function createUsers (This : in out InitializerDatabase) return Boolean;
   function createDatabases (This : in out InitializerDatabase) return Boolean;
   function createTables (This : in out InitializerDatabase) return Boolean;
   function getAdminDbUserName (This : in out InitializerDatabase) return Unbounded_String;
   procedure setAdminDbUserName (This : in out InitializerDatabase; adminDbUserName : Unbounded_String);
   function getAdminDbPassword (This : in out InitializerDatabase) return Unbounded_String;
   procedure setAdminDbPassword (This : in out InitializerDatabase; adminDbPassword : Unbounded_String);
   function getAdminJdbcDriver (This : in out InitializerDatabase) return Unbounded_String;
   procedure setAdminJdbcDriver (This : in out InitializerDatabase; adminJdbcDriver : Unbounded_String);
   function getAdminSchema (This : in out InitializerDatabase) return Unbounded_String;
   procedure setAdminSchema (This : in out InitializerDatabase; adminSchema : Unbounded_String);
   function getAdminServer (This : in out InitializerDatabase) return Unbounded_String;
   procedure setAdminServer (This : in out InitializerDatabase; adminServer : Unbounded_String);
   function getAdminPort (This : in out InitializerDatabase) return Unbounded_String;
   procedure setAdminPort (This : in out InitializerDatabase; adminPort : Unbounded_String);

end org.allbinary.business.installer.InitializerDatabase_Package;


