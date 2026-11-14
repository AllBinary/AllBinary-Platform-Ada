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
limited with org.allbinary.logic.system.SoftwareInformation_Package;
package org.allbinary.logic.system.SoftwareInformation_Package_References is
   type SoftwareInformation_Access is access all org.allbinary.logic.system.SoftwareInformation_Package.SoftwareInformation'Class;
   type SoftwareInformation_Access_Array is array (Natural range <>) of SoftwareInformation_Access;
   type SoftwareInformation_Access_Array_Access is access all SoftwareInformation_Access_Array;
   type SoftwareInformation_Access_Array_Access_Array is array (Natural range <>) of SoftwareInformation_Access_Array_Access;
   type SoftwareInformation_Access_Array_Access_Array_Access is access all SoftwareInformation_Access_Array_Access_Array;
   type SoftwareInformation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SoftwareInformation_Access_Array_Access;
   end record;
   function Java_Box (Value : SoftwareInformation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SoftwareInformation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SoftwareInformation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SoftwareInformation_Access_Array_Access is (if Value /= null and then Value.all in SoftwareInformation_Access_Array_Object'Class then SoftwareInformation_Access_Array_Object'Class (Value.all).Value else null);
   type SoftwareInformation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SoftwareInformation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SoftwareInformation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SoftwareInformation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SoftwareInformation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SoftwareInformation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SoftwareInformation_Access_Array_Access_Array_Object'Class then SoftwareInformation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.SoftwareInformation_Package_References;

with org.allbinary.logic.system.SoftwareInformation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.SoftwareInformation_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SoftwareInformation_Access is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access;
   function "=" (Left, Right : SoftwareInformation_Access) return Boolean renames org.allbinary.logic.system.SoftwareInformation_Package_References."=";
   subtype SoftwareInformation_Access_Array is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array;
   function "=" (Left, Right : SoftwareInformation_Access_Array) return Boolean renames org.allbinary.logic.system.SoftwareInformation_Package_References."=";
   subtype SoftwareInformation_Access_Array_Access is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array_Access;
   function "=" (Left, Right : SoftwareInformation_Access_Array_Access) return Boolean renames org.allbinary.logic.system.SoftwareInformation_Package_References."=";
   function Java_Box (Value : SoftwareInformation_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.SoftwareInformation_Package_References.Java_Box;
   function Java_Unbox_SoftwareInformation_Access_Array (Value : access Java_Object'Class) return SoftwareInformation_Access_Array_Access renames org.allbinary.logic.system.SoftwareInformation_Package_References.Java_Unbox_SoftwareInformation_Access_Array;
   subtype SoftwareInformation_Access_Array_Access_Array is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array_Access_Array;
   function "=" (Left, Right : SoftwareInformation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.SoftwareInformation_Package_References."=";
   subtype SoftwareInformation_Access_Array_Access_Array_Access is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SoftwareInformation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.SoftwareInformation_Package_References."=";
   function Java_Box (Value : SoftwareInformation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.SoftwareInformation_Package_References.Java_Box;
   function Java_Unbox_SoftwareInformation_Access_Array_Access_Array (Value : access Java_Object'Class) return SoftwareInformation_Access_Array_Access_Array_Access renames org.allbinary.logic.system.SoftwareInformation_Package_References.Java_Unbox_SoftwareInformation_Access_Array_Access_Array;

   type SoftwareInformation is new Java_Object with record
      name : Unbounded_String;
      shortName : Unbounded_String;
      version : Unbounded_String;
   end record;

   procedure Initialize (This : in out SoftwareInformation'Class; name : Unbounded_String; version : Unbounded_String; shortName : Unbounded_String);
   function Create (name : Unbounded_String; version : Unbounded_String; shortName : Unbounded_String) return SoftwareInformation_Access;
   function getName (This : in out SoftwareInformation) return Unbounded_String;
   function getVersion (This : in out SoftwareInformation) return Unbounded_String;
   function toShortString (This : in out SoftwareInformation) return Unbounded_String;
   function toString (This : in out SoftwareInformation) return Unbounded_String;

end org.allbinary.logic.system.SoftwareInformation_Package;


