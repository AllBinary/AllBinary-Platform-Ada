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

with AllBinary_Java;
limited with org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package;
package org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package_References is
   type GeographicMapTopViewGameLayerBehavior1_Access is access all org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package.GeographicMapTopViewGameLayerBehavior1'Class;
   type GeographicMapTopViewGameLayerBehavior1_Access_Array is array (Natural range <>) of GeographicMapTopViewGameLayerBehavior1_Access;
   type GeographicMapTopViewGameLayerBehavior1_Access_Array_Access is access all GeographicMapTopViewGameLayerBehavior1_Access_Array;
   type GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array is array (Natural range <>) of GeographicMapTopViewGameLayerBehavior1_Access_Array_Access;
   type GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array_Access is access all GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array;
   type GeographicMapTopViewGameLayerBehavior1_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapTopViewGameLayerBehavior1_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapTopViewGameLayerBehavior1_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapTopViewGameLayerBehavior1_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapTopViewGameLayerBehavior1_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapTopViewGameLayerBehavior1_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapTopViewGameLayerBehavior1_Access_Array_Object'Class then GeographicMapTopViewGameLayerBehavior1_Access_Array_Object'Class (Value.all).Value else null);
   type GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array_Object'Class then GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package_References;

with org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package;
with org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References;
limited with org.allbinary.game.physics.acceleration.GravityUtil_Package;
with org.allbinary.game.physics.acceleration.GravityUtil_Package_References;
limited with org.allbinary.game.physics.velocity.VelocityProperties_Package;
with org.allbinary.game.physics.velocity.VelocityProperties_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;
with org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package; use org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package;

package org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package is

   package MultiGeographicMapBehavior_Package renames Standard.org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package;
   package GravityUtil_Package renames Standard.org.allbinary.game.physics.acceleration.GravityUtil_Package;
   package VelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.VelocityProperties_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package Reference_Types is
   subtype MultiGeographicMapBehavior_Access is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access;
   use type MultiGeographicMapBehavior_Access;
   subtype MultiGeographicMapBehavior_Access_Array is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access_Array;
   use type MultiGeographicMapBehavior_Access_Array;
   subtype MultiGeographicMapBehavior_Access_Array_Access is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access_Array_Access;
   use type MultiGeographicMapBehavior_Access_Array_Access;
   subtype MultiGeographicMapBehavior_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access_Array_Access_Array;
   use type MultiGeographicMapBehavior_Access_Array_Access_Array;
   subtype MultiGeographicMapBehavior_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access_Array_Access_Array_Access;
   use type MultiGeographicMapBehavior_Access_Array_Access_Array_Access;
   subtype GravityUtil_Access is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access;
   use type GravityUtil_Access;
   subtype GravityUtil_Access_Array is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access_Array;
   use type GravityUtil_Access_Array;
   subtype GravityUtil_Access_Array_Access is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access_Array_Access;
   use type GravityUtil_Access_Array_Access;
   subtype GravityUtil_Access_Array_Access_Array is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access_Array_Access_Array;
   use type GravityUtil_Access_Array_Access_Array;
   subtype GravityUtil_Access_Array_Access_Array_Access is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access_Array_Access_Array_Access;
   use type GravityUtil_Access_Array_Access_Array_Access;
   subtype VelocityProperties_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access;
   use type VelocityProperties_Access;
   subtype VelocityProperties_Access_Array is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array;
   use type VelocityProperties_Access_Array;
   subtype VelocityProperties_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access;
   use type VelocityProperties_Access_Array_Access;
   subtype VelocityProperties_Access_Array_Access_Array is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access_Array;
   use type VelocityProperties_Access_Array_Access_Array;
   subtype VelocityProperties_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access_Array_Access;
   use type VelocityProperties_Access_Array_Access_Array_Access;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   use type BasicGeographicMap_Access;
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   use type BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   use type BasicGeographicMap_Access_Array_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   use type GeographicMapCellPosition_Access;
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   use type GeographicMapCellPosition_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access;
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   use type GeographicMapCellPosition_Access_Array_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access_Array_Access;
   subtype GeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access;
   use type GeographicMapCellType_Access;
   subtype GeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array;
   use type GeographicMapCellType_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access;
   use type GeographicMapCellType_Access_Array_Access;
   subtype GeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array;
   use type GeographicMapCellType_Access_Array_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array_Access;
   use type GeographicMapCellType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GeographicMapTopViewGameLayerBehavior1_Access is org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package_References.GeographicMapTopViewGameLayerBehavior1_Access;
   function "=" (Left, Right : GeographicMapTopViewGameLayerBehavior1_Access) return Boolean renames org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package_References."=";
   subtype GeographicMapTopViewGameLayerBehavior1_Access_Array is org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package_References.GeographicMapTopViewGameLayerBehavior1_Access_Array;
   function "=" (Left, Right : GeographicMapTopViewGameLayerBehavior1_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package_References."=";
   subtype GeographicMapTopViewGameLayerBehavior1_Access_Array_Access is org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package_References.GeographicMapTopViewGameLayerBehavior1_Access_Array_Access;
   function "=" (Left, Right : GeographicMapTopViewGameLayerBehavior1_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package_References."=";
   function Java_Box (Value : GeographicMapTopViewGameLayerBehavior1_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package_References.Java_Box;
   function Java_Unbox_GeographicMapTopViewGameLayerBehavior1_Access_Array (Value : access Java_Object'Class) return GeographicMapTopViewGameLayerBehavior1_Access_Array_Access renames org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package_References.Java_Unbox_GeographicMapTopViewGameLayerBehavior1_Access_Array;
   subtype GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array is org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package_References.GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package_References."=";
   subtype GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array_Access is org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package_References.GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package_References."=";
   function Java_Box (Value : GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package_References.Java_Box;
   function Java_Unbox_GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array (Value : access Java_Object'Class) return GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array_Access renames org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package_References.Java_Unbox_GeographicMapTopViewGameLayerBehavior1_Access_Array_Access_Array;

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
   procedure gravity (This : in out GeographicMapTopViewGameLayerBehavior1; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getPosition (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access;
   procedure getPosition (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer);
   function getLeftPosition (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return GeographicMapCellPosition_Access;
   procedure getLeftPosition (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function getRightPosition (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return GeographicMapCellPosition_Access;
   procedure getRightPosition (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access;
   procedure getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer);
   procedure moveAndLand (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer);
   function move (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) return Boolean;
   procedure move (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer);
   procedure left (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure right (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package;


