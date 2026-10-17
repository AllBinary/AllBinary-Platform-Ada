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
--  with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.paint.ColorFillBasePaintable_Package; use org.allbinary.game.paint.ColorFillBasePaintable_Package;
with org.allbinary.game.paint.ColorFillPaintableFactory_Package; use org.allbinary.game.paint.ColorFillPaintableFactory_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.graphics.draw.DrawStringUtil_Package; use org.allbinary.graphics.draw.DrawStringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.game.displayable.canvas.GameCommandCanvas_Package; use org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;

package org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package is

   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package ColorFillBasePaintable_Package renames Standard.org.allbinary.game.paint.ColorFillBasePaintable_Package;
   package ColorFillPaintableFactory_Package renames Standard.org.allbinary.game.paint.ColorFillPaintableFactory_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package DrawStringUtil_Package renames Standard.org.allbinary.graphics.draw.DrawStringUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type GameInputMappingInstructionsCanvas is tagged;
   type GameInputMappingInstructionsCanvas_Access is access all GameInputMappingInstructionsCanvas'Class;
   type GameInputMappingInstructionsCanvas_Access_Array is array (Natural range <>) of GameInputMappingInstructionsCanvas_Access;
   type GameInputMappingInstructionsCanvas_Access_Array_Access is access all GameInputMappingInstructionsCanvas_Access_Array;

   type GameInputMappingInstructionsCanvas is new GameCommandCanvas with record
      drawStringUtil : DrawStringUtil_Access;
      TITLE : Unbounded_String;
      instructions : Unbounded_String_Array_Access;
      colorFillPaintable : ColorFillBasePaintable_Access;
      anchor : Integer;
   end record;
   DISPLAY : Command_Access;
   CLOSE : Command_Access;
   NAME : Unbounded_String;

   procedure Initialize (This : in out GameInputMappingInstructionsCanvas'Class; commandListener : CommandListener_Access; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access);
   function Create (commandListener : CommandListener_Access; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access) return GameInputMappingInstructionsCanvas_Access;
   procedure initCommands (This : in out GameInputMappingInstructionsCanvas; cmdListener : CommandListener_Access);
   procedure paint (This : in out GameInputMappingInstructionsCanvas; graphics : Graphics_Access);

end org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package;


