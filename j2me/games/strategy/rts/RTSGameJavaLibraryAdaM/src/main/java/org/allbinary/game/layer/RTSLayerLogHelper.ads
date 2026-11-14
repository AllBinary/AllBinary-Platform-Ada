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
limited with org.allbinary.game.layer.RTSLayerLogHelper_Package;
package org.allbinary.game.layer.RTSLayerLogHelper_Package_References is
   type RTSLayerLogHelper_Access is access all org.allbinary.game.layer.RTSLayerLogHelper_Package.RTSLayerLogHelper'Class;
   type RTSLayerLogHelper_Access_Array is array (Natural range <>) of RTSLayerLogHelper_Access;
   type RTSLayerLogHelper_Access_Array_Access is access all RTSLayerLogHelper_Access_Array;
   type RTSLayerLogHelper_Access_Array_Access_Array is array (Natural range <>) of RTSLayerLogHelper_Access_Array_Access;
   type RTSLayerLogHelper_Access_Array_Access_Array_Access is access all RTSLayerLogHelper_Access_Array_Access_Array;
   type RTSLayerLogHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RTSLayerLogHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : RTSLayerLogHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RTSLayerLogHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RTSLayerLogHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RTSLayerLogHelper_Access_Array_Access is (if Value /= null and then Value.all in RTSLayerLogHelper_Access_Array_Object'Class then RTSLayerLogHelper_Access_Array_Object'Class (Value.all).Value else null);
   type RTSLayerLogHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RTSLayerLogHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RTSLayerLogHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RTSLayerLogHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RTSLayerLogHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RTSLayerLogHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RTSLayerLogHelper_Access_Array_Access_Array_Object'Class then RTSLayerLogHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.RTSLayerLogHelper_Package_References;

with org.allbinary.game.layer.RTSLayerLogHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;
limited with org.allbinary.math.NamedAngle_Package;
with org.allbinary.math.NamedAngle_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;

package org.allbinary.game.layer.RTSLayerLogHelper_Package is

   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package NamedAngle_Package renames Standard.org.allbinary.math.NamedAngle_Package;
   package GeographicMapCellHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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
   subtype NamedAngle_Access is org.allbinary.math.NamedAngle_Package_References.NamedAngle_Access;
   use type NamedAngle_Access;
   subtype NamedAngle_Access_Array is org.allbinary.math.NamedAngle_Package_References.NamedAngle_Access_Array;
   use type NamedAngle_Access_Array;
   subtype NamedAngle_Access_Array_Access is org.allbinary.math.NamedAngle_Package_References.NamedAngle_Access_Array_Access;
   use type NamedAngle_Access_Array_Access;
   subtype NamedAngle_Access_Array_Access_Array is org.allbinary.math.NamedAngle_Package_References.NamedAngle_Access_Array_Access_Array;
   use type NamedAngle_Access_Array_Access_Array;
   subtype NamedAngle_Access_Array_Access_Array_Access is org.allbinary.math.NamedAngle_Package_References.NamedAngle_Access_Array_Access_Array_Access;
   use type NamedAngle_Access_Array_Access_Array_Access;
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
   subtype PathFindingLayerInterface_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access;
   use type PathFindingLayerInterface_Access;
   subtype PathFindingLayerInterface_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array;
   use type PathFindingLayerInterface_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access;
   subtype PathFindingLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array;
   use type PathFindingLayerInterface_Access_Array_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RTSLayerLogHelper_Access is org.allbinary.game.layer.RTSLayerLogHelper_Package_References.RTSLayerLogHelper_Access;
   function "=" (Left, Right : RTSLayerLogHelper_Access) return Boolean renames org.allbinary.game.layer.RTSLayerLogHelper_Package_References."=";
   subtype RTSLayerLogHelper_Access_Array is org.allbinary.game.layer.RTSLayerLogHelper_Package_References.RTSLayerLogHelper_Access_Array;
   function "=" (Left, Right : RTSLayerLogHelper_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerLogHelper_Package_References."=";
   subtype RTSLayerLogHelper_Access_Array_Access is org.allbinary.game.layer.RTSLayerLogHelper_Package_References.RTSLayerLogHelper_Access_Array_Access;
   function "=" (Left, Right : RTSLayerLogHelper_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerLogHelper_Package_References."=";
   function Java_Box (Value : RTSLayerLogHelper_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.RTSLayerLogHelper_Package_References.Java_Box;
   function Java_Unbox_RTSLayerLogHelper_Access_Array (Value : access Java_Object'Class) return RTSLayerLogHelper_Access_Array_Access renames org.allbinary.game.layer.RTSLayerLogHelper_Package_References.Java_Unbox_RTSLayerLogHelper_Access_Array;
   subtype RTSLayerLogHelper_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayerLogHelper_Package_References.RTSLayerLogHelper_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayerLogHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerLogHelper_Package_References."=";
   subtype RTSLayerLogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayerLogHelper_Package_References.RTSLayerLogHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayerLogHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerLogHelper_Package_References."=";
   function Java_Box (Value : RTSLayerLogHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.RTSLayerLogHelper_Package_References.Java_Box;
   function Java_Unbox_RTSLayerLogHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return RTSLayerLogHelper_Access_Array_Access_Array_Access renames org.allbinary.game.layer.RTSLayerLogHelper_Package_References.Java_Unbox_RTSLayerLogHelper_Access_Array_Access_Array;

   type RTSLayerLogHelper is new Java_Object with null record;
   instance : RTSLayerLogHelper_Access;

   procedure Initialize (This : in out RTSLayerLogHelper'Class);
   function Create return RTSLayerLogHelper_Access;
   function getInstance return RTSLayerLogHelper_Access;
   procedure setClosestGeographicMapCellHistory (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; pathsList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure trackTo (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; nextUnvisitedPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; dx : Integer; dy : Integer; reason : Unbounded_String);
   procedure turnTo (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; dx : Integer; dy : Integer; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; angle : Integer; movementAngle_Param : access NamedAngle_Package.NamedAngle'Class; evading : Boolean; targetAngle : Integer);
   procedure doneMoving (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure closeEnough (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure movingLeft (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure movingRight (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure movingUp (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure movingDown (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure currentMoveEnded (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure evade (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure rotateLeft (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure rotateRight (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure handle (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; movementAngle_Param : access NamedAngle_Package.NamedAngle'Class);
   procedure noRotation (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure notOnPath (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; currentGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.game.layer.RTSLayerLogHelper_Package;


