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


with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References;
with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package; use org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package_References;
with org.allbinary.game.layer.unit.UnitLayer_Package; use org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package_References;
with org.allbinary.game.layer.unit.UnitWaypointBehavior_Package; use org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.game.input.form.PrimaryWaypointHelper_Package; use org.allbinary.game.input.form.PrimaryWaypointHelper_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;
with org.allbinary.game.input.form.PrimaryWaypointHelper_Package;
with org.allbinary.game.layer.SensorAction_Package;
with org.allbinary.game.layer.unit.UnitWaypointStrings_Package;
with org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package;
with org.allbinary.game.layer.waypoint.WaypointLayer_Package;

package body org.allbinary.game.input.form.AssignWaypointsUtil_Package is

   package NullPathFindingLayer_Package renames Standard.org.allbinary.game.layer.NullPathFindingLayer_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package UnitWaypointBehavior_Package renames Standard.org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype AdvancedRTSGameLayer_Access is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access;
   function "=" (Left, Right : AdvancedRTSGameLayer_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References."=";
   subtype AdvancedRTSGameLayer_Access_Array is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access_Array;
   function "=" (Left, Right : AdvancedRTSGameLayer_Access_Array) return Boolean renames org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References."=";
   subtype AdvancedRTSGameLayer_Access_Array_Access is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access_Array_Access;
   function "=" (Left, Right : AdvancedRTSGameLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References."=";
   subtype AdvancedRTSGameLayer_Access_Array_Access_Array is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AdvancedRTSGameLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References."=";
   subtype AdvancedRTSGameLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References.AdvancedRTSGameLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvancedRTSGameLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSGameLayer_Package_References."=";
   subtype RTSLayerEvent_Access is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access;
   function "=" (Left, Right : RTSLayerEvent_Access) return Boolean renames org.allbinary.game.layer.RTSLayerEvent_Package_References."=";
   subtype RTSLayerEvent_Access_Array is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array;
   function "=" (Left, Right : RTSLayerEvent_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerEvent_Package_References."=";
   subtype RTSLayerEvent_Access_Array_Access is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array_Access;
   function "=" (Left, Right : RTSLayerEvent_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerEvent_Package_References."=";
   subtype RTSLayerEvent_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayerEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerEvent_Package_References."=";
   subtype RTSLayerEvent_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayerEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerEvent_Package_References."=";
   subtype UnitLayer_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access;
   function "=" (Left, Right : UnitLayer_Access) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array;
   function "=" (Left, Right : UnitLayer_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access;
   function "=" (Left, Right : UnitLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array;
   function "=" (Left, Right : UnitLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype UnitLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UnitLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitLayer_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   procedure Initialize_Fields (This : in out AssignWaypointsUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.WAYPOINT_EVENT := RTSLayerEvent_Package.Create (NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER);
   end Initialize_Fields;

   procedure Initialize (This : in out AssignWaypointsUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AssignWaypointsUtil_Access is
      This : constant AssignWaypointsUtil_Access := new AssignWaypointsUtil;
   begin
      AssignWaypointsUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AssignWaypointsUtil_Access is
   begin
        return AssignWaypointsUtil_Access (AssignWaypointsUtil_Package.instance);
   end getInstance;

   procedure set (This : in out AssignWaypointsUtil; unitLayer_Param : access UnitLayer_Package.UnitLayer'Class; ownerAdvancedRTSGameLayer_Param : access AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer'Class) is
      unitLayer : constant UnitLayer_Access := UnitLayer_Access (unitLayer_Param);
      ownerAdvancedRTSGameLayer : constant AdvancedRTSGameLayer_Access := AdvancedRTSGameLayer_Access (ownerAdvancedRTSGameLayer_Param);
      list : BasicArrayList_Access;
      unitWaypointBehavior : UnitWaypointBehavior_Access;
      waypointLayer : RTSLayer_Access;
      index : Integer;
      waypointLayer_2 : PathFindingLayerInterface_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            list := ownerAdvancedRTSGameLayer.getWaypointBehavior.getOwnedWaypointList;
            unitWaypointBehavior := UnitWaypointBehavior_Access (unitLayer.getWaypointBehavior);
            for index in reverse 0 .. (list.size) - (1) loop
                waypointLayer := RTSLayer_Access (list.get (index));
                This.WAYPOINT_EVENT.setRtsLayer (waypointLayer);
                unitWaypointBehavior.onWaypointEvent (This.WAYPOINT_EVENT);
            end loop;
            waypointLayer_2 := PathFindingLayerInterface_Access (PrimaryWaypointHelper_Package.getInstance.getWaypointLayer);
            if (waypointLayer_2) /= (NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER) then
                This.WAYPOINT_EVENT.setRtsLayer (waypointLayer_2);
                unitWaypointBehavior.onWaypointEvent (This.WAYPOINT_EVENT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, AssignWaypointsUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("set"), e);
                end;
        end;
   end set;

begin
   null;
   instance := AssignWaypointsUtil_Package.Create;

end org.allbinary.game.input.form.AssignWaypointsUtil_Package;


