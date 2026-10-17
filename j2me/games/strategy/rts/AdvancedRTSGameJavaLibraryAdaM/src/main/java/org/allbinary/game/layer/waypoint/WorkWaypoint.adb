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


package body org.allbinary.game.layer.waypoint.WorkWaypoint_Package is

   procedure Initialize_Fields (This : in out WorkWaypoint'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out WorkWaypoint'Class; ownerLayer : PathFindingLayerInterface_Access) is
   begin
        Waypoint_Package.Initialize (This, ownerLayer, WorkSound_Package.getInstance);
   end Initialize;

   function Create (ownerLayer : PathFindingLayerInterface_Access) return WorkWaypoint_Access is
      This : constant WorkWaypoint_Access := new WorkWaypoint;
   begin
      Initialize (This.all, ownerLayer);
      return This;
   end Create;

   --  throws Exception
   procedure visit (This : in out WorkWaypoint; unitLayer : UnitLayer_Access) is
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
        size := This.getConnectedWaypointList.size;
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
                while (This.getConnectedWaypointList.size) > (0) loop
                    rtsLayer := RTSLayer_Access (This.getConnectedWaypointList.get (0));
                    if rtsLayer.isDestroyed then
                        This.getConnectedWaypointList.remove (rtsLayer);
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

   procedure getType (This : in out WorkWaypoint) is
      Java_Result : constant Integer := WorkWaypoint'Class (This).getType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getType;

begin
   null;
   ID := SmallIntegerSingletonFactory_Package.getInstance.getAt (25);

end org.allbinary.game.layer.waypoint.WorkWaypoint_Package;


