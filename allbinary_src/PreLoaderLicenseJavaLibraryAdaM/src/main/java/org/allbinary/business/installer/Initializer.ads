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

limited with org.allbinary.business.installer.Initializer_Package;
package org.allbinary.business.installer.Initializer_Package_References is
   type Initializer_Access is access all org.allbinary.business.installer.Initializer_Package.Initializer'Class;
   type Initializer_Access_Array is array (Natural range <>) of Initializer_Access;
   type Initializer_Access_Array_Access is access all Initializer_Access_Array;
   type Initializer_Access_Array_Access_Array is array (Natural range <>) of Initializer_Access_Array_Access;
   type Initializer_Access_Array_Access_Array_Access is access all Initializer_Access_Array_Access_Array;
end org.allbinary.business.installer.Initializer_Package_References;

with org.allbinary.business.installer.Initializer_Package_References;
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
--  with java.util.Set_Package; use java.util.Set_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.business.installer.Initializer_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Map_Package renames Standard.java.util.Map_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype Initializer_Access is org.allbinary.business.installer.Initializer_Package_References.Initializer_Access;
   function "=" (Left, Right : Initializer_Access) return Boolean renames org.allbinary.business.installer.Initializer_Package_References."=";
   subtype Initializer_Access_Array is org.allbinary.business.installer.Initializer_Package_References.Initializer_Access_Array;
   function "=" (Left, Right : Initializer_Access_Array) return Boolean renames org.allbinary.business.installer.Initializer_Package_References."=";
   subtype Initializer_Access_Array_Access is org.allbinary.business.installer.Initializer_Package_References.Initializer_Access_Array_Access;
   function "=" (Left, Right : Initializer_Access_Array_Access) return Boolean renames org.allbinary.business.installer.Initializer_Package_References."=";
   subtype Initializer_Access_Array_Access_Array is org.allbinary.business.installer.Initializer_Package_References.Initializer_Access_Array_Access_Array;
   function "=" (Left, Right : Initializer_Access_Array_Access_Array) return Boolean renames org.allbinary.business.installer.Initializer_Package_References."=";
   subtype Initializer_Access_Array_Access_Array_Access is org.allbinary.business.installer.Initializer_Package_References.Initializer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Initializer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.installer.Initializer_Package_References."=";

   type Initializer is new Java_Object with record
      logUtil : LogUtil_Access;
      userJdbcDriver : Unbounded_String;
      userName : Unbounded_String;
      userUserName : Unbounded_String;
      userPassword : Unbounded_String;
      userSchema : Unbounded_String;
      userServer : Unbounded_String;
      userPort : Unbounded_String;
      historyJdbcDriver : Unbounded_String;
      historyName : Unbounded_String;
      historyUserName : Unbounded_String;
      historyPassword : Unbounded_String;
      historySchema : Unbounded_String;
      historyServer : Unbounded_String;
      historyPort : Unbounded_String;
      logJdbcDriver : Unbounded_String;
      logName : Unbounded_String;
      logUserName : Unbounded_String;
      logPassword : Unbounded_String;
      logSchema : Unbounded_String;
      logServer : Unbounded_String;
      logPort : Unbounded_String;
      inventoryJdbcDriver : Unbounded_String;
      inventoryName : Unbounded_String;
      inventoryUserName : Unbounded_String;
      inventoryPassword : Unbounded_String;
      inventorySchema : Unbounded_String;
      inventoryServer : Unbounded_String;
      inventoryPort : Unbounded_String;
      staticPagesJdbcDriver : Unbounded_String;
      staticPagesName : Unbounded_String;
      staticPagesUserName : Unbounded_String;
      staticPagesPassword : Unbounded_String;
      staticPagesSchema : Unbounded_String;
      staticPagesServer : Unbounded_String;
      staticPagesPort : Unbounded_String;
   end record;
   MAXDB : constant Integer := 30;
   MAX : constant Integer := 16;
   MIN : constant Integer := 4;
   MINPASSWORD : constant Integer := 0;

   procedure Initialize (This : in out Initializer'Class; map_Param : access Map_Package.Map'Class);
   function Create (map_Param : access Map_Package.Map'Class) return Initializer_Access;
   procedure Initialize (This : in out Initializer'Class; initHashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (initHashMap_Param : access HashMap_Package.HashMap'Class) return Initializer_Access;
   procedure getFormData (This : in out Initializer; hashMap_Param : access HashMap_Package.HashMap'Class);
   function isJdbcDriverValid (This : in out Initializer; jdbcDriverClassPathString : Unbounded_String) return Boolean;
   procedure isJdbcDriverValid (This : in out Initializer; jdbcDriverClassPathString : Unbounded_String);
   function isValid (This : in out Initializer) return Boolean;
   function getJdbcDriverValidationInfo (This : in out Initializer; jdbcDriver : Unbounded_String) return Unbounded_String;
   procedure getJdbcDriverValidationInfo (This : in out Initializer; jdbcDriver : Unbounded_String);
   function getJdbcDriverSolutionInfo (This : in out Initializer) return Unbounded_String;
   function getInvalidInfo (This : in out Initializer) return Unbounded_String;
   procedure set (This : in out Initializer);

end org.allbinary.business.installer.Initializer_Package;


