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

limited with org.allbinary.graphics.form.ItemIndexPaintable_Package;
package org.allbinary.graphics.form.ItemIndexPaintable_Package_References is
   type ItemIndexPaintable_Access is access all org.allbinary.graphics.form.ItemIndexPaintable_Package.ItemIndexPaintable'Class;
   type ItemIndexPaintable_Access_Array is array (Natural range <>) of ItemIndexPaintable_Access;
   type ItemIndexPaintable_Access_Array_Access is access all ItemIndexPaintable_Access_Array;
   type ItemIndexPaintable_Access_Array_Access_Array is array (Natural range <>) of ItemIndexPaintable_Access_Array_Access;
   type ItemIndexPaintable_Access_Array_Access_Array_Access is access all ItemIndexPaintable_Access_Array_Access_Array;
end org.allbinary.graphics.form.ItemIndexPaintable_Package_References;

with org.allbinary.graphics.form.ItemIndexPaintable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package_References;

package org.allbinary.graphics.form.ItemIndexPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
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


   subtype ItemIndexPaintable_Access is org.allbinary.graphics.form.ItemIndexPaintable_Package_References.ItemIndexPaintable_Access;
   function "=" (Left, Right : ItemIndexPaintable_Access) return Boolean renames org.allbinary.graphics.form.ItemIndexPaintable_Package_References."=";
   subtype ItemIndexPaintable_Access_Array is org.allbinary.graphics.form.ItemIndexPaintable_Package_References.ItemIndexPaintable_Access_Array;
   function "=" (Left, Right : ItemIndexPaintable_Access_Array) return Boolean renames org.allbinary.graphics.form.ItemIndexPaintable_Package_References."=";
   subtype ItemIndexPaintable_Access_Array_Access is org.allbinary.graphics.form.ItemIndexPaintable_Package_References.ItemIndexPaintable_Access_Array_Access;
   function "=" (Left, Right : ItemIndexPaintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ItemIndexPaintable_Package_References."=";
   subtype ItemIndexPaintable_Access_Array_Access_Array is org.allbinary.graphics.form.ItemIndexPaintable_Package_References.ItemIndexPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : ItemIndexPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.ItemIndexPaintable_Package_References."=";
   subtype ItemIndexPaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ItemIndexPaintable_Package_References.ItemIndexPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ItemIndexPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ItemIndexPaintable_Package_References."=";

   type ItemIndexPaintable is new Java_Object with null record;
   instance : ItemIndexPaintable_Access;

   procedure Initialize (This : in out ItemIndexPaintable'Class);
   function Create return ItemIndexPaintable_Access;
   function getInstance return ItemIndexPaintable_Access;
   function paint (This : in out ItemIndexPaintable; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer;
   procedure paint (This : in out ItemIndexPaintable; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.ItemIndexPaintable_Package;


