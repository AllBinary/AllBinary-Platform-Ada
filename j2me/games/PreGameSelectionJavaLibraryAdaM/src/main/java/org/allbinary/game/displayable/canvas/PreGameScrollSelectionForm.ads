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
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.form.FormTypeFactory_Package; use org.allbinary.graphics.form.FormTypeFactory_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package; use org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package; use org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package;

package org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package is

   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package FormTypeFactory_Package renames Standard.org.allbinary.graphics.form.FormTypeFactory_Package;
   package ItemPaintableFactory_Package renames Standard.org.allbinary.graphics.form.ItemPaintableFactory_Package;
   package ScrollCurrentSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package;

   type PreGameScrollSelectionForm is tagged;
   type PreGameScrollSelectionForm_Access is access all PreGameScrollSelectionForm'Class;
   type PreGameScrollSelectionForm_Access_Array is array (Natural range <>) of PreGameScrollSelectionForm_Access;
   type PreGameScrollSelectionForm_Access_Array_Access is access all PreGameScrollSelectionForm_Access_Array;

   type PreGameScrollSelectionForm is new ScrollCurrentSelectionForm with null record;

   procedure Initialize (This : in out PreGameScrollSelectionForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory : ItemPaintableFactory_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access);
   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory : ItemPaintableFactory_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return PreGameScrollSelectionForm_Access;
   procedure init (This : in out PreGameScrollSelectionForm; rectangle : Rectangle_Access);

end org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package;


