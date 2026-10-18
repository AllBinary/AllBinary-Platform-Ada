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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.direction.DirectionCompositeInterface_Package; use org.allbinary.direction.DirectionCompositeInterface_Package;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.game.tracking.TrackingEventHandler_Package; use org.allbinary.game.tracking.TrackingEventHandler_Package;
with org.allbinary.layer.LayerInterface_Package; use org.allbinary.layer.LayerInterface_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.game.ag.ai.scroller.PacePatrolAI_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package DirectionCompositeInterface_Package renames Standard.org.allbinary.direction.DirectionCompositeInterface_Package;
   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;
   package TrackingEventHandler_Package renames Standard.org.allbinary.game.tracking.TrackingEventHandler_Package;
   package LayerInterface_Package renames Standard.org.allbinary.layer.LayerInterface_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out PacePatrolAI'Class) is
   begin
      null;
      
      This.firingDistance := 0;
      This.isFollowLimitedByTerrain := False;
   end Initialize_Fields;


   procedure Initialize (This : in out PacePatrolAI'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        BasePatrolAI_Package.Initialize (This, hashtable, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        TrackingEventHandler_Package.getInstance.addListenerInterface (PacePatrolAI_Access'(This'Unchecked_Access));
        This.trackingList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize;

   function Create (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return PacePatrolAI_Access is
      This : constant PacePatrolAI_Access := new PacePatrolAI;
   begin
      PacePatrolAI_Package.Initialize (This.all, hashtable_Param, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out PacePatrolAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      direction : Direction_Access;
      directionFactory : DirectionFactory_Access;
   begin
        PacePatrolAI'Class (This).update;
        direction := PacePatrolAI'Class (This).setFiringDirectionForTargetIfInRange;
        directionFactory := DirectionFactory_Package.getInstance;
        if (direction) = (directionFactory.LEFT) then
            if ((This.lastKeyDirection) /= (This.keyDirection)) or else (not (This.isFollowLimitedByTerrain)) then
                BasePatrolAI (This).processKeyAI (Canvas_Package.LEFT);
            end if;
            This.keyDirection := Canvas_Package.LEFT;
            This.lastKeyDirection := This.keyDirection;
            This.xTotalDistance := 0;
            BasePatrolAI (This).processKeyAI (Canvas_Package.KEY_NUM1);
        elsif (direction) = (directionFactory.RIGHT) then
            if ((This.lastKeyDirection) /= (This.keyDirection)) or else (not (This.isFollowLimitedByTerrain)) then
                BasePatrolAI (This).processKeyAI (Canvas_Package.RIGHT);
            end if;
            This.keyDirection := Canvas_Package.RIGHT;
            This.lastKeyDirection := This.keyDirection;
            This.xTotalDistance := 0;
            BasePatrolAI (This).processKeyAI (Canvas_Package.KEY_NUM1);
        else
            BasePatrolAI (This).processKeyAI (This.keyDirection);
        end if;
   end processAI;

   function setFiringDirectionForTargetIfInRange (This : in out PacePatrolAI) return Direction_Access is
      directionFactory : DirectionFactory_Access;
      ownerLayerInterface : AllBinaryLayer_Access;
      direction : Direction_Access;
      lastTrackingEvent : TrackingEvent_Access;
      lastTrackingLayerInterface : LayerInterface_Access;
      directionCompositeInterface : DirectionCompositeInterface_Access;
      size : Integer;
      x : Integer;
      y : Integer;
      yDistance : Integer;
      xDistance : Integer;
      absXDistance : Integer;
      absYDistance : Integer;
      index : Integer;
   begin
        directionFactory := DirectionFactory_Package.getInstance;
        ownerLayerInterface := PacePatrolAI'Class (This).getOwnerLayerInterface;
        direction := directionFactory.NOT_BORDERED_WITH;
        lastTrackingEvent := null;
        lastTrackingLayerInterface := null;
        directionCompositeInterface := null;
        size := This.trackingList.size;
        for index in 0 .. (size) - 1 loop
            lastTrackingEvent := TrackingEvent_Access (This.trackingList.get (0));
            lastTrackingLayerInterface := lastTrackingEvent.getLayerInterface;
            x := lastTrackingLayerInterface.getXP;
            y := lastTrackingLayerInterface.getYP;
            yDistance := ((ownerLayerInterface.getYP) - (y)) - (ownerLayerInterface.getHeight);
            xDistance := ((ownerLayerInterface.getXP) - (x)) - (ownerLayerInterface.getWidth);
            absXDistance := abs (xDistance);
            absYDistance := abs (yDistance);
            if (absYDistance) <= (100) then
                if (absXDistance) < ((PacePatrolAI'Class (This).getFiringDistance) / (2)) then
                    directionCompositeInterface := DirectionCompositeInterface_Access (PacePatrolAI'Class (This).getOwnerLayerInterface);
                    if ((xDistance) < (0)) and then ((directionCompositeInterface.getDirection) = (directionFactory.RIGHT)) then
                        direction := directionFactory.RIGHT;
                    elsif ((xDistance) > (0)) and then ((directionCompositeInterface.getDirection) = (directionFactory.LEFT)) then
                        direction := directionFactory.LEFT;
                    end if;
                end if;
            end if;
        end loop;
        return direction;
   end setFiringDirectionForTargetIfInRange;

   procedure disable (This : in out PacePatrolAI) is
   begin
        null;
   end disable;

   procedure onEvent (This : in out PacePatrolAI; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, PacePatrolAI_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onMovement (This : in out PacePatrolAI; trackingEvent_Param : access TrackingEvent_Package.TrackingEvent'Class) is
      trackingEvent : constant TrackingEvent_Access := TrackingEvent_Access (trackingEvent_Param);
   begin
        This.trackingList.clear;
        This.trackingList.add (Java_Object_Access (trackingEvent));
   end onMovement;

   function getFiringDistance (This : in out PacePatrolAI) return Integer is
   begin
        return This.firingDistance;
   end getFiringDistance;

   procedure setFiringDistance (This : in out PacePatrolAI; firingDistance : Integer) is
   begin
        This.firingDistance := firingDistance;
   end setFiringDistance;

end org.allbinary.game.ag.ai.scroller.PacePatrolAI_Package;


