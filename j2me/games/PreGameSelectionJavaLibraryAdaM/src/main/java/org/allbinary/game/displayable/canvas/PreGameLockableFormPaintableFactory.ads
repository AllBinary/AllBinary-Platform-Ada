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
with org.allbinary.graphics.form.ItemPaintable_Package; use org.allbinary.graphics.form.ItemPaintable_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package; use org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;
with org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package; use org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package;
with org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package; use org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package;

package org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package is

   package ItemPaintable_Package renames Standard.org.allbinary.graphics.form.ItemPaintable_Package;
   package ItemPaintableFactory_Package renames Standard.org.allbinary.graphics.form.ItemPaintableFactory_Package;
   package PaintableForm_Package renames Standard.org.allbinary.graphics.form.PaintableForm_Package;
   package ScrollCurrentSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package;

   type PreGameLockableFormPaintableFactory is tagged;
   type PreGameLockableFormPaintableFactory_Access is access all PreGameLockableFormPaintableFactory'Class;
   type PreGameLockableFormPaintableFactory_Access_Array is array (Natural range <>) of PreGameLockableFormPaintableFactory_Access;
   type PreGameLockableFormPaintableFactory_Access_Array_Access is access all PreGameLockableFormPaintableFactory_Access_Array;

   type PreGameLockableFormPaintableFactory is new ItemPaintableFactory with record
      lockedIndex : Integer;
   end record;

   procedure Initialize (This : in out PreGameLockableFormPaintableFactory'Class; lockedIndex : Integer);
   function Create (lockedIndex : Integer) return PreGameLockableFormPaintableFactory_Access;
   function getInstanceItemPaintable (This : in out PreGameLockableFormPaintableFactory; paintableForm_Param : access PaintableForm'Class) return ItemPaintable_Access;
   procedure getInstanceItemPaintable (This : in out PreGameLockableFormPaintableFactory; paintableForm_Param : access PaintableForm'Class);

end org.allbinary.game.displayable.canvas.PreGameLockableFormPaintableFactory_Package;


