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
limited with org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
package org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References is
   type LayerInterfaceFactoryInterface_Access is access all org.allbinary.layer.LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class;
   type LayerInterfaceFactoryInterface_Access_Array is array (Natural range <>) of LayerInterfaceFactoryInterface_Access;
   type LayerInterfaceFactoryInterface_Access_Array_Access is access all LayerInterfaceFactoryInterface_Access_Array;
   type LayerInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of LayerInterfaceFactoryInterface_Access_Array_Access;
   type LayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all LayerInterfaceFactoryInterface_Access_Array_Access_Array;
   type LayerInterfaceFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LayerInterfaceFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : LayerInterfaceFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LayerInterfaceFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LayerInterfaceFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LayerInterfaceFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in LayerInterfaceFactoryInterface_Access_Array_Object'Class then LayerInterfaceFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type LayerInterfaceFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LayerInterfaceFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LayerInterfaceFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LayerInterfaceFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LayerInterfaceFactoryInterface_Access_Array_Access_Array_Object'Class then LayerInterfaceFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References;

with org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References;
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
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;

package org.allbinary.layer.LayerInterfaceFactoryInterface_Package is

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
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type LayerInterfaceFactoryInterface is interface;
   subtype LayerInterfaceFactoryInterface_Access is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access;
   function "=" (Left, Right : LayerInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References."=";
   subtype LayerInterfaceFactoryInterface_Access_Array is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : LayerInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References."=";
   subtype LayerInterfaceFactoryInterface_Access_Array_Access is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : LayerInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References."=";
   function Java_Box (Value : LayerInterfaceFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_LayerInterfaceFactoryInterface_Access_Array (Value : access Java_Object'Class) return LayerInterfaceFactoryInterface_Access_Array_Access renames org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.Java_Unbox_LayerInterfaceFactoryInterface_Access_Array;
   subtype LayerInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : LayerInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References."=";
   subtype LayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References."=";
   function Java_Box (Value : LayerInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_LayerInterfaceFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return LayerInterfaceFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.Java_Unbox_LayerInterfaceFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_LayerInterfaceFactoryInterface (Value : LayerInterfaceFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getNextInstance (This : in out LayerInterfaceFactoryInterface; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer) return AllBinaryLayer_Access is abstract;
   procedure getNextInstance (This : in out LayerInterfaceFactoryInterface; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer) is abstract;

end org.allbinary.layer.LayerInterfaceFactoryInterface_Package;


