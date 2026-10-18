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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.draw.CanvasDrawLineString_Package; use org.allbinary.graphics.draw.CanvasDrawLineString_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package; use org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package;

package org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package CanvasDrawLineString_Package renames Standard.org.allbinary.graphics.draw.CanvasDrawLineString_Package;
   package InitUpdatePaintable_Package renames Standard.org.allbinary.graphics.paint.InitUpdatePaintable_Package;

   type PreGameSelectorPaintable is tagged;
   type PreGameSelectorPaintable_Access is access all PreGameSelectorPaintable'Class;
   type PreGameSelectorPaintable_Access_Array is array (Natural range <>) of PreGameSelectorPaintable_Access;
   type PreGameSelectorPaintable_Access_Array_Access is access all PreGameSelectorPaintable_Access_Array;
   type PreGameSelectorPaintable_Access_Array_Access_Array is array (Natural range <>) of PreGameSelectorPaintable_Access_Array_Access;
   type PreGameSelectorPaintable_Access_Array_Access_Array_Access is access all PreGameSelectorPaintable_Access_Array_Access_Array;

   type PreGameSelectorPaintable is new InitUpdatePaintable with record
      title : Unbounded_String;
      canvasDrawLineString : CanvasDrawLineString_Access;
      preGameScrollSelectionForm : PreGameScrollSelectionForm_Access;
   end record;

   procedure Initialize (This : in out PreGameSelectorPaintable'Class; title : Unbounded_String; preGameScrollSelectionForm_Param : access PreGameScrollSelectionForm_Package.PreGameScrollSelectionForm'Class);
   function Create (title : Unbounded_String; preGameScrollSelectionForm_Param : access PreGameScrollSelectionForm_Package.PreGameScrollSelectionForm'Class) return PreGameSelectorPaintable_Access;
   procedure update (This : in out PreGameSelectorPaintable);
   procedure paint (This : in out PreGameSelectorPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   function getPreGameSelectionForm (This : in out PreGameSelectorPaintable) return PreGameScrollSelectionForm_Access;

end org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;


