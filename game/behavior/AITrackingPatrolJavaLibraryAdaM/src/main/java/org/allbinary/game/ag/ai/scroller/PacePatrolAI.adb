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


package body org.allbinary.game.ag.ai.scroller.PacePatrolAI_Package is

   procedure Initialize_Fields (This : in out PacePatrolAI'Class) is
   begin
      null;
      
      This.firingDistance := 0;
      This.isFollowLimitedByTerrain := False;
   end Initialize_Fields;


   procedure Initialize (This : in out PacePatrolAI'Class; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) is
   begin
        BasePatrolAI_Package.Initialize (This, hashtable, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        TrackingEventHandler_Package.getInstance.addListenerInterface (This'Unchecked_Access);
        This.trackingList := BasicArrayListD_Package.Create;
   end Initialize;

   function Create (hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return PacePatrolAI_Access is
      This : constant PacePatrolAI_Access := new PacePatrolAI;
   begin
      Initialize (This.all, hashtable, ownerLayerInterface, gameInput);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out PacePatrolAI; allBinaryLayerManager : AllBinaryLayerManager_Access) is
      direction : Direction_Access;
      directionFactory : DirectionFactory_Access;
   begin
        This.update;
        direction := This.setFiringDirectionForTargetIfInRange;
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
        ownerLayerInterface := This.getOwnerLayerInterface;
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
                if (absXDistance) < ((This.getFiringDistance) / (2)) then
                    directionCompositeInterface := DirectionCompositeInterface_Access (This.getOwnerLayerInterface);
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

   procedure onEvent (This : in out PacePatrolAI; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   procedure onMovement (This : in out PacePatrolAI; trackingEvent : TrackingEvent_Access) is
   begin
        This.trackingList.clear;
        This.trackingList.add (trackingEvent);
   end onMovement;

   function getFiringDistance (This : in out PacePatrolAI) return Integer is
   begin
        return This.firingDistance;
   end getFiringDistance;

   procedure setFiringDistance (This : in out PacePatrolAI; firingDistance : Integer) is
   begin
        This.firingDistance := firingDistance;
   end setFiringDistance;

   procedure setFiringDirectionForTargetIfInRange (This : in out PacePatrolAI) is
      Java_Result : constant Direction_Access := PacePatrolAI'Class (This).setFiringDirectionForTargetIfInRange;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end setFiringDirectionForTargetIfInRange;

   procedure getFiringDistance (This : in out PacePatrolAI) is
      Java_Result : constant Integer := PacePatrolAI'Class (This).getFiringDistance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFiringDistance;

end org.allbinary.game.ag.ai.scroller.PacePatrolAI_Package;


