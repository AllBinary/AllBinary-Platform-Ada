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

limited with org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package;
package org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References is
   type ItemArraySingletonFactoryInterface_Access is access all org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package.ItemArraySingletonFactoryInterface'Class;
   type ItemArraySingletonFactoryInterface_Access_Array is array (Natural range <>) of ItemArraySingletonFactoryInterface_Access;
   type ItemArraySingletonFactoryInterface_Access_Array_Access is access all ItemArraySingletonFactoryInterface_Access_Array;
   type ItemArraySingletonFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of ItemArraySingletonFactoryInterface_Access_Array_Access;
   type ItemArraySingletonFactoryInterface_Access_Array_Access_Array_Access is access all ItemArraySingletonFactoryInterface_Access_Array_Access_Array;
end org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References;

with org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package_References;

package org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package is

   package Reference_Types is
   subtype ABCustomItem_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access;
   use type ABCustomItem_Access;
   subtype ABCustomItem_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array;
   use type ABCustomItem_Access_Array;
   subtype ABCustomItem_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access;
   use type ABCustomItem_Access_Array_Access;
   subtype ABCustomItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array;
   use type ABCustomItem_Access_Array_Access_Array;
   subtype ABCustomItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array_Access;
   use type ABCustomItem_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ItemArraySingletonFactoryInterface is interface;
   subtype ItemArraySingletonFactoryInterface_Access is org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References.ItemArraySingletonFactoryInterface_Access;
   function "=" (Left, Right : ItemArraySingletonFactoryInterface_Access) return Boolean renames org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References."=";
   subtype ItemArraySingletonFactoryInterface_Access_Array is org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References.ItemArraySingletonFactoryInterface_Access_Array;
   function "=" (Left, Right : ItemArraySingletonFactoryInterface_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References."=";
   subtype ItemArraySingletonFactoryInterface_Access_Array_Access is org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References.ItemArraySingletonFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : ItemArraySingletonFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References."=";
   subtype ItemArraySingletonFactoryInterface_Access_Array_Access_Array is org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References.ItemArraySingletonFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ItemArraySingletonFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References."=";
   subtype ItemArraySingletonFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References.ItemArraySingletonFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ItemArraySingletonFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References."=";
   function Java_Object_Access_From_ItemArraySingletonFactoryInterface (Value : ItemArraySingletonFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getItems (This : in out ItemArraySingletonFactoryInterface) return ABCustomItem_Access_Array_Access is abstract;

end org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package;


