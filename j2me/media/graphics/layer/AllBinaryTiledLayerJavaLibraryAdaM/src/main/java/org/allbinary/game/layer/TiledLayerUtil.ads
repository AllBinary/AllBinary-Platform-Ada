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
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;

package org.allbinary.game.layer.TiledLayerUtil_Package is


   type TiledLayerUtil is tagged;
   type TiledLayerUtil_Access is access all TiledLayerUtil'Class;
   type TiledLayerUtil_Access_Array is array (Natural range <>) of TiledLayerUtil_Access;
   type TiledLayerUtil_Access_Array_Access is access all TiledLayerUtil_Access_Array;

   type TiledLayerUtil is new Java_Object with null record;
   instance : TiledLayerUtil_Access;

   procedure Initialize (This : in out TiledLayerUtil'Class);
   function Create return TiledLayerUtil_Access;
   function getInstance return TiledLayerUtil_Access;
   function keepOnBorderdMapX (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; x : Integer; width : Integer; mapBorderBufferWidth : Integer) return Integer;
   procedure keepOnBorderdMapX (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; x : Integer; width : Integer; mapBorderBufferWidth : Integer);
   function keepOnBorderdMapY (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; y : Integer; height : Integer; mapBorderBufferHeight : Integer) return Integer;
   procedure keepOnBorderdMapY (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; y : Integer; height : Integer; mapBorderBufferHeight : Integer);
   function keepOnMapX (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; x : Integer; width : Integer) return Integer;
   procedure keepOnMapX (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; x : Integer; width : Integer);
   function keepOnMapY (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; y : Integer; height : Integer) return Integer;
   procedure keepOnMapY (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; y : Integer; height : Integer);

end org.allbinary.game.layer.TiledLayerUtil_Package;


