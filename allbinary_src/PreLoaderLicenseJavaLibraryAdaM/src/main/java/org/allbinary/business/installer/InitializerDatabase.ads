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

with AllBinary_Java;
limited with org.allbinary.business.installer.InitializerDatabase_Package;
package org.allbinary.business.installer.InitializerDatabase_Package_References is
   type InitializerDatabase_Access is access all org.allbinary.business.installer.InitializerDatabase_Package.InitializerDatabase'Class;
   type InitializerDatabase_Access_Array is array (Natural range <>) of InitializerDatabase_Access;
   type InitializerDatabase_Access_Array_Access is access all InitializerDatabase_Access_Array;
   type InitializerDatabase_Access_Array_Access_Array is array (Natural range <>) of InitializerDatabase_Access_Array_Access;
   type InitializerDatabase_Access_Array_Access_Array_Access is access all InitializerDatabase_Access_Array_Access_Array;
   type InitializerDatabase_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitializerDatabase_Access_Array_Access;
   end record;
   function Java_Box (Value : InitializerDatabase_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitializerDatabase_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitializerDatabase_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitializerDatabase_Access_Array_Access is (if Value /= null and then Value.all in InitializerDatabase_Access_Array_Object'Class then InitializerDatabase_Access_Array_Object'Class (Value.all).Value else null);
   type InitializerDatabase_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitializerDatabase_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InitializerDatabase_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitializerDatabase_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitializerDatabase_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitializerDatabase_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InitializerDatabase_Access_Array_Access_Array_Object'Class then InitializerDatabase_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.installer.InitializerDatabase_Package_References;

with org.allbinary.business.installer.InitializerDatabase_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with java.util.Map_Package; use java.util.Map_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.business.installer.DynamicInitDb_Package;
with org.allbinary.business.installer.DynamicInitDb_Package_References;

package org.allbinary.business.installer.InitializerDatabase_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Map_Package renames Standard.java.util.Map_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype DynamicInitDb_Access is org.allbinary.business.installer.DynamicInitDb_Package_References.DynamicInitDb_Access;
   use type DynamicInitDb_Access;
   subtype DynamicInitDb_Access_Array is org.allbinary.business.installer.DynamicInitDb_Package_References.DynamicInitDb_Access_Array;
   use type DynamicInitDb_Access_Array;
   subtype DynamicInitDb_Access_Array_Access is org.allbinary.business.installer.DynamicInitDb_Package_References.DynamicInitDb_Access_Array_Access;
   use type DynamicInitDb_Access_Array_Access;
   subtype DynamicInitDb_Access_Array_Access_Array is org.allbinary.business.installer.DynamicInitDb_Package_References.DynamicInitDb_Access_Array_Access_Array;
   use type DynamicInitDb_Access_Array_Access_Array;
   subtype DynamicInitDb_Access_Array_Access_Array_Access is org.allbinary.business.installer.DynamicInitDb_Package_References.DynamicInitDb_Access_Array_Access_Array_Access;
   use type DynamicInitDb_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InitializerDatabase_Access is org.allbinary.business.installer.InitializerDatabase_Package_References.InitializerDatabase_Access;
   function "=" (Left, Right : InitializerDatabase_Access) return Boolean renames org.allbinary.business.installer.InitializerDatabase_Package_References."=";
   subtype InitializerDatabase_Access_Array is org.allbinary.business.installer.InitializerDatabase_Package_References.InitializerDatabase_Access_Array;
   function "=" (Left, Right : InitializerDatabase_Access_Array) return Boolean renames org.allbinary.business.installer.InitializerDatabase_Package_References."=";
   subtype InitializerDatabase_Access_Array_Access is org.allbinary.business.installer.InitializerDatabase_Package_References.InitializerDatabase_Access_Array_Access;
   function "=" (Left, Right : InitializerDatabase_Access_Array_Access) return Boolean renames org.allbinary.business.installer.InitializerDatabase_Package_References."=";
   function Java_Box (Value : InitializerDatabase_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.installer.InitializerDatabase_Package_References.Java_Box;
   function Java_Unbox_InitializerDatabase_Access_Array (Value : access Java_Object'Class) return InitializerDatabase_Access_Array_Access renames org.allbinary.business.installer.InitializerDatabase_Package_References.Java_Unbox_InitializerDatabase_Access_Array;
   subtype InitializerDatabase_Access_Array_Access_Array is org.allbinary.business.installer.InitializerDatabase_Package_References.InitializerDatabase_Access_Array_Access_Array;
   function "=" (Left, Right : InitializerDatabase_Access_Array_Access_Array) return Boolean renames org.allbinary.business.installer.InitializerDatabase_Package_References."=";
   subtype InitializerDatabase_Access_Array_Access_Array_Access is org.allbinary.business.installer.InitializerDatabase_Package_References.InitializerDatabase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InitializerDatabase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.installer.InitializerDatabase_Package_References."=";
   function Java_Box (Value : InitializerDatabase_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.installer.InitializerDatabase_Package_References.Java_Box;
   function Java_Unbox_InitializerDatabase_Access_Array_Access_Array (Value : access Java_Object'Class) return InitializerDatabase_Access_Array_Access_Array_Access renames org.allbinary.business.installer.InitializerDatabase_Package_References.Java_Unbox_InitializerDatabase_Access_Array_Access_Array;

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
   MAXDB : constant Integer := 30;
   MAX : constant Integer := 16;
   MIN : constant Integer := 4;
   MINPASSWORD : constant Integer := 0;

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


