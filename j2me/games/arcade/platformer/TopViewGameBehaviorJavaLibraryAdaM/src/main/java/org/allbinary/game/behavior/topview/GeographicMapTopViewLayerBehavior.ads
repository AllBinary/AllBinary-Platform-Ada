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
limited with org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package;
package org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package_References is
   type GeographicMapTopViewLayerBehavior_Access is access all org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package.GeographicMapTopViewLayerBehavior'Class;
   type GeographicMapTopViewLayerBehavior_Access_Array is array (Natural range <>) of GeographicMapTopViewLayerBehavior_Access;
   type GeographicMapTopViewLayerBehavior_Access_Array_Access is access all GeographicMapTopViewLayerBehavior_Access_Array;
   type GeographicMapTopViewLayerBehavior_Access_Array_Access_Array is array (Natural range <>) of GeographicMapTopViewLayerBehavior_Access_Array_Access;
   type GeographicMapTopViewLayerBehavior_Access_Array_Access_Array_Access is access all GeographicMapTopViewLayerBehavior_Access_Array_Access_Array;
   type GeographicMapTopViewLayerBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapTopViewLayerBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapTopViewLayerBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapTopViewLayerBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapTopViewLayerBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapTopViewLayerBehavior_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapTopViewLayerBehavior_Access_Array_Object'Class then GeographicMapTopViewLayerBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type GeographicMapTopViewLayerBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapTopViewLayerBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapTopViewLayerBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapTopViewLayerBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapTopViewLayerBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapTopViewLayerBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapTopViewLayerBehavior_Access_Array_Access_Array_Object'Class then GeographicMapTopViewLayerBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package_References;

with org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.physics.velocity.VelocityProperties_Package;
with org.allbinary.game.physics.velocity.VelocityProperties_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package; use org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package;

package org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package is

   package VelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.VelocityProperties_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GeographicMapTopViewLayerBehavior_Access is org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package_References.GeographicMapTopViewLayerBehavior_Access;
   function "=" (Left, Right : GeographicMapTopViewLayerBehavior_Access) return Boolean renames org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package_References."=";
   subtype GeographicMapTopViewLayerBehavior_Access_Array is org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package_References.GeographicMapTopViewLayerBehavior_Access_Array;
   function "=" (Left, Right : GeographicMapTopViewLayerBehavior_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package_References."=";
   subtype GeographicMapTopViewLayerBehavior_Access_Array_Access is org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package_References.GeographicMapTopViewLayerBehavior_Access_Array_Access;
   function "=" (Left, Right : GeographicMapTopViewLayerBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package_References."=";
   function Java_Box (Value : GeographicMapTopViewLayerBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package_References.Java_Box;
   function Java_Unbox_GeographicMapTopViewLayerBehavior_Access_Array (Value : access Java_Object'Class) return GeographicMapTopViewLayerBehavior_Access_Array_Access renames org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package_References.Java_Unbox_GeographicMapTopViewLayerBehavior_Access_Array;
   subtype GeographicMapTopViewLayerBehavior_Access_Array_Access_Array is org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package_References.GeographicMapTopViewLayerBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapTopViewLayerBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package_References."=";
   subtype GeographicMapTopViewLayerBehavior_Access_Array_Access_Array_Access is org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package_References.GeographicMapTopViewLayerBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapTopViewLayerBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package_References."=";
   function Java_Box (Value : GeographicMapTopViewLayerBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package_References.Java_Box;
   function Java_Unbox_GeographicMapTopViewLayerBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return GeographicMapTopViewLayerBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package_References.Java_Unbox_GeographicMapTopViewLayerBehavior_Access_Array_Access_Array;

   type GeographicMapTopViewLayerBehavior is new TopViewGameLayerBehavior with null record;

   procedure Initialize (This : in out GeographicMapTopViewLayerBehavior'Class; maxGravityActionIndex : Integer);
   function Create (maxGravityActionIndex : Integer) return GeographicMapTopViewLayerBehavior_Access;
   function getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access;
   procedure getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer);
   function getGeographicMapCellPositionIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return GeographicMapCellPosition_Access;
   procedure getGeographicMapCellPositionIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPositionList_Param : access BasicArrayList_Package.BasicArrayList'Class; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return GeographicMapCellPosition_Access;
   procedure getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPositionList_Param : access BasicArrayList_Package.BasicArrayList'Class; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure gravity (This : in out GeographicMapTopViewLayerBehavior; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   procedure left (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function move (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) return Boolean;
   procedure move (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer);
   procedure moveAndLand (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer);
   procedure right (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function hasSolidBlock (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access) return Boolean;
   procedure hasSolidBlock (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access);
   function isOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access) return Boolean;
   procedure isOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access);

end org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package;


