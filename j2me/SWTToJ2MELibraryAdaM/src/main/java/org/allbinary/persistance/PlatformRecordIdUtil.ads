-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.persistance.PlatformRecordIdUtil_Package;
package org.allbinary.persistance.PlatformRecordIdUtil_Package_References is
   type PlatformRecordIdUtil_Access is access all org.allbinary.persistance.PlatformRecordIdUtil_Package.PlatformRecordIdUtil'Class;
   type PlatformRecordIdUtil_Access_Array is array (Natural range <>) of PlatformRecordIdUtil_Access;
   type PlatformRecordIdUtil_Access_Array_Access is access all PlatformRecordIdUtil_Access_Array;
   type PlatformRecordIdUtil_Access_Array_Access_Array is array (Natural range <>) of PlatformRecordIdUtil_Access_Array_Access;
   type PlatformRecordIdUtil_Access_Array_Access_Array_Access is access all PlatformRecordIdUtil_Access_Array_Access_Array;
   type PlatformRecordIdUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlatformRecordIdUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : PlatformRecordIdUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlatformRecordIdUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlatformRecordIdUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlatformRecordIdUtil_Access_Array_Access is (if Value /= null and then Value.all in PlatformRecordIdUtil_Access_Array_Object'Class then PlatformRecordIdUtil_Access_Array_Object'Class (Value.all).Value else null);
   type PlatformRecordIdUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlatformRecordIdUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PlatformRecordIdUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlatformRecordIdUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlatformRecordIdUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlatformRecordIdUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PlatformRecordIdUtil_Access_Array_Access_Array_Object'Class then PlatformRecordIdUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.persistance.PlatformRecordIdUtil_Package_References;

with org.allbinary.persistance.PlatformRecordIdUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;

package org.allbinary.persistance.PlatformRecordIdUtil_Package is

   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype PlatformRecordIdUtil_Access is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access;
   function "=" (Left, Right : PlatformRecordIdUtil_Access) return Boolean renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References."=";
   subtype PlatformRecordIdUtil_Access_Array is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access_Array;
   function "=" (Left, Right : PlatformRecordIdUtil_Access_Array) return Boolean renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References."=";
   subtype PlatformRecordIdUtil_Access_Array_Access is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access_Array_Access;
   function "=" (Left, Right : PlatformRecordIdUtil_Access_Array_Access) return Boolean renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References."=";
   function Java_Box (Value : PlatformRecordIdUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References.Java_Box;
   function Java_Unbox_PlatformRecordIdUtil_Access_Array (Value : access Java_Object'Class) return PlatformRecordIdUtil_Access_Array_Access renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References.Java_Unbox_PlatformRecordIdUtil_Access_Array;
   subtype PlatformRecordIdUtil_Access_Array_Access_Array is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformRecordIdUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References."=";
   subtype PlatformRecordIdUtil_Access_Array_Access_Array_Access is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformRecordIdUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References."=";
   function Java_Box (Value : PlatformRecordIdUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References.Java_Box;
   function Java_Unbox_PlatformRecordIdUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return PlatformRecordIdUtil_Access_Array_Access_Array_Access renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References.Java_Unbox_PlatformRecordIdUtil_Access_Array_Access_Array;

   type PlatformRecordIdUtil is new Java_Object with record
      PLATFORM_SHORT_NAME : Unbounded_String;
   end record;
   instance : PlatformRecordIdUtil_Access;

   procedure Initialize (This : in out PlatformRecordIdUtil'Class);
   function Create return PlatformRecordIdUtil_Access;
   function getInstance return PlatformRecordIdUtil_Access;
   function getRecordId (This : in out PlatformRecordIdUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; baseRecordId : Unbounded_String) return Unbounded_String;
   procedure getRecordId (This : in out PlatformRecordIdUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; baseRecordId : Unbounded_String);

end org.allbinary.persistance.PlatformRecordIdUtil_Package;


