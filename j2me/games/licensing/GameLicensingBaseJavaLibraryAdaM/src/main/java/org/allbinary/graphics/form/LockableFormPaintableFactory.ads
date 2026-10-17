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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.form.ItemPaintableFactory_Package; use org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.graphics.form.LockablePaintable_Package; use org.allbinary.graphics.form.LockablePaintable_Package;
with org.allbinary.graphics.form.ItemPaintable_Package; use org.allbinary.graphics.form.ItemPaintable_Package;
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;

package org.allbinary.graphics.form.LockableFormPaintableFactory_Package is


   type LockableFormPaintableFactory is tagged;
   type LockableFormPaintableFactory_Access is access all LockableFormPaintableFactory'Class;
   type LockableFormPaintableFactory_Access_Array is array (Natural range <>) of LockableFormPaintableFactory_Access;
   type LockableFormPaintableFactory_Access_Array_Access is access all LockableFormPaintableFactory_Access_Array;

   type LockableFormPaintableFactory is new ItemPaintableFactory with record
      lockedIndex : Integer;
   end record;

   procedure Initialize (This : in out LockableFormPaintableFactory'Class; lockedIndex : Integer);
   function Create (lockedIndex : Integer) return LockableFormPaintableFactory_Access;
   function getInstanceItemPaintable (This : in out LockableFormPaintableFactory; paintableForm_Param : access PaintableForm'Class) return ItemPaintable_Access;
   procedure getInstanceItemPaintable (This : in out LockableFormPaintableFactory; paintableForm_Param : access PaintableForm'Class);

end org.allbinary.graphics.form.LockableFormPaintableFactory_Package;


