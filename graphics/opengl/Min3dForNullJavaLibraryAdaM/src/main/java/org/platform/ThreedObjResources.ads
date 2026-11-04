-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.platform.ThreedObjResources_Package;
package org.platform.ThreedObjResources_Package_References is
   type ThreedObjResources_Access is access all org.platform.ThreedObjResources_Package.ThreedObjResources'Class;
   type ThreedObjResources_Access_Array is array (Natural range <>) of ThreedObjResources_Access;
   type ThreedObjResources_Access_Array_Access is access all ThreedObjResources_Access_Array;
   type ThreedObjResources_Access_Array_Access_Array is array (Natural range <>) of ThreedObjResources_Access_Array_Access;
   type ThreedObjResources_Access_Array_Access_Array_Access is access all ThreedObjResources_Access_Array_Access_Array;
end org.platform.ThreedObjResources_Package_References;

with org.platform.ThreedObjResources_Package_References;
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

package org.platform.ThreedObjResources_Package is

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


   subtype ThreedObjResources_Access is org.platform.ThreedObjResources_Package_References.ThreedObjResources_Access;
   function "=" (Left, Right : ThreedObjResources_Access) return Boolean renames org.platform.ThreedObjResources_Package_References."=";
   subtype ThreedObjResources_Access_Array is org.platform.ThreedObjResources_Package_References.ThreedObjResources_Access_Array;
   function "=" (Left, Right : ThreedObjResources_Access_Array) return Boolean renames org.platform.ThreedObjResources_Package_References."=";
   subtype ThreedObjResources_Access_Array_Access is org.platform.ThreedObjResources_Package_References.ThreedObjResources_Access_Array_Access;
   function "=" (Left, Right : ThreedObjResources_Access_Array_Access) return Boolean renames org.platform.ThreedObjResources_Package_References."=";
   subtype ThreedObjResources_Access_Array_Access_Array is org.platform.ThreedObjResources_Package_References.ThreedObjResources_Access_Array_Access_Array;
   function "=" (Left, Right : ThreedObjResources_Access_Array_Access_Array) return Boolean renames org.platform.ThreedObjResources_Package_References."=";
   subtype ThreedObjResources_Access_Array_Access_Array_Access is org.platform.ThreedObjResources_Package_References.ThreedObjResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThreedObjResources_Access_Array_Access_Array_Access) return Boolean renames org.platform.ThreedObjResources_Package_References."=";

   type ThreedObjResources is new Java_Object with record
      hashtable : ABHashtable_Access;
   end record;
   instance : ThreedObjResources_Access;

   procedure Initialize (This : in out ThreedObjResources'Class);
   function Create return ThreedObjResources_Access;
   function getInstance return ThreedObjResources_Access;
   function get (This : in out ThreedObjResources; resourceName : Unbounded_String) return Unbounded_String;
   procedure get (This : in out ThreedObjResources; resourceName : Unbounded_String);

end org.platform.ThreedObjResources_Package;


