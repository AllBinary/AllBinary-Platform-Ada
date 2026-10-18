-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.game.TiledLayer_Package; use javax.microedition.lcdui.game.TiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;

package org.allbinary.game.layer.AllBinaryJ2METiledLayer_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package TiledLayer_Package renames Standard.javax.microedition.lcdui.game.TiledLayer_Package;

   type AllBinaryJ2METiledLayer is tagged;
   type AllBinaryJ2METiledLayer_Access is access all AllBinaryJ2METiledLayer'Class;
   type AllBinaryJ2METiledLayer_Access_Array is array (Natural range <>) of AllBinaryJ2METiledLayer_Access;
   type AllBinaryJ2METiledLayer_Access_Array_Access is access all AllBinaryJ2METiledLayer_Access_Array;
   type AllBinaryJ2METiledLayer_Access_Array_Access_Array is array (Natural range <>) of AllBinaryJ2METiledLayer_Access_Array_Access;
   type AllBinaryJ2METiledLayer_Access_Array_Access_Array_Access is access all AllBinaryJ2METiledLayer_Access_Array_Access_Array;

   type AllBinaryJ2METiledLayer is new AllBinaryTiledLayer with record
      tiledLayerP : TiledLayer_Access;
      debugColor : Integer;
      font2 : Font_Access;
   end record;

   procedure Initialize (This : in out AllBinaryJ2METiledLayer'Class; dataId : Integer; tiledLayer_Param : access TiledLayer_Package.TiledLayer'Class; mapTwoDArray : Integer_Array_Access_Array_Access; debugColor : Integer);
   function Create (dataId : Integer; tiledLayer_Param : access TiledLayer_Package.TiledLayer'Class; mapTwoDArray : Integer_Array_Access_Array_Access; debugColor : Integer) return AllBinaryJ2METiledLayer_Access;
   procedure paint (This : in out AllBinaryJ2METiledLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintDebug (This : in out AllBinaryJ2METiledLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure moveDXY (This : in out AllBinaryJ2METiledLayer; dx : Integer; dy : Integer);
   procedure setPosition (This : in out AllBinaryJ2METiledLayer; x : Integer; y : Integer; z : Integer);
   function getTiledLayer (This : in out AllBinaryJ2METiledLayer) return TiledLayer_Access;
   function getCellWidth (This : in out AllBinaryJ2METiledLayer) return Integer;
   function getCellHeight (This : in out AllBinaryJ2METiledLayer) return Integer;
   function getCell (This : in out AllBinaryJ2METiledLayer; col : Integer; row : Integer) return Integer;
   procedure getCell (This : in out AllBinaryJ2METiledLayer; col : Integer; row : Integer);
   function getColumns (This : in out AllBinaryJ2METiledLayer) return Integer;
   function getRows (This : in out AllBinaryJ2METiledLayer) return Integer;
   procedure setCell (This : in out AllBinaryJ2METiledLayer; col : Integer; row : Integer; index : Integer);
   function getAnimatedTile (This : in out AllBinaryJ2METiledLayer; animationTileIndex : Integer) return Integer;
   procedure getAnimatedTile (This : in out AllBinaryJ2METiledLayer; animationTileIndex : Integer);

end org.allbinary.game.layer.AllBinaryJ2METiledLayer_Package;


