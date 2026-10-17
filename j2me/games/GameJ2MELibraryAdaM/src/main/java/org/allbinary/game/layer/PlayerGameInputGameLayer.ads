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
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package; use org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.view.StaticViewPosition_Package; use org.allbinary.view.StaticViewPosition_Package;
with org.allbinary.game.layer.AllBinaryGameLayer_Package; use org.allbinary.game.layer.AllBinaryGameLayer_Package;

package org.allbinary.game.layer.PlayerGameInputGameLayer_Package is

   package PlayerGameInput_Package renames Standard.org.allbinary.game.input.PlayerGameInput_Package;
   package PlayerGameInputCompositeInterface_Package renames Standard.org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StaticViewPosition_Package renames Standard.org.allbinary.view.StaticViewPosition_Package;

   type PlayerGameInputGameLayer is tagged;
   type PlayerGameInputGameLayer_Access is access all PlayerGameInputGameLayer'Class;
   type PlayerGameInputGameLayer_Access_Array is array (Natural range <>) of PlayerGameInputGameLayer_Access;
   type PlayerGameInputGameLayer_Access_Array_Access is access all PlayerGameInputGameLayer_Access_Array;

   type PlayerGameInputGameLayer is new AllBinaryGameLayer and PlayerGameInputCompositeInterface with record
      playerGameInput : PlayerGameInput_Access;
   end record;

   procedure Initialize (This : in out PlayerGameInputGameLayer'Class; playerInputId : Integer);
   function Create (playerInputId : Integer) return PlayerGameInputGameLayer_Access;
   function getPlayerGameInput (This : in out PlayerGameInputGameLayer) return PlayerGameInput_Access;
   procedure initInputProcessors (This : in out PlayerGameInputGameLayer);
   procedure processInput (This : in out PlayerGameInputGameLayer; myManager_Param : access AllBinaryLayerManager'Class);
   procedure paint (This : in out PlayerGameInputGameLayer; graphics_Param : access Graphics'Class);

end org.allbinary.game.layer.PlayerGameInputGameLayer_Package;


