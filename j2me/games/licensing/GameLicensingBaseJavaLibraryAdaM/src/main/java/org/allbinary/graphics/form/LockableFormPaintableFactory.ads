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

limited with org.allbinary.graphics.form.LockableFormPaintableFactory_Package;
package org.allbinary.graphics.form.LockableFormPaintableFactory_Package_References is
   type LockableFormPaintableFactory_Access is access all org.allbinary.graphics.form.LockableFormPaintableFactory_Package.LockableFormPaintableFactory'Class;
   type LockableFormPaintableFactory_Access_Array is array (Natural range <>) of LockableFormPaintableFactory_Access;
   type LockableFormPaintableFactory_Access_Array_Access is access all LockableFormPaintableFactory_Access_Array;
   type LockableFormPaintableFactory_Access_Array_Access_Array is array (Natural range <>) of LockableFormPaintableFactory_Access_Array_Access;
   type LockableFormPaintableFactory_Access_Array_Access_Array_Access is access all LockableFormPaintableFactory_Access_Array_Access_Array;
end org.allbinary.graphics.form.LockableFormPaintableFactory_Package_References;

with org.allbinary.graphics.form.LockableFormPaintableFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.form.ItemPaintableFactory_Package; use org.allbinary.graphics.form.ItemPaintableFactory_Package;
limited with org.allbinary.graphics.form.ItemPaintable_Package;
with org.allbinary.graphics.form.ItemPaintable_Package_References;
limited with org.allbinary.graphics.form.PaintableForm_Package;
with org.allbinary.graphics.form.PaintableForm_Package_References;

package org.allbinary.graphics.form.LockableFormPaintableFactory_Package is

   package Reference_Types is
   subtype ItemPaintable_Access is org.allbinary.graphics.form.ItemPaintable_Package_References.ItemPaintable_Access;
   use type ItemPaintable_Access;
   subtype ItemPaintable_Access_Array is org.allbinary.graphics.form.ItemPaintable_Package_References.ItemPaintable_Access_Array;
   use type ItemPaintable_Access_Array;
   subtype ItemPaintable_Access_Array_Access is org.allbinary.graphics.form.ItemPaintable_Package_References.ItemPaintable_Access_Array_Access;
   use type ItemPaintable_Access_Array_Access;
   subtype ItemPaintable_Access_Array_Access_Array is org.allbinary.graphics.form.ItemPaintable_Package_References.ItemPaintable_Access_Array_Access_Array;
   use type ItemPaintable_Access_Array_Access_Array;
   subtype ItemPaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ItemPaintable_Package_References.ItemPaintable_Access_Array_Access_Array_Access;
   use type ItemPaintable_Access_Array_Access_Array_Access;
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


   subtype LockableFormPaintableFactory_Access is org.allbinary.graphics.form.LockableFormPaintableFactory_Package_References.LockableFormPaintableFactory_Access;
   function "=" (Left, Right : LockableFormPaintableFactory_Access) return Boolean renames org.allbinary.graphics.form.LockableFormPaintableFactory_Package_References."=";
   subtype LockableFormPaintableFactory_Access_Array is org.allbinary.graphics.form.LockableFormPaintableFactory_Package_References.LockableFormPaintableFactory_Access_Array;
   function "=" (Left, Right : LockableFormPaintableFactory_Access_Array) return Boolean renames org.allbinary.graphics.form.LockableFormPaintableFactory_Package_References."=";
   subtype LockableFormPaintableFactory_Access_Array_Access is org.allbinary.graphics.form.LockableFormPaintableFactory_Package_References.LockableFormPaintableFactory_Access_Array_Access;
   function "=" (Left, Right : LockableFormPaintableFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.LockableFormPaintableFactory_Package_References."=";
   subtype LockableFormPaintableFactory_Access_Array_Access_Array is org.allbinary.graphics.form.LockableFormPaintableFactory_Package_References.LockableFormPaintableFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LockableFormPaintableFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.LockableFormPaintableFactory_Package_References."=";
   subtype LockableFormPaintableFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.form.LockableFormPaintableFactory_Package_References.LockableFormPaintableFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LockableFormPaintableFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.LockableFormPaintableFactory_Package_References."=";

   type LockableFormPaintableFactory is new ItemPaintableFactory with record
      lockedIndex : Integer;
   end record;

   procedure Initialize (This : in out LockableFormPaintableFactory'Class; lockedIndex : Integer);
   function Create (lockedIndex : Integer) return LockableFormPaintableFactory_Access;
   function getInstanceItemPaintable (This : in out LockableFormPaintableFactory; paintableForm_Param : access PaintableForm_Package.PaintableForm'Class) return ItemPaintable_Access;
   procedure getInstanceItemPaintable (This : in out LockableFormPaintableFactory; paintableForm_Param : access PaintableForm_Package.PaintableForm'Class);

end org.allbinary.graphics.form.LockableFormPaintableFactory_Package;


