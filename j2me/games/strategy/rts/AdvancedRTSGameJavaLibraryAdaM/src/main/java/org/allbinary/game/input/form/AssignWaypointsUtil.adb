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


package body org.allbinary.game.input.form.AssignWaypointsUtil_Package is

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

   procedure set (This : in out AssignWaypointsUtil; unitLayer_Param : access UnitLayer'Class; ownerAdvancedRTSGameLayer_Param : access AdvancedRTSGameLayer'Class) is
      unitLayer : UnitLayer_Access := UnitLayer_Access (unitLayer_Param);
      ownerAdvancedRTSGameLayer : AdvancedRTSGameLayer_Access := AdvancedRTSGameLayer_Access (ownerAdvancedRTSGameLayer_Param);
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


