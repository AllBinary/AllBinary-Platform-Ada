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

with AllBinary_Java;
limited with org.allbinary.graphics.form.ItemIndexDx_Package;
package org.allbinary.graphics.form.ItemIndexDx_Package_References is
   type ItemIndexDx_Access is access all org.allbinary.graphics.form.ItemIndexDx_Package.ItemIndexDx'Class;
   type ItemIndexDx_Access_Array is array (Natural range <>) of ItemIndexDx_Access;
   type ItemIndexDx_Access_Array_Access is access all ItemIndexDx_Access_Array;
   type ItemIndexDx_Access_Array_Access_Array is array (Natural range <>) of ItemIndexDx_Access_Array_Access;
   type ItemIndexDx_Access_Array_Access_Array_Access is access all ItemIndexDx_Access_Array_Access_Array;
   type ItemIndexDx_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ItemIndexDx_Access_Array_Access;
   end record;
   function Java_Box (Value : ItemIndexDx_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ItemIndexDx_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ItemIndexDx_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ItemIndexDx_Access_Array_Access is (if Value /= null and then Value.all in ItemIndexDx_Access_Array_Object'Class then ItemIndexDx_Access_Array_Object'Class (Value.all).Value else null);
   type ItemIndexDx_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ItemIndexDx_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ItemIndexDx_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ItemIndexDx_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ItemIndexDx_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ItemIndexDx_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ItemIndexDx_Access_Array_Access_Array_Object'Class then ItemIndexDx_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.ItemIndexDx_Package_References;

with org.allbinary.graphics.form.ItemIndexDx_Package_References;
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

package org.allbinary.graphics.form.ItemIndexDx_Package is

   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
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


   subtype ItemIndexDx_Access is org.allbinary.graphics.form.ItemIndexDx_Package_References.ItemIndexDx_Access;
   function "=" (Left, Right : ItemIndexDx_Access) return Boolean renames org.allbinary.graphics.form.ItemIndexDx_Package_References."=";
   subtype ItemIndexDx_Access_Array is org.allbinary.graphics.form.ItemIndexDx_Package_References.ItemIndexDx_Access_Array;
   function "=" (Left, Right : ItemIndexDx_Access_Array) return Boolean renames org.allbinary.graphics.form.ItemIndexDx_Package_References."=";
   subtype ItemIndexDx_Access_Array_Access is org.allbinary.graphics.form.ItemIndexDx_Package_References.ItemIndexDx_Access_Array_Access;
   function "=" (Left, Right : ItemIndexDx_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ItemIndexDx_Package_References."=";
   function Java_Box (Value : ItemIndexDx_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.ItemIndexDx_Package_References.Java_Box;
   function Java_Unbox_ItemIndexDx_Access_Array (Value : access Java_Object'Class) return ItemIndexDx_Access_Array_Access renames org.allbinary.graphics.form.ItemIndexDx_Package_References.Java_Unbox_ItemIndexDx_Access_Array;
   subtype ItemIndexDx_Access_Array_Access_Array is org.allbinary.graphics.form.ItemIndexDx_Package_References.ItemIndexDx_Access_Array_Access_Array;
   function "=" (Left, Right : ItemIndexDx_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.ItemIndexDx_Package_References."=";
   subtype ItemIndexDx_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ItemIndexDx_Package_References.ItemIndexDx_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ItemIndexDx_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ItemIndexDx_Package_References."=";
   function Java_Box (Value : ItemIndexDx_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.ItemIndexDx_Package_References.Java_Box;
   function Java_Unbox_ItemIndexDx_Access_Array_Access_Array (Value : access Java_Object'Class) return ItemIndexDx_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.ItemIndexDx_Package_References.Java_Unbox_ItemIndexDx_Access_Array_Access_Array;

   type ItemIndexDx is new Java_Object with null record;
   instance : ItemIndexDx_Access;

   procedure Initialize (This : in out ItemIndexDx'Class);
   function Create return ItemIndexDx_Access;
   function getInstance return ItemIndexDx_Access;
   function getDx (This : in out ItemIndexDx; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer;
   procedure getDx (This : in out ItemIndexDx; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.ItemIndexDx_Package;


