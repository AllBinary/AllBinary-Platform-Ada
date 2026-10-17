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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.ColorChangeEventHandler_Package; use org.allbinary.graphics.color.ColorChangeEventHandler_Package;
with org.allbinary.graphics.color.ColorChangeListener_Package; use org.allbinary.graphics.color.ColorChangeListener_Package;
with org.allbinary.graphics.form.FormPaintable_Package; use org.allbinary.graphics.form.FormPaintable_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.item.ABStringComponent_Package; use org.allbinary.graphics.form.item.ABStringComponent_Package;
with org.allbinary.graphics.form.item.ABTextItem_Package; use org.allbinary.graphics.form.item.ABTextItem_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.paint.BasicGameDemoPaintable_Package; use org.allbinary.game.paint.BasicGameDemoPaintable_Package;

package org.allbinary.game.paint.GameScrollMenuPaintable_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ColorChangeEventHandler_Package renames Standard.org.allbinary.graphics.color.ColorChangeEventHandler_Package;
   package ColorChangeListener_Package renames Standard.org.allbinary.graphics.color.ColorChangeListener_Package;
   package FormPaintable_Package renames Standard.org.allbinary.graphics.form.FormPaintable_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package ABStringComponent_Package renames Standard.org.allbinary.graphics.form.item.ABStringComponent_Package;
   package ABTextItem_Package renames Standard.org.allbinary.graphics.form.item.ABTextItem_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type GameScrollMenuPaintable is tagged;
   type GameScrollMenuPaintable_Access is access all GameScrollMenuPaintable'Class;
   type GameScrollMenuPaintable_Access_Array is array (Natural range <>) of GameScrollMenuPaintable_Access;
   type GameScrollMenuPaintable_Access_Array_Access is access all GameScrollMenuPaintable_Access_Array;

   type GameScrollMenuPaintable is new BasicGameDemoPaintable and ColorChangeListener with null record;

   procedure Initialize (This : in out GameScrollMenuPaintable'Class; mainDemoStatePaintable : Paintable_Access; ownershipPaintable : Paintable_Access; helpPaintableInterface : Paintable_Access; basicColor : BasicColor_Access);
   function Create (mainDemoStatePaintable : Paintable_Access; ownershipPaintable : Paintable_Access; helpPaintableInterface : Paintable_Access; basicColor : BasicColor_Access) return GameScrollMenuPaintable_Access;
   procedure setState (This : in out GameScrollMenuPaintable; state : Integer);
   procedure onEvent (This : in out GameScrollMenuPaintable; eventObject : AllBinaryEventObject_Access);
   procedure setColor (This : in out GameScrollMenuPaintable; basicColor : BasicColor_Access);

end org.allbinary.game.paint.GameScrollMenuPaintable_Package;


