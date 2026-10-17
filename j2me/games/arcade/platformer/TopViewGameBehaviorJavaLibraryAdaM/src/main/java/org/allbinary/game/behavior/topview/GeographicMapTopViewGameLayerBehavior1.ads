-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package; use org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.physics.acceleration.GravityUtil_Package; use org.allbinary.game.physics.acceleration.GravityUtil_Package;
with org.allbinary.game.physics.velocity.VelocityProperties_Package; use org.allbinary.game.physics.velocity.VelocityProperties_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package; use org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package;
with org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package; use org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package;

package org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package is

   package MultiGeographicMapBehavior_Package renames Standard.org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package GravityUtil_Package renames Standard.org.allbinary.game.physics.acceleration.GravityUtil_Package;
   package VelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.VelocityProperties_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;

   type GeographicMapTopViewGameLayerBehavior1 is tagged;
   type GeographicMapTopViewGameLayerBehavior1_Access is access all GeographicMapTopViewGameLayerBehavior1'Class;
   type GeographicMapTopViewGameLayerBehavior1_Access_Array is array (Natural range <>) of GeographicMapTopViewGameLayerBehavior1_Access;
   type GeographicMapTopViewGameLayerBehavior1_Access_Array_Access is access all GeographicMapTopViewGameLayerBehavior1_Access_Array;

   type GeographicMapTopViewGameLayerBehavior1 is new GeographicMapTopViewLayerBehavior with record
      logUtil : LogUtil_Access;
      gravityUtil : GravityUtil_Access;
      geographicMapBehavior : MultiGeographicMapBehavior_Access;
      autoStepBlocks : Boolean;
      offsetY : Integer;
      previousGeographicMapCellPosition : GeographicMapCellPosition_Access;
   end record;

   procedure Initialize (This : in out GeographicMapTopViewGameLayerBehavior1'Class; maxGravityActionIndex : Integer; autoStepBlocks : Boolean; offsetY : Integer);
   function Create (maxGravityActionIndex : Integer; autoStepBlocks : Boolean; offsetY : Integer) return GeographicMapTopViewGameLayerBehavior1_Access;
   procedure gravity (This : in out GeographicMapTopViewGameLayerBehavior1; velocityProperties_Param : access VelocityProperties'Class; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class);
   function getPosition (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access;
   procedure getPosition (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer);
   function getLeftPosition (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer'Class) return GeographicMapCellPosition_Access;
   procedure getLeftPosition (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer'Class);
   function getRightPosition (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer'Class) return GeographicMapCellPosition_Access;
   procedure getRightPosition (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer'Class);
   function getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access;
   procedure getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer);
   procedure moveAndLand (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer);
   function move (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) return Boolean;
   procedure move (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer);
   procedure left (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class);
   procedure right (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class);

end org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package;


