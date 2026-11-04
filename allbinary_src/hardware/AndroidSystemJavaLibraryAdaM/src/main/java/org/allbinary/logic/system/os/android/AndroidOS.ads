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

limited with org.allbinary.logic.system.os.android.AndroidOS_Package;
package org.allbinary.logic.system.os.android.AndroidOS_Package_References is
   type AndroidOS_Access is access all org.allbinary.logic.system.os.android.AndroidOS_Package.AndroidOS'Class;
   type AndroidOS_Access_Array is array (Natural range <>) of AndroidOS_Access;
   type AndroidOS_Access_Array_Access is access all AndroidOS_Access_Array;
   type AndroidOS_Access_Array_Access_Array is array (Natural range <>) of AndroidOS_Access_Array_Access;
   type AndroidOS_Access_Array_Access_Array_Access is access all AndroidOS_Access_Array_Access_Array;
end org.allbinary.logic.system.os.android.AndroidOS_Package_References;

with org.allbinary.logic.system.os.android.AndroidOS_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;

package org.allbinary.logic.system.os.android.AndroidOS_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package Reference_Types is
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   use type StringMaker_Access;
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   use type StringMaker_Access_Array;
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   use type StringMaker_Access_Array_Access;
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   use type StringMaker_Access_Array_Access_Array;
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   use type StringMaker_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AndroidOS_Access is org.allbinary.logic.system.os.android.AndroidOS_Package_References.AndroidOS_Access;
   function "=" (Left, Right : AndroidOS_Access) return Boolean renames org.allbinary.logic.system.os.android.AndroidOS_Package_References."=";
   subtype AndroidOS_Access_Array is org.allbinary.logic.system.os.android.AndroidOS_Package_References.AndroidOS_Access_Array;
   function "=" (Left, Right : AndroidOS_Access_Array) return Boolean renames org.allbinary.logic.system.os.android.AndroidOS_Package_References."=";
   subtype AndroidOS_Access_Array_Access is org.allbinary.logic.system.os.android.AndroidOS_Package_References.AndroidOS_Access_Array_Access;
   function "=" (Left, Right : AndroidOS_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.android.AndroidOS_Package_References."=";
   subtype AndroidOS_Access_Array_Access_Array is org.allbinary.logic.system.os.android.AndroidOS_Package_References.AndroidOS_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidOS_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.os.android.AndroidOS_Package_References."=";
   subtype AndroidOS_Access_Array_Access_Array_Access is org.allbinary.logic.system.os.android.AndroidOS_Package_References.AndroidOS_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidOS_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.android.AndroidOS_Package_References."=";

   type AndroidOS is new GenericOperatingSystem with record
      stringBuffer : StringMaker_Access;
      DEVICE_ID : Unbounded_String;
      DEVICE_SOFTWARE_VERSION : Unbounded_String;
      LINE_1_NUMBER : Unbounded_String;
      OUYA : Unbounded_String;
   end record;

   procedure Initialize (This : in out AndroidOS'Class);
   function Create return AndroidOS_Access;
   function isOverScan (This : in out AndroidOS) return Boolean;
   function getOverScanXPercent (This : in out AndroidOS) return Integer;
   function getOverScanYPercent (This : in out AndroidOS) return Integer;
   function toString (This : in out AndroidOS) return Unbounded_String;

end org.allbinary.logic.system.os.android.AndroidOS_Package;


