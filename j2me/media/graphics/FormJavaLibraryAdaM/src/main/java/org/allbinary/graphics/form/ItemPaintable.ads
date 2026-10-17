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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;

package org.allbinary.graphics.form.ItemPaintable_Package is


   type ItemPaintable is tagged;
   type ItemPaintable_Access is access all ItemPaintable'Class;
   type ItemPaintable_Access_Array is array (Natural range <>) of ItemPaintable_Access;
   type ItemPaintable_Access_Array_Access is access all ItemPaintable_Access_Array;

   type ItemPaintable is new Java_Object with null record;

   procedure Initialize (This : in out ItemPaintable'Class);
   function Create return ItemPaintable_Access;
   procedure paint (This : in out ItemPaintable; graphics : Graphics_Access; currentIndex : Integer; x : Integer; y : Integer);

end org.allbinary.graphics.form.ItemPaintable_Package;


