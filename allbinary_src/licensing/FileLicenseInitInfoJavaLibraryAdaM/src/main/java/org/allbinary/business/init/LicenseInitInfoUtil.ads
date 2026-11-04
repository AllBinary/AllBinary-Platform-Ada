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

limited with org.allbinary.business.init.LicenseInitInfoUtil_Package;
package org.allbinary.business.init.LicenseInitInfoUtil_Package_References is
   type LicenseInitInfoUtil_Access is access all org.allbinary.business.init.LicenseInitInfoUtil_Package.LicenseInitInfoUtil'Class;
   type LicenseInitInfoUtil_Access_Array is array (Natural range <>) of LicenseInitInfoUtil_Access;
   type LicenseInitInfoUtil_Access_Array_Access is access all LicenseInitInfoUtil_Access_Array;
   type LicenseInitInfoUtil_Access_Array_Access_Array is array (Natural range <>) of LicenseInitInfoUtil_Access_Array_Access;
   type LicenseInitInfoUtil_Access_Array_Access_Array_Access is access all LicenseInitInfoUtil_Access_Array_Access_Array;
end org.allbinary.business.init.LicenseInitInfoUtil_Package_References;

with org.allbinary.business.init.LicenseInitInfoUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;
limited with org.allbinary.business.init.LicenseInitInfo_Package;
with org.allbinary.business.init.LicenseInitInfo_Package_References;

package org.allbinary.business.init.LicenseInitInfoUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
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
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   use type StringUtil_Access;
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   use type StringUtil_Access_Array;
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   use type StringUtil_Access_Array_Access;
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   use type StringUtil_Access_Array_Access_Array;
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   use type StringUtil_Access_Array_Access_Array_Access;
   subtype LicenseInitInfo_Access is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access;
   use type LicenseInitInfo_Access;
   subtype LicenseInitInfo_Access_Array is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access_Array;
   use type LicenseInitInfo_Access_Array;
   subtype LicenseInitInfo_Access_Array_Access is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access_Array_Access;
   use type LicenseInitInfo_Access_Array_Access;
   subtype LicenseInitInfo_Access_Array_Access_Array is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access_Array_Access_Array;
   use type LicenseInitInfo_Access_Array_Access_Array;
   subtype LicenseInitInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access_Array_Access_Array_Access;
   use type LicenseInitInfo_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LicenseInitInfoUtil_Access is org.allbinary.business.init.LicenseInitInfoUtil_Package_References.LicenseInitInfoUtil_Access;
   function "=" (Left, Right : LicenseInitInfoUtil_Access) return Boolean renames org.allbinary.business.init.LicenseInitInfoUtil_Package_References."=";
   subtype LicenseInitInfoUtil_Access_Array is org.allbinary.business.init.LicenseInitInfoUtil_Package_References.LicenseInitInfoUtil_Access_Array;
   function "=" (Left, Right : LicenseInitInfoUtil_Access_Array) return Boolean renames org.allbinary.business.init.LicenseInitInfoUtil_Package_References."=";
   subtype LicenseInitInfoUtil_Access_Array_Access is org.allbinary.business.init.LicenseInitInfoUtil_Package_References.LicenseInitInfoUtil_Access_Array_Access;
   function "=" (Left, Right : LicenseInitInfoUtil_Access_Array_Access) return Boolean renames org.allbinary.business.init.LicenseInitInfoUtil_Package_References."=";
   subtype LicenseInitInfoUtil_Access_Array_Access_Array is org.allbinary.business.init.LicenseInitInfoUtil_Package_References.LicenseInitInfoUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseInitInfoUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.LicenseInitInfoUtil_Package_References."=";
   subtype LicenseInitInfoUtil_Access_Array_Access_Array_Access is org.allbinary.business.init.LicenseInitInfoUtil_Package_References.LicenseInitInfoUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseInitInfoUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.LicenseInitInfoUtil_Package_References."=";

   type LicenseInitInfoUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      stringUtil : StringUtil_Access;
      INITFILENAME : Unbounded_String;
      ABOUT : Unbounded_String;
      PRIVACY_POLICY : Unbounded_String;
      filePath : Unbounded_String;
   end record;
   instance : LicenseInitInfoUtil_Access;

   procedure Initialize (This : in out LicenseInitInfoUtil'Class);
   function Create return LicenseInitInfoUtil_Access;
   function getInstance return LicenseInitInfoUtil_Access;
   procedure setFilePath (This : in out LicenseInitInfoUtil; filePath : Unbounded_String);
   procedure write (This : in out LicenseInitInfoUtil; initData_Param : access LicenseInitInfo_Package.LicenseInitInfo'Class);
   function read (This : in out LicenseInitInfoUtil) return LicenseInitInfo_Access;
   function readAgain (This : in out LicenseInitInfoUtil; initializeCounter : Integer) return LicenseInitInfo_Access;
   procedure readAgain (This : in out LicenseInitInfoUtil; initializeCounter : Integer);
   function getFilePath (This : in out LicenseInitInfoUtil) return Unbounded_String;

end org.allbinary.business.init.LicenseInitInfoUtil_Package;


