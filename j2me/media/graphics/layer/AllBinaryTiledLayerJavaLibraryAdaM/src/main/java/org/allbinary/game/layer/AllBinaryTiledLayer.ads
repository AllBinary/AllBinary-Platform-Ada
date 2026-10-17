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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.layer.NamedInterface_Package; use org.allbinary.layer.NamedInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.game.layer.AllBinaryTiledLayer_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;
   package NamedInterface_Package renames Standard.org.allbinary.layer.NamedInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type AllBinaryTiledLayer is tagged;
   type AllBinaryTiledLayer_Access is access all AllBinaryTiledLayer'Class;
   type AllBinaryTiledLayer_Access_Array is array (Natural range <>) of AllBinaryTiledLayer_Access;
   type AllBinaryTiledLayer_Access_Array_Access is access all AllBinaryTiledLayer_Access_Array;

   type AllBinaryTiledLayer is new Layer and NamedInterface and PaintableInterface with record
      cellWidth : Integer;
      cellHeight : Integer;
      halfWidth : Integer;
      halfHeight : Integer;
      halfCellWidth : Integer;
      halfCellHeight : Integer;
      dataId : Integer;
   end record;

   procedure Initialize (This : in out AllBinaryTiledLayer'Class; dataId : Integer; width : Integer; height : Integer; cellWidth : Integer; cellHeight : Integer);
   function Create (dataId : Integer; width : Integer; height : Integer; cellWidth : Integer; cellHeight : Integer) return AllBinaryTiledLayer_Access;
   procedure setCells (This : in out AllBinaryTiledLayer; mapTwoDArray : Integer_Array_Access_Array_Access);
   procedure updateCells (This : in out AllBinaryTiledLayer; mapTwoDArray : Integer_Array_Access_Array_Access; fromTileId : Integer; toTileId : Integer);
   function getName (This : in out AllBinaryTiledLayer) return Unbounded_String;
   procedure paint (This : in out AllBinaryTiledLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out AllBinaryTiledLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   function getX2 (This : in out AllBinaryTiledLayer) return Integer;
   function getY2 (This : in out AllBinaryTiledLayer) return Integer;
   function getZ2 (This : in out AllBinaryTiledLayer) return Integer;
   function getCellWidth (This : in out AllBinaryTiledLayer) return Integer;
   function getCellHeight (This : in out AllBinaryTiledLayer) return Integer;
   function getCell (This : in out AllBinaryTiledLayer; col : Integer; row : Integer) return Integer;
   procedure getCell (This : in out AllBinaryTiledLayer; col : Integer; row : Integer);
   function getColumns (This : in out AllBinaryTiledLayer) return Integer;
   function getRows (This : in out AllBinaryTiledLayer) return Integer;
   procedure setCell (This : in out AllBinaryTiledLayer; col : Integer; row : Integer; tileIndex : Integer);
   function getHalfWidth (This : in out AllBinaryTiledLayer) return Integer;
   function getHalfHeight (This : in out AllBinaryTiledLayer) return Integer;
   function getDataId (This : in out AllBinaryTiledLayer) return Integer;
   function getHalfCellWidth (This : in out AllBinaryTiledLayer) return Integer;
   function getHalfCellHeight (This : in out AllBinaryTiledLayer) return Integer;
   function isOnTileLayer (This : in out AllBinaryTiledLayer; column : Integer; row : Integer) return Boolean;
   procedure isOnTileLayer (This : in out AllBinaryTiledLayer; column : Integer; row : Integer);
   function getAnimatedTile (This : in out AllBinaryTiledLayer; animationTileIndex : Integer) return Integer;
   procedure getAnimatedTile (This : in out AllBinaryTiledLayer; animationTileIndex : Integer);

end org.allbinary.game.layer.AllBinaryTiledLayer_Package;


