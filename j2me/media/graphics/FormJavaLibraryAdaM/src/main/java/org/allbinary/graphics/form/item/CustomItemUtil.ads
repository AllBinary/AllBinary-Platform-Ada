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
limited with org.allbinary.graphics.form.item.CustomItemUtil_Package;
package org.allbinary.graphics.form.item.CustomItemUtil_Package_References is
   type CustomItemUtil_Access is access all org.allbinary.graphics.form.item.CustomItemUtil_Package.CustomItemUtil'Class;
   type CustomItemUtil_Access_Array is array (Natural range <>) of CustomItemUtil_Access;
   type CustomItemUtil_Access_Array_Access is access all CustomItemUtil_Access_Array;
   type CustomItemUtil_Access_Array_Access_Array is array (Natural range <>) of CustomItemUtil_Access_Array_Access;
   type CustomItemUtil_Access_Array_Access_Array_Access is access all CustomItemUtil_Access_Array_Access_Array;
   type CustomItemUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomItemUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomItemUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomItemUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomItemUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomItemUtil_Access_Array_Access is (if Value /= null and then Value.all in CustomItemUtil_Access_Array_Object'Class then CustomItemUtil_Access_Array_Object'Class (Value.all).Value else null);
   type CustomItemUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomItemUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomItemUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomItemUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomItemUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomItemUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CustomItemUtil_Access_Array_Access_Array_Object'Class then CustomItemUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.item.CustomItemUtil_Package_References;

with org.allbinary.graphics.form.item.CustomItemUtil_Package_References;
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

package org.allbinary.graphics.form.item.CustomItemUtil_Package is

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


   subtype CustomItemUtil_Access is org.allbinary.graphics.form.item.CustomItemUtil_Package_References.CustomItemUtil_Access;
   function "=" (Left, Right : CustomItemUtil_Access) return Boolean renames org.allbinary.graphics.form.item.CustomItemUtil_Package_References."=";
   subtype CustomItemUtil_Access_Array is org.allbinary.graphics.form.item.CustomItemUtil_Package_References.CustomItemUtil_Access_Array;
   function "=" (Left, Right : CustomItemUtil_Access_Array) return Boolean renames org.allbinary.graphics.form.item.CustomItemUtil_Package_References."=";
   subtype CustomItemUtil_Access_Array_Access is org.allbinary.graphics.form.item.CustomItemUtil_Package_References.CustomItemUtil_Access_Array_Access;
   function "=" (Left, Right : CustomItemUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.CustomItemUtil_Package_References."=";
   function Java_Box (Value : CustomItemUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.CustomItemUtil_Package_References.Java_Box;
   function Java_Unbox_CustomItemUtil_Access_Array (Value : access Java_Object'Class) return CustomItemUtil_Access_Array_Access renames org.allbinary.graphics.form.item.CustomItemUtil_Package_References.Java_Unbox_CustomItemUtil_Access_Array;
   subtype CustomItemUtil_Access_Array_Access_Array is org.allbinary.graphics.form.item.CustomItemUtil_Package_References.CustomItemUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CustomItemUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.CustomItemUtil_Package_References."=";
   subtype CustomItemUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.CustomItemUtil_Package_References.CustomItemUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomItemUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.CustomItemUtil_Package_References."=";
   function Java_Box (Value : CustomItemUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.CustomItemUtil_Package_References.Java_Box;
   function Java_Unbox_CustomItemUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return CustomItemUtil_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.item.CustomItemUtil_Package_References.Java_Unbox_CustomItemUtil_Access_Array_Access_Array;

   type CustomItemUtil is new Java_Object with record
      CUSTOM_ITEM_ARRAY : ABCustomItem_Access_Array_Access;
   end record;
   instance : CustomItemUtil_Access;

   procedure Initialize (This : in out CustomItemUtil'Class);
   function Create return CustomItemUtil_Access;
   function getInstance return CustomItemUtil_Access;

end org.allbinary.graphics.form.item.CustomItemUtil_Package;


