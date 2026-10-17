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
with org.allbinary.game.physics.velocity.VelocityProperties_Package; use org.allbinary.game.physics.velocity.VelocityProperties_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package; use org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package;

package org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package is

   package VelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.VelocityProperties_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
   package BasicTopViewGeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type GeographicMapTopViewLayerBehavior is tagged;
   type GeographicMapTopViewLayerBehavior_Access is access all GeographicMapTopViewLayerBehavior'Class;
   type GeographicMapTopViewLayerBehavior_Access_Array is array (Natural range <>) of GeographicMapTopViewLayerBehavior_Access;
   type GeographicMapTopViewLayerBehavior_Access_Array_Access is access all GeographicMapTopViewLayerBehavior_Access_Array;

   type GeographicMapTopViewLayerBehavior is new TopViewGameLayerBehavior with null record;

   procedure Initialize (This : in out GeographicMapTopViewLayerBehavior'Class; maxGravityActionIndex : Integer);
   function Create (maxGravityActionIndex : Integer) return GeographicMapTopViewLayerBehavior_Access;
   function getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access; x : Integer; y : Integer) return GeographicMapCellPosition_Access;
   procedure getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access; x : Integer; y : Integer);
   function getGeographicMapCellPositionIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition : GeographicMapCellPosition_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access) return GeographicMapCellPosition_Access;
   procedure getGeographicMapCellPositionIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition : GeographicMapCellPosition_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access);
   function getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPositionList : BasicArrayList_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access) return GeographicMapCellPosition_Access;
   procedure getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPositionList : BasicArrayList_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access);
   procedure gravity (This : in out GeographicMapTopViewLayerBehavior; velocityProperties : VelocityProperties_Access; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition : GeographicMapCellPosition_Access);
   procedure left (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access);
   function move (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access; x : Integer; y : Integer) return Boolean;
   procedure move (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access; x : Integer; y : Integer);
   procedure moveAndLand (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition : GeographicMapCellPosition_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access; x : Integer; y : Integer);
   procedure right (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access);
   function hasSolidBlock (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access) return Boolean;
   procedure hasSolidBlock (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access);
   function isOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access) return Boolean;
   procedure isOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access);

end org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package;


