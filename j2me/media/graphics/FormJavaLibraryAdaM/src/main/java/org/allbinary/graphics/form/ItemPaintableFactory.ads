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
limited with org.allbinary.graphics.form.ItemPaintableFactory_Package;
package org.allbinary.graphics.form.ItemPaintableFactory_Package_References is
   type ItemPaintableFactory_Access is access all org.allbinary.graphics.form.ItemPaintableFactory_Package.ItemPaintableFactory'Class;
   type ItemPaintableFactory_Access_Array is array (Natural range <>) of ItemPaintableFactory_Access;
   type ItemPaintableFactory_Access_Array_Access is access all ItemPaintableFactory_Access_Array;
   type ItemPaintableFactory_Access_Array_Access_Array is array (Natural range <>) of ItemPaintableFactory_Access_Array_Access;
   type ItemPaintableFactory_Access_Array_Access_Array_Access is access all ItemPaintableFactory_Access_Array_Access_Array;
   type ItemPaintableFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ItemPaintableFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ItemPaintableFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ItemPaintableFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ItemPaintableFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ItemPaintableFactory_Access_Array_Access is (if Value /= null and then Value.all in ItemPaintableFactory_Access_Array_Object'Class then ItemPaintableFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ItemPaintableFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ItemPaintableFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ItemPaintableFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ItemPaintableFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ItemPaintableFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ItemPaintableFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ItemPaintableFactory_Access_Array_Access_Array_Object'Class then ItemPaintableFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.ItemPaintableFactory_Package_References;

with org.allbinary.graphics.form.ItemPaintableFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.form.ItemPaintable_Package; use org.allbinary.graphics.form.ItemPaintable_Package;
limited with org.allbinary.graphics.form.PaintableForm_Package;
with org.allbinary.graphics.form.PaintableForm_Package_References;

package org.allbinary.graphics.form.ItemPaintableFactory_Package is

   package Reference_Types is
   subtype PaintableForm_Access is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access;
   use type PaintableForm_Access;
   subtype PaintableForm_Access_Array is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access_Array;
   use type PaintableForm_Access_Array;
   subtype PaintableForm_Access_Array_Access is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access_Array_Access;
   use type PaintableForm_Access_Array_Access;
   subtype PaintableForm_Access_Array_Access_Array is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access_Array_Access_Array;
   use type PaintableForm_Access_Array_Access_Array;
   subtype PaintableForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access_Array_Access_Array_Access;
   use type PaintableForm_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ItemPaintableFactory_Access is org.allbinary.graphics.form.ItemPaintableFactory_Package_References.ItemPaintableFactory_Access;
   function "=" (Left, Right : ItemPaintableFactory_Access) return Boolean renames org.allbinary.graphics.form.ItemPaintableFactory_Package_References."=";
   subtype ItemPaintableFactory_Access_Array is org.allbinary.graphics.form.ItemPaintableFactory_Package_References.ItemPaintableFactory_Access_Array;
   function "=" (Left, Right : ItemPaintableFactory_Access_Array) return Boolean renames org.allbinary.graphics.form.ItemPaintableFactory_Package_References."=";
   subtype ItemPaintableFactory_Access_Array_Access is org.allbinary.graphics.form.ItemPaintableFactory_Package_References.ItemPaintableFactory_Access_Array_Access;
   function "=" (Left, Right : ItemPaintableFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ItemPaintableFactory_Package_References."=";
   function Java_Box (Value : ItemPaintableFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.ItemPaintableFactory_Package_References.Java_Box;
   function Java_Unbox_ItemPaintableFactory_Access_Array (Value : access Java_Object'Class) return ItemPaintableFactory_Access_Array_Access renames org.allbinary.graphics.form.ItemPaintableFactory_Package_References.Java_Unbox_ItemPaintableFactory_Access_Array;
   subtype ItemPaintableFactory_Access_Array_Access_Array is org.allbinary.graphics.form.ItemPaintableFactory_Package_References.ItemPaintableFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ItemPaintableFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.ItemPaintableFactory_Package_References."=";
   subtype ItemPaintableFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ItemPaintableFactory_Package_References.ItemPaintableFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ItemPaintableFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ItemPaintableFactory_Package_References."=";
   function Java_Box (Value : ItemPaintableFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.ItemPaintableFactory_Package_References.Java_Box;
   function Java_Unbox_ItemPaintableFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ItemPaintableFactory_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.ItemPaintableFactory_Package_References.Java_Unbox_ItemPaintableFactory_Access_Array_Access_Array;

   type ItemPaintableFactory is new ItemPaintable with null record;
   instance : ItemPaintableFactory_Access;

   procedure Initialize (This : in out ItemPaintableFactory'Class);
   function Create return ItemPaintableFactory_Access;
   function getInstance return ItemPaintableFactory_Access;
   function getInstanceItemPaintable (This : in out ItemPaintableFactory; paintableForm_Param : access PaintableForm_Package.PaintableForm'Class) return ItemPaintable_Access;
   procedure getInstanceItemPaintable (This : in out ItemPaintableFactory; paintableForm_Param : access PaintableForm_Package.PaintableForm'Class);

end org.allbinary.graphics.form.ItemPaintableFactory_Package;


