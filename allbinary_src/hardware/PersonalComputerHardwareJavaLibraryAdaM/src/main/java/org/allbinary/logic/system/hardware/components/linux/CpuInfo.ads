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
limited with org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package;
package org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package_References is
   type CpuInfo_Access is access all org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package.CpuInfo'Class;
   type CpuInfo_Access_Array is array (Natural range <>) of CpuInfo_Access;
   type CpuInfo_Access_Array_Access is access all CpuInfo_Access_Array;
   type CpuInfo_Access_Array_Access_Array is array (Natural range <>) of CpuInfo_Access_Array_Access;
   type CpuInfo_Access_Array_Access_Array_Access is access all CpuInfo_Access_Array_Access_Array;
   type CpuInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CpuInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : CpuInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CpuInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CpuInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CpuInfo_Access_Array_Access is (if Value /= null and then Value.all in CpuInfo_Access_Array_Object'Class then CpuInfo_Access_Array_Object'Class (Value.all).Value else null);
   type CpuInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CpuInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CpuInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CpuInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CpuInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CpuInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CpuInfo_Access_Array_Access_Array_Object'Class then CpuInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package_References;

with org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CpuInfo_Access is org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package_References.CpuInfo_Access;
   function "=" (Left, Right : CpuInfo_Access) return Boolean renames org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package_References."=";
   subtype CpuInfo_Access_Array is org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package_References.CpuInfo_Access_Array;
   function "=" (Left, Right : CpuInfo_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package_References."=";
   subtype CpuInfo_Access_Array_Access is org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package_References.CpuInfo_Access_Array_Access;
   function "=" (Left, Right : CpuInfo_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package_References."=";
   function Java_Box (Value : CpuInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package_References.Java_Box;
   function Java_Unbox_CpuInfo_Access_Array (Value : access Java_Object'Class) return CpuInfo_Access_Array_Access renames org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package_References.Java_Unbox_CpuInfo_Access_Array;
   subtype CpuInfo_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package_References.CpuInfo_Access_Array_Access_Array;
   function "=" (Left, Right : CpuInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package_References."=";
   subtype CpuInfo_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package_References.CpuInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CpuInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package_References."=";
   function Java_Box (Value : CpuInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package_References.Java_Box;
   function Java_Unbox_CpuInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return CpuInfo_Access_Array_Access_Array_Access renames org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package_References.Java_Unbox_CpuInfo_Access_Array_Access_Array;

   type CpuInfo is new Java_Object with record
      name : Unbounded_String;
   end record;
   PROCESSOR : CpuInfo_Access;
   VENDORID : CpuInfo_Access;
   CPUFAMILY : CpuInfo_Access;
   MODEL : CpuInfo_Access;
   MODELNAME : CpuInfo_Access;
   STEPPING : CpuInfo_Access;
   CPUMHZ : CpuInfo_Access;
   CACHESIZE : CpuInfo_Access;
   FDIVBUG : CpuInfo_Access;
   HLTBUG : CpuInfo_Access;
   F00FBUG : CpuInfo_Access;
   COMABUG : CpuInfo_Access;
   FPU : CpuInfo_Access;
   FPUEXCEPTION : CpuInfo_Access;
   CPUIDLEVEL : CpuInfo_Access;
   WP : CpuInfo_Access;
   FLAGS : CpuInfo_Access;
   BOGOMIPS : CpuInfo_Access;

   procedure Initialize (This : in out CpuInfo'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return CpuInfo_Access;
   function toString (This : in out CpuInfo) return Unbounded_String;

end org.allbinary.logic.system.hardware.components.linux.CpuInfo_Package;


