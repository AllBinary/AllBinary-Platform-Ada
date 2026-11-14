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
limited with org.allbinary.logic.system.security.licensing.MobileClientInformation_Package;
package org.allbinary.logic.system.security.licensing.MobileClientInformation_Package_References is
   type MobileClientInformation_Access is access all org.allbinary.logic.system.security.licensing.MobileClientInformation_Package.MobileClientInformation'Class;
   type MobileClientInformation_Access_Array is array (Natural range <>) of MobileClientInformation_Access;
   type MobileClientInformation_Access_Array_Access is access all MobileClientInformation_Access_Array;
   type MobileClientInformation_Access_Array_Access_Array is array (Natural range <>) of MobileClientInformation_Access_Array_Access;
   type MobileClientInformation_Access_Array_Access_Array_Access is access all MobileClientInformation_Access_Array_Access_Array;
   type MobileClientInformation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MobileClientInformation_Access_Array_Access;
   end record;
   function Java_Box (Value : MobileClientInformation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MobileClientInformation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MobileClientInformation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MobileClientInformation_Access_Array_Access is (if Value /= null and then Value.all in MobileClientInformation_Access_Array_Object'Class then MobileClientInformation_Access_Array_Object'Class (Value.all).Value else null);
   type MobileClientInformation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MobileClientInformation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MobileClientInformation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MobileClientInformation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MobileClientInformation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MobileClientInformation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MobileClientInformation_Access_Array_Access_Array_Object'Class then MobileClientInformation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.licensing.MobileClientInformation_Package_References;

with org.allbinary.logic.system.security.licensing.MobileClientInformation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.logic.system.security.licensing.AbeClientInformation_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformation_Package;

package org.allbinary.logic.system.security.licensing.MobileClientInformation_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MobileClientInformation_Access is org.allbinary.logic.system.security.licensing.MobileClientInformation_Package_References.MobileClientInformation_Access;
   function "=" (Left, Right : MobileClientInformation_Access) return Boolean renames org.allbinary.logic.system.security.licensing.MobileClientInformation_Package_References."=";
   subtype MobileClientInformation_Access_Array is org.allbinary.logic.system.security.licensing.MobileClientInformation_Package_References.MobileClientInformation_Access_Array;
   function "=" (Left, Right : MobileClientInformation_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.MobileClientInformation_Package_References."=";
   subtype MobileClientInformation_Access_Array_Access is org.allbinary.logic.system.security.licensing.MobileClientInformation_Package_References.MobileClientInformation_Access_Array_Access;
   function "=" (Left, Right : MobileClientInformation_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.MobileClientInformation_Package_References."=";
   function Java_Box (Value : MobileClientInformation_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.MobileClientInformation_Package_References.Java_Box;
   function Java_Unbox_MobileClientInformation_Access_Array (Value : access Java_Object'Class) return MobileClientInformation_Access_Array_Access renames org.allbinary.logic.system.security.licensing.MobileClientInformation_Package_References.Java_Unbox_MobileClientInformation_Access_Array;
   subtype MobileClientInformation_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.MobileClientInformation_Package_References.MobileClientInformation_Access_Array_Access_Array;
   function "=" (Left, Right : MobileClientInformation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.MobileClientInformation_Package_References."=";
   subtype MobileClientInformation_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.MobileClientInformation_Package_References.MobileClientInformation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MobileClientInformation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.MobileClientInformation_Package_References."=";
   function Java_Box (Value : MobileClientInformation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.MobileClientInformation_Package_References.Java_Box;
   function Java_Unbox_MobileClientInformation_Access_Array_Access_Array (Value : access Java_Object'Class) return MobileClientInformation_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.licensing.MobileClientInformation_Package_References.Java_Unbox_MobileClientInformation_Access_Array_Access_Array;

   type MobileClientInformation is new AbeClientInformation with null record;
   DESC : Unbounded_String;
   ANDROID_DESC : Unbounded_String;

   procedure Initialize (This : in out MobileClientInformation'Class; name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String);
   function Create (name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String) return MobileClientInformation_Access;
   function toHashtable (This : in out MobileClientInformation) return ABHashtable_Access;

end org.allbinary.logic.system.security.licensing.MobileClientInformation_Package;


