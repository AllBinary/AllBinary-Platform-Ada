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


with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.unit.UnitWaypointBehavior_Package; use org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.input.form.PrimaryWaypointHelper_Package; use org.allbinary.game.input.form.PrimaryWaypointHelper_Package;

package body org.allbinary.game.input.form.AssignWaypointsUtil_Package is

   package NullPathFindingLayer_Package renames Standard.org.allbinary.game.layer.NullPathFindingLayer_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package UnitWaypointBehavior_Package renames Standard.org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
        return AssignWaypointsUtil_Package.instance;
   end getInstance;

   procedure set (This : in out AssignWaypointsUtil; unitLayer_Param : access UnitLayer_Package.UnitLayer'Class; ownerAdvancedRTSGameLayer_Param : access AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer'Class) is
      unitLayer : constant UnitLayer_Access := UnitLayer_Access (unitLayer_Param);
      ownerAdvancedRTSGameLayer : constant AdvancedRTSGameLayer_Access := AdvancedRTSGameLayer_Access (ownerAdvancedRTSGameLayer_Param);
      list : BasicArrayList_Access;
      unitWaypointBehavior : UnitWaypointBehavior_Access;
      waypointLayer : RTSLayer_Access;
      index : Integer;
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
            waypointLayer := PrimaryWaypointHelper_Package.getInstance.getWaypointLayer;
            if (waypointLayer) /= (NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER) then
                This.WAYPOINT_EVENT.setRtsLayer (waypointLayer);
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


