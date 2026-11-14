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
limited with org.allbinary.game.ai.path.BasicAIProcessor_Package;
package org.allbinary.game.ai.path.BasicAIProcessor_Package_References is
   type BasicAIProcessor_Access is access all org.allbinary.game.ai.path.BasicAIProcessor_Package.BasicAIProcessor'Class;
   type BasicAIProcessor_Access_Array is array (Natural range <>) of BasicAIProcessor_Access;
   type BasicAIProcessor_Access_Array_Access is access all BasicAIProcessor_Access_Array;
   type BasicAIProcessor_Access_Array_Access_Array is array (Natural range <>) of BasicAIProcessor_Access_Array_Access;
   type BasicAIProcessor_Access_Array_Access_Array_Access is access all BasicAIProcessor_Access_Array_Access_Array;
   type BasicAIProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicAIProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicAIProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicAIProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicAIProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicAIProcessor_Access_Array_Access is (if Value /= null and then Value.all in BasicAIProcessor_Access_Array_Object'Class then BasicAIProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type BasicAIProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicAIProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicAIProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicAIProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicAIProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicAIProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicAIProcessor_Access_Array_Access_Array_Object'Class then BasicAIProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ai.path.BasicAIProcessor_Package_References;

with org.allbinary.game.ai.path.BasicAIProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References;
limited with org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package;
with org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References;
limited with org.allbinary.game.ai.path.BasicDirectionAIHelper_Package;
with org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References;

package org.allbinary.game.ai.path.BasicAIProcessor_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package GeographicMapCellHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapDirectionUtil_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
   package GeographicMapCellPathHistoryInfo_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package;
   package Reference_Types is
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
   subtype AngleInfo_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access;
   use type AngleInfo_Access;
   subtype AngleInfo_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array;
   use type AngleInfo_Access_Array;
   subtype AngleInfo_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access;
   use type AngleInfo_Access_Array_Access;
   subtype AngleInfo_Access_Array_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array;
   use type AngleInfo_Access_Array_Access_Array;
   subtype AngleInfo_Access_Array_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array_Access;
   use type AngleInfo_Access_Array_Access_Array_Access;
   subtype GeographicMapCellHistory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access;
   use type GeographicMapCellHistory_Access;
   subtype GeographicMapCellHistory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array;
   use type GeographicMapCellHistory_Access_Array;
   subtype GeographicMapCellHistory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access;
   use type GeographicMapCellHistory_Access_Array_Access;
   subtype GeographicMapCellHistory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array;
   use type GeographicMapCellHistory_Access_Array_Access_Array;
   subtype GeographicMapCellHistory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array_Access;
   use type GeographicMapCellHistory_Access_Array_Access_Array_Access;
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
   subtype GeographicMapCellPathHistoryInfo_Access is org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.GeographicMapCellPathHistoryInfo_Access;
   use type GeographicMapCellPathHistoryInfo_Access;
   subtype GeographicMapCellPathHistoryInfo_Access_Array is org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.GeographicMapCellPathHistoryInfo_Access_Array;
   use type GeographicMapCellPathHistoryInfo_Access_Array;
   subtype GeographicMapCellPathHistoryInfo_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.GeographicMapCellPathHistoryInfo_Access_Array_Access;
   use type GeographicMapCellPathHistoryInfo_Access_Array_Access;
   subtype GeographicMapCellPathHistoryInfo_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.GeographicMapCellPathHistoryInfo_Access_Array_Access_Array;
   use type GeographicMapCellPathHistoryInfo_Access_Array_Access_Array;
   subtype GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package_References.GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Access;
   use type GeographicMapCellPathHistoryInfo_Access_Array_Access_Array_Access;
   subtype BasicDirectionAIHelper_Access is org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.BasicDirectionAIHelper_Access;
   use type BasicDirectionAIHelper_Access;
   subtype BasicDirectionAIHelper_Access_Array is org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.BasicDirectionAIHelper_Access_Array;
   use type BasicDirectionAIHelper_Access_Array;
   subtype BasicDirectionAIHelper_Access_Array_Access is org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.BasicDirectionAIHelper_Access_Array_Access;
   use type BasicDirectionAIHelper_Access_Array_Access;
   subtype BasicDirectionAIHelper_Access_Array_Access_Array is org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.BasicDirectionAIHelper_Access_Array_Access_Array;
   use type BasicDirectionAIHelper_Access_Array_Access_Array;
   subtype BasicDirectionAIHelper_Access_Array_Access_Array_Access is org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.BasicDirectionAIHelper_Access_Array_Access_Array_Access;
   use type BasicDirectionAIHelper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicAIProcessor_Access is org.allbinary.game.ai.path.BasicAIProcessor_Package_References.BasicAIProcessor_Access;
   function "=" (Left, Right : BasicAIProcessor_Access) return Boolean renames org.allbinary.game.ai.path.BasicAIProcessor_Package_References."=";
   subtype BasicAIProcessor_Access_Array is org.allbinary.game.ai.path.BasicAIProcessor_Package_References.BasicAIProcessor_Access_Array;
   function "=" (Left, Right : BasicAIProcessor_Access_Array) return Boolean renames org.allbinary.game.ai.path.BasicAIProcessor_Package_References."=";
   subtype BasicAIProcessor_Access_Array_Access is org.allbinary.game.ai.path.BasicAIProcessor_Package_References.BasicAIProcessor_Access_Array_Access;
   function "=" (Left, Right : BasicAIProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.ai.path.BasicAIProcessor_Package_References."=";
   function Java_Box (Value : BasicAIProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ai.path.BasicAIProcessor_Package_References.Java_Box;
   function Java_Unbox_BasicAIProcessor_Access_Array (Value : access Java_Object'Class) return BasicAIProcessor_Access_Array_Access renames org.allbinary.game.ai.path.BasicAIProcessor_Package_References.Java_Unbox_BasicAIProcessor_Access_Array;
   subtype BasicAIProcessor_Access_Array_Access_Array is org.allbinary.game.ai.path.BasicAIProcessor_Package_References.BasicAIProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicAIProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ai.path.BasicAIProcessor_Package_References."=";
   subtype BasicAIProcessor_Access_Array_Access_Array_Access is org.allbinary.game.ai.path.BasicAIProcessor_Package_References.BasicAIProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicAIProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ai.path.BasicAIProcessor_Package_References."=";
   function Java_Box (Value : BasicAIProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ai.path.BasicAIProcessor_Package_References.Java_Box;
   function Java_Unbox_BasicAIProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicAIProcessor_Access_Array_Access_Array_Access renames org.allbinary.game.ai.path.BasicAIProcessor_Package_References.Java_Unbox_BasicAIProcessor_Access_Array_Access_Array;

   type BasicAIProcessor is new Java_Object with record
      name : Unbounded_String;
      geographicMapCellHistory : GeographicMapCellHistory_Access;
      geographicMapCellPositionBasicArrayList : BasicArrayList_Access;
      geographicMapCellPathHistoryInfo : GeographicMapCellPathHistoryInfo_Access;
      basicAI : BasicDirectionAIHelper_Access;
      geographicMapDirectionUtil : GeographicMapDirectionUtil_Access;
   end record;

   procedure Initialize (This : in out BasicAIProcessor'Class; name : Unbounded_String; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; geographicMapCellPathHistoryInfo_Param : access GeographicMapCellPathHistoryInfo_Package.GeographicMapCellPathHistoryInfo'Class; chosenPathList_Param : access BasicArrayList_Package.BasicArrayList'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; seed : Integer);
   function Create (name : Unbounded_String; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; geographicMapCellPathHistoryInfo_Param : access GeographicMapCellPathHistoryInfo_Package.GeographicMapCellPathHistoryInfo'Class; chosenPathList_Param : access BasicArrayList_Package.BasicArrayList'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; seed : Integer) return BasicAIProcessor_Access;
   procedure setNewPath (This : in out BasicAIProcessor; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; chosenPathList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure init (This : in out BasicAIProcessor);
   function goTowardNextChosenOnPathPosition (This : in out BasicAIProcessor; currentGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Integer;
   procedure goTowardNextChosenOnPathPosition (This : in out BasicAIProcessor; currentGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   procedure update (This : in out BasicAIProcessor);
   function processAI (This : in out BasicAIProcessor; myManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; currentGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Integer;
   procedure processAI (This : in out BasicAIProcessor; myManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; currentGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getName (This : in out BasicAIProcessor) return Unbounded_String;
   procedure setName (This : in out BasicAIProcessor; name : Unbounded_String);
   function getGeographicMapCellPathHistoryInfo (This : in out BasicAIProcessor) return GeographicMapCellPathHistoryInfo_Access;
   procedure setGeographicMapCellPathHistoryInfo (This : in out BasicAIProcessor; geographicMapCellPathHistoryInfo_Param : access GeographicMapCellPathHistoryInfo_Package.GeographicMapCellPathHistoryInfo'Class);
   function getGeographicMapCellHistory (This : in out BasicAIProcessor) return GeographicMapCellHistory_Access;
   procedure setGeographicMapCellHistory (This : in out BasicAIProcessor; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class);

end org.allbinary.game.ai.path.BasicAIProcessor_Package;


