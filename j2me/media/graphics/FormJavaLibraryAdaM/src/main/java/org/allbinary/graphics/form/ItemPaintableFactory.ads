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

package org.allbinary.graphics.form.ItemPaintableFactory_Package is


   type ItemPaintableFactory is tagged;
   type ItemPaintableFactory_Access is access all ItemPaintableFactory'Class;
   type ItemPaintableFactory_Access_Array is array (Natural range <>) of ItemPaintableFactory_Access;
   type ItemPaintableFactory_Access_Array_Access is access all ItemPaintableFactory_Access_Array;

   type ItemPaintableFactory is new ItemPaintable with null record;
   instance : ItemPaintableFactory_Access;

   procedure Initialize (This : in out ItemPaintableFactory'Class);
   function Create return ItemPaintableFactory_Access;
   function getInstance return ItemPaintableFactory_Access;
   procedure getInstance;
   function getInstanceItemPaintable (This : in out ItemPaintableFactory; paintableForm : PaintableForm_Access) return ItemPaintable_Access;
   procedure getInstanceItemPaintable (This : in out ItemPaintableFactory; paintableForm : PaintableForm_Access);

end org.allbinary.graphics.form.ItemPaintableFactory_Package;


