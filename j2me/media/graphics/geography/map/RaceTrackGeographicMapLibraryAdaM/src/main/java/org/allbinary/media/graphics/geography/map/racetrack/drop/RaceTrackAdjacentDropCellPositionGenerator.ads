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

with AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package;
package org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package_References is
   type RaceTrackAdjacentDropCellPositionGenerator_Access is access all org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package.RaceTrackAdjacentDropCellPositionGenerator'Class;
   type RaceTrackAdjacentDropCellPositionGenerator_Access_Array is array (Natural range <>) of RaceTrackAdjacentDropCellPositionGenerator_Access;
   type RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access is access all RaceTrackAdjacentDropCellPositionGenerator_Access_Array;
   type RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array is array (Natural range <>) of RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access;
   type RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array_Access is access all RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array;
   type RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackAdjacentDropCellPositionGenerator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Object'Class then RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Object'Class (Value.all).Value else null);
   type RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array_Object'Class then RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.identification.GroupCommonFactory_Package;
with org.allbinary.game.identification.GroupCommonFactory_Package_References;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
limited with org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package;
with org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References;
limited with org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package; use org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package;

package org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package is

   package GroupCommonFactory_Package renames Standard.org.allbinary.game.identification.GroupCommonFactory_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package LayerCoveringCellPositionsUtil_Package renames Standard.org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapDirectionUtil_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
   package DropCellPositionGeneratorInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype GroupCommonFactory_Access is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access;
   use type GroupCommonFactory_Access;
   subtype GroupCommonFactory_Access_Array is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array;
   use type GroupCommonFactory_Access_Array;
   subtype GroupCommonFactory_Access_Array_Access is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array_Access;
   use type GroupCommonFactory_Access_Array_Access;
   subtype GroupCommonFactory_Access_Array_Access_Array is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array_Access_Array;
   use type GroupCommonFactory_Access_Array_Access_Array;
   subtype GroupCommonFactory_Access_Array_Access_Array_Access is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array_Access_Array_Access;
   use type GroupCommonFactory_Access_Array_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   use type AllBinaryGameLayerManager_Access;
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   subtype LayerCoveringCellPositionsUtil_Access is org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References.LayerCoveringCellPositionsUtil_Access;
   use type LayerCoveringCellPositionsUtil_Access;
   subtype LayerCoveringCellPositionsUtil_Access_Array is org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References.LayerCoveringCellPositionsUtil_Access_Array;
   use type LayerCoveringCellPositionsUtil_Access_Array;
   subtype LayerCoveringCellPositionsUtil_Access_Array_Access is org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References.LayerCoveringCellPositionsUtil_Access_Array_Access;
   use type LayerCoveringCellPositionsUtil_Access_Array_Access;
   subtype LayerCoveringCellPositionsUtil_Access_Array_Access_Array is org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References.LayerCoveringCellPositionsUtil_Access_Array_Access_Array;
   use type LayerCoveringCellPositionsUtil_Access_Array_Access_Array;
   subtype LayerCoveringCellPositionsUtil_Access_Array_Access_Array_Access is org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References.LayerCoveringCellPositionsUtil_Access_Array_Access_Array_Access;
   use type LayerCoveringCellPositionsUtil_Access_Array_Access_Array_Access;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
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
   subtype GeographicMapDirectionUtil_Access is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access;
   use type GeographicMapDirectionUtil_Access;
   subtype GeographicMapDirectionUtil_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access_Array;
   use type GeographicMapDirectionUtil_Access_Array;
   subtype GeographicMapDirectionUtil_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access_Array_Access;
   use type GeographicMapDirectionUtil_Access_Array_Access;
   subtype GeographicMapDirectionUtil_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access_Array_Access_Array;
   use type GeographicMapDirectionUtil_Access_Array_Access_Array;
   subtype GeographicMapDirectionUtil_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access_Array_Access_Array_Access;
   use type GeographicMapDirectionUtil_Access_Array_Access_Array_Access;
   subtype DropCellPositionGeneratorInterface_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References.DropCellPositionGeneratorInterface_Access;
   use type DropCellPositionGeneratorInterface_Access;
   subtype DropCellPositionGeneratorInterface_Access_Array is org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References.DropCellPositionGeneratorInterface_Access_Array;
   use type DropCellPositionGeneratorInterface_Access_Array;
   subtype DropCellPositionGeneratorInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References.DropCellPositionGeneratorInterface_Access_Array_Access;
   use type DropCellPositionGeneratorInterface_Access_Array_Access;
   subtype DropCellPositionGeneratorInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References.DropCellPositionGeneratorInterface_Access_Array_Access_Array;
   use type DropCellPositionGeneratorInterface_Access_Array_Access_Array;
   subtype DropCellPositionGeneratorInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References.DropCellPositionGeneratorInterface_Access_Array_Access_Array_Access;
   use type DropCellPositionGeneratorInterface_Access_Array_Access_Array_Access;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RaceTrackAdjacentDropCellPositionGenerator_Access is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package_References.RaceTrackAdjacentDropCellPositionGenerator_Access;
   function "=" (Left, Right : RaceTrackAdjacentDropCellPositionGenerator_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package_References."=";
   subtype RaceTrackAdjacentDropCellPositionGenerator_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package_References.RaceTrackAdjacentDropCellPositionGenerator_Access_Array;
   function "=" (Left, Right : RaceTrackAdjacentDropCellPositionGenerator_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package_References."=";
   subtype RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package_References.RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access;
   function "=" (Left, Right : RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package_References."=";
   function Java_Box (Value : RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package_References.Java_Box;
   function Java_Unbox_RaceTrackAdjacentDropCellPositionGenerator_Access_Array (Value : access Java_Object'Class) return RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package_References.Java_Unbox_RaceTrackAdjacentDropCellPositionGenerator_Access_Array;
   subtype RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package_References.RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package_References."=";
   subtype RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package_References.RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package_References."=";
   function Java_Box (Value : RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package_References.Java_Box;
   function Java_Unbox_RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array (Value : access Java_Object'Class) return RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package_References.Java_Unbox_RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array;

   type RaceTrackAdjacentDropCellPositionGenerator is new RaceTrackDropCellPositionGenerator with record
      layerCoveringCellPositionsUtil : LayerCoveringCellPositionsUtil_Access;
      groupCommonFactory : GroupCommonFactory_Access;
      surroundingCellPositions : GeographicMapCellPosition_Access_Array_Access;
      hashtable : ABHashtable_Access;
      geographicMapDirectionUtil : GeographicMapDirectionUtil_Access;
   end record;
   SINGLETON : RaceTrackAdjacentDropCellPositionGenerator_Access;

   procedure Initialize (This : in out RaceTrackAdjacentDropCellPositionGenerator'Class);
   function Create return RaceTrackAdjacentDropCellPositionGenerator_Access;
   function getInstance return DropCellPositionGeneratorInterface_Access;
   function getFirstNonRoadAdjacentCellPosition (This : in out RaceTrackAdjacentDropCellPositionGenerator; column : Integer; row : Integer) return GeographicMapCellPosition_Access;
   procedure getFirstNonRoadAdjacentCellPosition (This : in out RaceTrackAdjacentDropCellPositionGenerator; column : Integer; row : Integer);
   procedure update (This : in out RaceTrackAdjacentDropCellPositionGenerator; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class);
   procedure drop (This : in out RaceTrackAdjacentDropCellPositionGenerator; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; index : Integer);

end org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package;


