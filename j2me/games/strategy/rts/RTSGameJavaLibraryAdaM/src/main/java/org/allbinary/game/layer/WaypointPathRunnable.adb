-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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


package body org.allbinary.game.layer.WaypointPathRunnable_Package is

   procedure Initialize_Fields (This : in out WaypointPathRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out WaypointPathRunnable'Class) is
   begin
      WaypointPathRunnableBase_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return WaypointPathRunnable_Access is
      This : constant WaypointPathRunnable_Access := new WaypointPathRunnable;
   begin
      WaypointPathRunnable_Package.Initialize (This.all);
      return This;
   end Create;

   procedure run (This : in out WaypointPathRunnable) is
      waypointBehavior : WaypointBehaviorBase_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.pathFindingLayer.getWaypointRunnableLogHelper.start (This.pathFindingLayer);
            waypointBehavior := This.pathFindingLayer.getWaypointBehavior;
            geographicMapCellPosition := This.pathFindingLayer.getCurrentGeographicMapCellPosition;
            if (geographicMapCellPosition) = (null) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Should never be running here")));
            end if;
            waypointBehavior.setWaypointPathsList (This.targetPathFindingLayer.getWaypointBehavior.getWaypoint.getPathsListRunnable (geographicMapCellPosition));
            This.pathFindingLayer.getWaypointRunnableLogHelper.end_Id (This.pathFindingLayer);
            Java_Sleep ((15) + (((This.priorityP) * (2))));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.RUN, e);
            This.setRunning (False);
                end;
        end;
   end run;

   function isDone (This : in out WaypointPathRunnable) return Boolean is
   begin
        return True;
   end isDone;

end org.allbinary.game.layer.WaypointPathRunnable_Package;


