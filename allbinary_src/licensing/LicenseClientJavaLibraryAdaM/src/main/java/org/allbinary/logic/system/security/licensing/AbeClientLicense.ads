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
limited with org.allbinary.logic.system.security.licensing.AbeClientLicense_Package;
package org.allbinary.logic.system.security.licensing.AbeClientLicense_Package_References is
   type AbeClientLicense_Access is access all org.allbinary.logic.system.security.licensing.AbeClientLicense_Package.AbeClientLicense'Class;
   type AbeClientLicense_Access_Array is array (Natural range <>) of AbeClientLicense_Access;
   type AbeClientLicense_Access_Array_Access is access all AbeClientLicense_Access_Array;
   type AbeClientLicense_Access_Array_Access_Array is array (Natural range <>) of AbeClientLicense_Access_Array_Access;
   type AbeClientLicense_Access_Array_Access_Array_Access is access all AbeClientLicense_Access_Array_Access_Array;
   type AbeClientLicense_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbeClientLicense_Access_Array_Access;
   end record;
   function Java_Box (Value : AbeClientLicense_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbeClientLicense_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbeClientLicense_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbeClientLicense_Access_Array_Access is (if Value /= null and then Value.all in AbeClientLicense_Access_Array_Object'Class then AbeClientLicense_Access_Array_Object'Class (Value.all).Value else null);
   type AbeClientLicense_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbeClientLicense_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbeClientLicense_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbeClientLicense_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbeClientLicense_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbeClientLicense_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbeClientLicense_Access_Array_Access_Array_Object'Class then AbeClientLicense_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.licensing.AbeClientLicense_Package_References;

with org.allbinary.logic.system.security.licensing.AbeClientLicense_Package_References;
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
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package; use org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;
limited with org.allbinary.logic.system.security.licensing.LicenseType_Package;
with org.allbinary.logic.system.security.licensing.LicenseType_Package_References;

package org.allbinary.logic.system.security.licensing.AbeClientLicense_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype LicenseType_Access is org.allbinary.logic.system.security.licensing.LicenseType_Package_References.LicenseType_Access;
   use type LicenseType_Access;
   subtype LicenseType_Access_Array is org.allbinary.logic.system.security.licensing.LicenseType_Package_References.LicenseType_Access_Array;
   use type LicenseType_Access_Array;
   subtype LicenseType_Access_Array_Access is org.allbinary.logic.system.security.licensing.LicenseType_Package_References.LicenseType_Access_Array_Access;
   use type LicenseType_Access_Array_Access;
   subtype LicenseType_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.LicenseType_Package_References.LicenseType_Access_Array_Access_Array;
   use type LicenseType_Access_Array_Access_Array;
   subtype LicenseType_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.LicenseType_Package_References.LicenseType_Access_Array_Access_Array_Access;
   use type LicenseType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbeClientLicense_Access is org.allbinary.logic.system.security.licensing.AbeClientLicense_Package_References.AbeClientLicense_Access;
   function "=" (Left, Right : AbeClientLicense_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientLicense_Package_References."=";
   subtype AbeClientLicense_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientLicense_Package_References.AbeClientLicense_Access_Array;
   function "=" (Left, Right : AbeClientLicense_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientLicense_Package_References."=";
   subtype AbeClientLicense_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientLicense_Package_References.AbeClientLicense_Access_Array_Access;
   function "=" (Left, Right : AbeClientLicense_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientLicense_Package_References."=";
   function Java_Box (Value : AbeClientLicense_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.AbeClientLicense_Package_References.Java_Box;
   function Java_Unbox_AbeClientLicense_Access_Array (Value : access Java_Object'Class) return AbeClientLicense_Access_Array_Access renames org.allbinary.logic.system.security.licensing.AbeClientLicense_Package_References.Java_Unbox_AbeClientLicense_Access_Array;
   subtype AbeClientLicense_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientLicense_Package_References.AbeClientLicense_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientLicense_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientLicense_Package_References."=";
   subtype AbeClientLicense_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientLicense_Package_References.AbeClientLicense_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientLicense_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientLicense_Package_References."=";
   function Java_Box (Value : AbeClientLicense_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.AbeClientLicense_Package_References.Java_Box;
   function Java_Unbox_AbeClientLicense_Access_Array_Access_Array (Value : access Java_Object'Class) return AbeClientLicense_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.licensing.AbeClientLicense_Package_References.Java_Unbox_AbeClientLicense_Access_Array_Access_Array;

   type AbeClientLicense is new Java_Object and AbeLicenseInterface with record
      hashtable : ABHashtable_Access;
      id : Unbounded_String;
      servers : BasicArrayList_Access;
      special : Unbounded_String;
      licenseType : LicenseType_Access;
   end record;

   procedure Initialize (This : in out AbeClientLicense'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class);
   function Create (hashtable_Param : access ABHashtable_Package.ABHashtable'Class) return AbeClientLicense_Access;
   function hasRequiredKeys (resultHashtable_Param : access ABHashtable_Package.ABHashtable'Class) return Boolean;
   procedure hasRequiredKeys (resultHashtable_Param : access ABHashtable_Package.ABHashtable'Class);
   function hasKey (This : in out AbeClientLicense) return Boolean;
   function getKey (This : in out AbeClientLicense; keyName : Unbounded_String) return Unbounded_String;
   procedure getKey (This : in out AbeClientLicense; keyName : Unbounded_String);
   function getLicenseId (This : in out AbeClientLicense) return Unbounded_String;
   function getServers (This : in out AbeClientLicense) return BasicArrayList_Access;
   function isValid (This : in out AbeClientLicense) return Boolean;
   function toString (This : in out AbeClientLicense) return Unbounded_String;
   procedure setSpecial (This : in out AbeClientLicense; special : Unbounded_String);
   function getSpecial (This : in out AbeClientLicense) return Unbounded_String;
   function getLicenseType (This : in out AbeClientLicense) return LicenseType_Access;

end org.allbinary.logic.system.security.licensing.AbeClientLicense_Package;


