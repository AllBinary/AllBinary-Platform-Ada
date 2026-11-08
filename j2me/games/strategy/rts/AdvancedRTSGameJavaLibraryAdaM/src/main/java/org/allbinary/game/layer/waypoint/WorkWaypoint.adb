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


with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package; use org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package;
with org.allbinary.game.layer.geological.resources.GeologicalResource_Package; use org.allbinary.game.layer.geological.resources.GeologicalResource_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package; use org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package_References;
with org.allbinary.game.layer.unit.UnitWaypointBehavior_Package; use org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
with org.allbinary.media.audio.WorkSound_Package; use org.allbinary.media.audio.WorkSound_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package; use org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleFactory_Package;
with org.allbinary.util.ArrayUtil_Package;
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
with org.allbinary.game.layer.unit.UnitWaypointStrings_Package;
with org.allbinary.graph.V_Package;
with org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package;
with org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package;

package body org.allbinary.game.layer.waypoint.WorkWaypoint_Package is

   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package GeologicalGeographicMapCellPosition_Package renames Standard.org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package;
   package GeologicalResource_Package renames Standard.org.allbinary.game.layer.geological.resources.GeologicalResource_Package;
   package UnitWaypointBehavior_Package renames Standard.org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
   package WorkSound_Package renames Standard.org.allbinary.media.audio.WorkSound_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   subtype PathFindingLayerInterface_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
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
   procedure Initialize_Fields (This : in out WorkWaypoint'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out WorkWaypoint'Class; ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      ownerLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (ownerLayer_Param);
   begin
        Waypoint_Package.Initialize (This, ownerLayer, WorkSound_Package.getInstance);
   end Initialize;

   function Create (ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) return WorkWaypoint_Access is
      This : constant WorkWaypoint_Access := new WorkWaypoint;
   begin
      WorkWaypoint_Package.Initialize (This.all, ownerLayer_Param);
      return This;
   end Create;

   --  throws Exception
   procedure visit (This : in out WorkWaypoint; unitLayer_Param : access UnitLayer_Package.UnitLayer'Class) is
      unitLayer : constant UnitLayer_Access := UnitLayer_Access (unitLayer_Param);
      size : Integer;
      occupyList : BasicArrayList_Access;
      outOfResources : Boolean;
      geologicalGeographicMapCellPosition : GeologicalGeographicMapCellPosition_Access;
      geologicalResource : GeologicalResource_Access;
      maxResourceLoad : Integer;
      index : Integer;
      waypointInfoHudPaintable : WaypointInfoHudPaintable_Access;
      unitWaypointBehavior : UnitWaypointBehavior_Access;
      rtsLayer : RTSLayer_Access;
   begin
        if (unitLayer.getGroupInterface (0)) /= (This.ownerLayer.getGroupInterface (0)) then
            return;
        end if;
        size := WorkWaypoint'Class (This).getConnectedWaypointList.size;
        if (size) > (0) then
            occupyList := This.ownerLayer.getGeographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList;
            outOfResources := True;
            geologicalGeographicMapCellPosition := null;
            geologicalResource := null;
            index := occupyList.size;
            while (Java_Pre_Decrement (index)) >= (0) loop
                geologicalGeographicMapCellPosition := GeologicalGeographicMapCellPosition_Access (occupyList.get (index));
                geologicalResource := geologicalGeographicMapCellPosition.getGeologicalResource;
                if (geologicalResource.getTotal) >= (1) then
                    outOfResources := False;
                    maxResourceLoad := Integer (unitLayer.getMaxResourceLoad);
                    geologicalResource.remove (maxResourceLoad);
                    unitLayer.setLoad (maxResourceLoad);
                end if;
            end loop;
            waypointInfoHudPaintable := WaypointInfoHudPaintable_Access (This.ownerLayer.getHudPaintable);
            if (This.ownerLayer) = (waypointInfoHudPaintable.getRtsLayer) then
                waypointInfoHudPaintable.updateSelectionInfo;
            end if;
            if not (outOfResources) then
                unitWaypointBehavior := UnitWaypointBehavior_Access (unitLayer.getWaypointBehavior);
                rtsLayer := null;
                while (WorkWaypoint'Class (This).getConnectedWaypointList.size) > (0) loop
                    rtsLayer := RTSLayer_Access (WorkWaypoint'Class (This).getConnectedWaypointList.get (0));
                    if rtsLayer.isDestroyed then
                        WorkWaypoint'Class (This).getConnectedWaypointList.remove (Java_Object_Access (rtsLayer));
                    else
                        unitWaypointBehavior.insertWaypoint (0, rtsLayer);
                        exit;
                    end if;
                end loop;
            end if;
        end if;
   end visit;

   function getType (This : in out WorkWaypoint) return Integer is
   begin
        return 2;
   end getType;

begin
   null;
   ID := SmallIntegerSingletonFactory_Package.getInstance.getAt (25);

end org.allbinary.game.layer.waypoint.WorkWaypoint_Package;


