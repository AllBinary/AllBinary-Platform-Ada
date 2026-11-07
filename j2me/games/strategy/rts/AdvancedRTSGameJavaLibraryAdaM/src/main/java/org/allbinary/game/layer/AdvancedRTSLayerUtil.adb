-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
--  Generated Code Do Not Modify


with org.allbinary.game.layer.waypoint.WorkWaypoint_Package; use org.allbinary.game.layer.waypoint.WorkWaypoint_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package; use org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.game.layer.RTSLayerUtil_Package; use org.allbinary.game.layer.RTSLayerUtil_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleFactory_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;
with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.math.FrameUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.math.NamedAngle_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.game.layer.SensorAction_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
with org.allbinary.game.layer.unit.UnitWaypointStrings_Package;
with org.allbinary.game.layer.waypoint.Waypoint_Package;
with org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package;

package body org.allbinary.game.layer.AdvancedRTSLayerUtil_Package is

   package WorkWaypoint_Package renames Standard.org.allbinary.game.layer.waypoint.WorkWaypoint_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   subtype BaseRaceTrackGeographicMap_Access is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access;
   function "=" (Left, Right : BaseRaceTrackGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References."=";
   subtype BaseRaceTrackGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access_Array;
   function "=" (Left, Right : BaseRaceTrackGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References."=";
   subtype BaseRaceTrackGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access_Array_Access;
   function "=" (Left, Right : BaseRaceTrackGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References."=";
   subtype BaseRaceTrackGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : BaseRaceTrackGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References."=";
   subtype BaseRaceTrackGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References.BaseRaceTrackGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseRaceTrackGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package_References."=";
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   procedure Initialize_Fields (This : in out AdvancedRTSLayerUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AdvancedRTSLayerUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AdvancedRTSLayerUtil_Access is
      This : constant AdvancedRTSLayerUtil_Access := new AdvancedRTSLayerUtil;
   begin
      AdvancedRTSLayerUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AdvancedRTSLayerUtil_Access is
   begin
        return AdvancedRTSLayerUtil_Access (AdvancedRTSLayerUtil_Package.instance);
   end getInstance;

   function createFakeRTSLayerHashtable (This : in out AdvancedRTSLayerUtil; baseRaceTrackGeographicMap_Param : access BaseRaceTrackGeographicMap_Package.BaseRaceTrackGeographicMap'Class) return ABHashtable_Access is
      baseRaceTrackGeographicMap : constant BaseRaceTrackGeographicMap_Access := BaseRaceTrackGeographicMap_Access (baseRaceTrackGeographicMap_Param);
      hashtable : ABHashtable_Access;
   begin
        hashtable := RTSLayerUtil_Package.getInstance.createFakeRTSLayerHashtable (baseRaceTrackGeographicMap);
        hashtable.put (WorkWaypoint_Package.ID, SmallIntegerSingletonFactory_Package.getInstance.getAt (50));
        return hashtable;
   end createFakeRTSLayerHashtable;

   procedure createFakeRTSLayerHashtable (This : in out AdvancedRTSLayerUtil; baseRaceTrackGeographicMap_Param : access BaseRaceTrackGeographicMap_Package.BaseRaceTrackGeographicMap'Class) is
      Java_Result : constant ABHashtable_Access := AdvancedRTSLayerUtil'Class (This).createFakeRTSLayerHashtable (baseRaceTrackGeographicMap_Param => baseRaceTrackGeographicMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFakeRTSLayerHashtable;

begin
   null;
   instance := AdvancedRTSLayerUtil_Package.Create;

end org.allbinary.game.layer.AdvancedRTSLayerUtil_Package;


