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


package body org.allbinary.game.layer.MultipassWaypointPathRunnable_Package is

   procedure Initialize_Fields (This : in out MultipassWaypointPathRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicArrayListUtil := BasicArrayListUtil_Package.getInstance;
      This.multipassState := MultipassState_Package.Create;
      This.done := False;
      This.list := This.basicArrayListUtil.getImmutableInstance;
      This.pathFindingInfo := NullUtil_Package.getInstance.NULL_OBJECT;
      This.FIRST_RUNNABLE := FirstRunnable_Package.Create (This'Unchecked_Access);
      This.SECOND_RUNNABLE := SecondRunnable_Package.Create (This'Unchecked_Access);
      This.END_RUNNABLE := EndRunnable_Package.Create (This'Unchecked_Access);
      This.ALREADY_ENDED_RUNNABLE := ARunnable_Package.Create  --  Java anonymous class body: implement it as a named type
--          
--     procedure run (This : in out ) is
--     begin
--              Java_Throw (Java_New_Exception ("RuntimeException"));
--     end run;
;
      This.currentPassRunnable := This.FIRST_RUNNABLE;
   end Initialize_Fields;


   procedure Initialize (This : in out MultipassWaypointPathRunnable'Class) is
   begin
      WaypointPathRunnableBase_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MultipassWaypointPathRunnable_Access is
      This : constant MultipassWaypointPathRunnable_Access := new MultipassWaypointPathRunnable;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure setRunning (This : in out MultipassWaypointPathRunnable; isRunning : Boolean) is
   begin
        This.runningP := isRunning;
        if This.runningP then
            This.reset;
            This.done := False;
        end if;
   end setRunning;

   procedure run (This : in out MultipassWaypointPathRunnable) is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            This.currentPassRunnable.run;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.RUN, e);
            This.setRunning (False);
                end;
        end;
   end run;

   procedure reset2 (This : in out MultipassWaypointPathRunnable) is
   begin
        This.multipassState.step := 0;
        This.multipassState.iteration := 0;
        This.multipassState.iteration2 := 0;
        This.pathFindingInfo := NullUtil_Package.getInstance.NULL_OBJECT;
   end reset2;

   procedure finish (This : in out MultipassWaypointPathRunnable) is
   begin
        This.reset2;
        This.currentPassRunnable := This.ALREADY_ENDED_RUNNABLE;
        This.done := True;
   end finish;

   function isDone (This : in out MultipassWaypointPathRunnable) return Boolean is
   begin
        return This.done;
   end isDone;

   procedure reset (This : in out MultipassWaypointPathRunnable) is
   begin
        This.reset2;
        This.currentPassRunnable := This.FIRST_RUNNABLE;
        This.done := False;
   end reset;

   procedure processFirstRunnable (This : in out MultipassWaypointPathRunnable) is
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      localPathFindingInfo : PathFindingInfo_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.pathFindingLayer.getWaypointRunnableLogHelper.start (This.pathFindingLayer);
            This.reset2;
            geographicMapCellPosition := This.pathFindingLayer.getCurrentGeographicMapCellPosition;
            if (geographicMapCellPosition) = (null) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Should never be running here")));
            end if;
            This.pathFindingInfo := This.targetPathFindingLayer.getWaypointBehavior.getWaypoint.getPathFindingInfo (geographicMapCellPosition);
            localPathFindingInfo := PathFindingInfo_Access (This.pathFindingInfo);
            This.list := This.targetPathFindingLayer.getWaypointBehavior.getWaypoint.getPathsList (geographicMapCellPosition, localPathFindingInfo, This.multipassState);
            if (This.list) /= (This.basicArrayListUtil.getImmutableInstance) then
                This.END_RUNNABLE.run;
            else
                This.currentPassRunnable := This.SECOND_RUNNABLE;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.RUN, e);
            This.setRunning (False);
            This.finish;
                end;
        end;
   end processFirstRunnable;

   procedure processSecondRunnable (This : in out MultipassWaypointPathRunnable) is
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      localPathFindingInfo : PathFindingInfo_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            geographicMapCellPosition := This.pathFindingLayer.getCurrentGeographicMapCellPosition;
            localPathFindingInfo := PathFindingInfo_Access (This.pathFindingInfo);
            This.list := This.targetPathFindingLayer.getWaypointBehavior.getWaypoint.getPathsList (geographicMapCellPosition, localPathFindingInfo, This.multipassState);
            if (This.list) /= (This.basicArrayListUtil.getImmutableInstance) then
                This.END_RUNNABLE.run;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.RUN, e);
            This.setRunning (False);
            This.finish;
                end;
        end;
   end processSecondRunnable;

   procedure processEndRunnable (This : in out MultipassWaypointPathRunnable) is
      waypointBehavior : WaypointBehaviorBase_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            waypointBehavior := This.pathFindingLayer.getWaypointBehavior;
            waypointBehavior.setWaypointPathsList (This.list);
            This.pathFindingLayer.getWaypointRunnableLogHelper.end_Id (This.pathFindingLayer);
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
        This.finish;
   end processEndRunnable;

   procedure isDone (This : in out MultipassWaypointPathRunnable) is
      Java_Result : constant Boolean := MultipassWaypointPathRunnable'Class (This).isDone;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDone;

end org.allbinary.game.layer.MultipassWaypointPathRunnable_Package;


package body org.allbinary.game.layer.FirstRunnable_Package is

   procedure Initialize_Fields (This : in out FirstRunnable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out FirstRunnable'Class; multipassWaypointPathRunnable : MultipassWaypointPathRunnable_Access) is
   begin
      ARunnable_Package.Initialize (This);
      Initialize_Fields (This);
            This.multipassWaypointPathRunnable := multipassWaypointPathRunnable;
   end Initialize;

   function Create (multipassWaypointPathRunnable : MultipassWaypointPathRunnable_Access) return FirstRunnable_Access is
      This : constant FirstRunnable_Access := new FirstRunnable;
   begin
      Initialize (This.all, multipassWaypointPathRunnable);
      return This;
   end Create;
    
   procedure run (This : in out FirstRunnable) is
   begin
            This.multipassWaypointPathRunnable.processFirstRunnable;
   end run;

end org.allbinary.game.layer.FirstRunnable_Package;


package body org.allbinary.game.layer.SecondRunnable_Package is

   procedure Initialize_Fields (This : in out SecondRunnable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out SecondRunnable'Class; multipassWaypointPathRunnable : MultipassWaypointPathRunnable_Access) is
   begin
      ARunnable_Package.Initialize (This);
      Initialize_Fields (This);
            This.multipassWaypointPathRunnable := multipassWaypointPathRunnable;
   end Initialize;

   function Create (multipassWaypointPathRunnable : MultipassWaypointPathRunnable_Access) return SecondRunnable_Access is
      This : constant SecondRunnable_Access := new SecondRunnable;
   begin
      Initialize (This.all, multipassWaypointPathRunnable);
      return This;
   end Create;
    
   procedure run (This : in out SecondRunnable) is
   begin
            This.multipassWaypointPathRunnable.processSecondRunnable;
   end run;

end org.allbinary.game.layer.SecondRunnable_Package;


package body org.allbinary.game.layer.EndRunnable_Package is

   procedure Initialize_Fields (This : in out EndRunnable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out EndRunnable'Class; multipassWaypointPathRunnable : MultipassWaypointPathRunnable_Access) is
   begin
      ARunnable_Package.Initialize (This);
      Initialize_Fields (This);
            This.multipassWaypointPathRunnable := multipassWaypointPathRunnable;
   end Initialize;

   function Create (multipassWaypointPathRunnable : MultipassWaypointPathRunnable_Access) return EndRunnable_Access is
      This : constant EndRunnable_Access := new EndRunnable;
   begin
      Initialize (This.all, multipassWaypointPathRunnable);
      return This;
   end Create;
    
   procedure run (This : in out EndRunnable) is
   begin
            This.multipassWaypointPathRunnable.processEndRunnable;
   end run;

end org.allbinary.game.layer.EndRunnable_Package;


