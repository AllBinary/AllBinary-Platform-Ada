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


package body org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package is

   procedure Initialize_Fields (This : in out DiveAndDirectionalTrackingAI'Class) is
   begin
      null;
      This.mathUtil := MathUtil_Package.getInstance;
      This.directionFactory := DirectionFactory_Package.getInstance;
      This.gameTickTimeDelayHelper := GameTickTimeDelayHelperFactory_Package.getInstance;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (500);
      This.list := BasicArrayListD_Package.Create;
      
      
      This.directionToKeyMap := new Integer_Array'(Canvas_Package.LEFT, Canvas_Package.DOWN, Canvas_Package.UP, Canvas_Package.RIGHT);
      This.initialDropped := False;
      This.diveP := False;
      This.directionOfTarget := Direction_Package.getInstance (0);
      This.MIN_DISTANCE := 40;
      This.lastTrackingLayerInterface := AllBinaryLayer_Package.NULL_ALLBINARY_LAYER;
      
      
      This.lastDirection := DirectionFactory_Package.getInstance.NO_DIRECTION;
   end Initialize_Fields;


   procedure Initialize (This : in out DiveAndDirectionalTrackingAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; artificialIntelligenceInterface_Param : access ArtificialIntelligenceInterface_Package.ArtificialIntelligenceInterface'Class; gameInput_Param : access GameInput_Package.GameInput'Class; visitor_Param : access Visitor_Package.Visitor'Class) is
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      artificialIntelligenceInterface : constant ArtificialIntelligenceInterface_Access := ArtificialIntelligenceInterface_Access (artificialIntelligenceInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
      visitor : constant Visitor_Access := Visitor_Access (visitor_Param);
      directionalCompositeInterface : DirectionalCompositeInterface_Access;
      velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface_Access;
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        This.aiVistor := visitor;
        This.artificialIntelligenceInterface := artificialIntelligenceInterface;
        directionalCompositeInterface := DirectionalCompositeInterface_Access (This.getOwnerLayerInterface);
        This.directionalInterface := directionalCompositeInterface.getDirectionalInterface;
        velocityInterfaceCompositeInterface := VelocityInterfaceCompositeInterface_Access (This.getOwnerLayerInterface);
        This.velocityInterface := velocityInterfaceCompositeInterface.getVelocityProperties;
        DestroyedEventHandler_Package.getInstance.addListenerInterface (DiveAndDirectionalTrackingAI_Access'(This'Unchecked_Access));
        This.init;
   end Initialize;

   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; artificialIntelligenceInterface_Param : access ArtificialIntelligenceInterface_Package.ArtificialIntelligenceInterface'Class; gameInput_Param : access GameInput_Package.GameInput'Class; visitor_Param : access Visitor_Package.Visitor'Class) return DiveAndDirectionalTrackingAI_Access is
      This : constant DiveAndDirectionalTrackingAI_Access := new DiveAndDirectionalTrackingAI;
   begin
      DiveAndDirectionalTrackingAI_Package.Initialize (This.all, ownerLayerInterface_Param, artificialIntelligenceInterface_Param, gameInput_Param, visitor_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out DiveAndDirectionalTrackingAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        if This.isBeyondTarget then
            This.init;
            This.velocityInterface.zero;
        end if;
        if not (This.diveP) then
            This.target (allBinaryLayerManager);
        else
            This.dive;
            This.attack;
        end if;
        This.list.clear;
   end processAI;

   procedure init (This : in out DiveAndDirectionalTrackingAI) is
   begin
        This.diveP := False;
        This.directionOfTarget := DirectionFactory_Package.getInstance.NOT_BORDERED_WITH;
        TrackingEventHandler_Package.getInstance.addListenerInterface (DiveAndDirectionalTrackingAI_Access'(This'Unchecked_Access));
   end init;

   --  throws Exception
   procedure target (This : in out DiveAndDirectionalTrackingAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      lastTrackingEvent : TrackingEvent_Access;
      layerInterface : AllBinaryLayer_Access;
      ownerLayerInterface : AllBinaryLayer_Access;
      x : Integer;
      y : Integer;
      yDistance : Integer;
      xDistance : Integer;
      directionFactory : DirectionFactory_Access;
   begin
        if (This.list.size) = (0) then
            return;
        end if;
        lastTrackingEvent := TrackingEvent_Access (This.list.removeAt (0));
        This.lastTrackingLayerInterface := lastTrackingEvent.getLayerInterface;
        layerInterface := This.lastTrackingLayerInterface;
        ownerLayerInterface := This.getOwnerLayerInterface;
        if (layerInterface.getGroupInterface) = (ownerLayerInterface.getGroupInterface) then
            return;
        end if;
        x := This.lastTrackingLayerInterface.getXP;
        y := This.lastTrackingLayerInterface.getYP;
        yDistance := ((ownerLayerInterface.getYP) - (y)) - (ownerLayerInterface.getHeight);
        xDistance := ((ownerLayerInterface.getXP) - (x)) - (ownerLayerInterface.getWidth);
        directionFactory := DirectionFactory_Package.getInstance;
        if (This.mathUtil.abs_Id (yDistance)) > (This.mathUtil.abs_Id (xDistance)) then
            if (yDistance) > (This.MIN_DISTANCE) then
                This.directionOfTarget := directionFactory.UP;
            elsif (yDistance) < (-(This.MIN_DISTANCE)) then
                This.directionOfTarget := directionFactory.DOWN;
            end if;
        else
            if (xDistance) > (This.MIN_DISTANCE) then
                This.directionOfTarget := directionFactory.LEFT;
            elsif (xDistance) < (-(This.MIN_DISTANCE)) then
                This.directionOfTarget := directionFactory.RIGHT;
            end if;
        end if;
        if (not (This.initialDropped)) and then ((This.directionOfTarget) /= (directionFactory.NOT_BORDERED_WITH)) then
            This.drop;
        end if;
        if This.initialDropped then
            if ((This.directionOfTarget) = (directionFactory.UP)) or else ((This.directionOfTarget) = (directionFactory.DOWN)) then
                This.verticalTargeting (x);
            elsif ((This.directionOfTarget) = (directionFactory.LEFT)) or else ((This.directionOfTarget) = (directionFactory.RIGHT)) then
                This.horizontalTargeting (y);
            else
                This.artificialIntelligenceInterface.processAI (allBinaryLayerManager);
            end if;
        end if;
   end target;

   --  throws Exception
   procedure verticalTargeting (This : in out DiveAndDirectionalTrackingAI; x : Integer) is
      ownerLayerInterface : AllBinaryLayer_Access;
   begin
        ownerLayerInterface := This.getOwnerLayerInterface;
        if (ownerLayerInterface.getXP) < (x) then
            This.moveRight;
        end if;
        if (ownerLayerInterface.getXP) > (x) then
            This.moveLeft;
        end if;
        if ((ownerLayerInterface.getXP) > ((x) - (3))) and then ((ownerLayerInterface.getXP) < ((x) + (3))) then
            This.setDive;
        end if;
   end verticalTargeting;

   --  throws Exception
   procedure horizontalTargeting (This : in out DiveAndDirectionalTrackingAI; y : Integer) is
      ownerLayerInterface : AllBinaryLayer_Access;
   begin
        ownerLayerInterface := This.getOwnerLayerInterface;
        if (ownerLayerInterface.getYP) < (y) then
            This.moveDown;
        end if;
        if (ownerLayerInterface.getYP) > (y) then
            This.moveUp;
        end if;
        if ((ownerLayerInterface.getYP) > ((y) - (3))) and then ((ownerLayerInterface.getYP) < ((y) + (3))) then
            This.setDive;
        end if;
   end horizontalTargeting;

   procedure setDive (This : in out DiveAndDirectionalTrackingAI) is
   begin
        This.diveP := True;
        This.velocityInterface.zero;
        TrackingEventHandler_Package.getInstance.removeListener (DiveAndDirectionalTrackingAI_Access'(This'Unchecked_Access));
   end setDive;

   --  throws Exception
   procedure moveRight (This : in out DiveAndDirectionalTrackingAI) is
   begin
        This.setLastDirection (This.directionFactory.RIGHT);
        This.directionalInterface.setFrameByDirection (This.lastDirection);
        This.aiVistor.visit (DiveAndDirectionalTrackingAI_Access'(This'Unchecked_Access));
   end moveRight;

   --  throws Exception
   procedure moveLeft (This : in out DiveAndDirectionalTrackingAI) is
   begin
        This.setLastDirection (This.directionFactory.LEFT);
        This.directionalInterface.setFrameByDirection (This.lastDirection);
        This.aiVistor.visit (DiveAndDirectionalTrackingAI_Access'(This'Unchecked_Access));
   end moveLeft;

   --  throws Exception
   procedure moveDown (This : in out DiveAndDirectionalTrackingAI) is
   begin
        This.setLastDirection (This.directionFactory.DOWN);
        This.directionalInterface.setFrameByDirection (This.lastDirection);
        This.aiVistor.visit (DiveAndDirectionalTrackingAI_Access'(This'Unchecked_Access));
   end moveDown;

   --  throws Exception
   procedure moveUp (This : in out DiveAndDirectionalTrackingAI) is
   begin
        This.setLastDirection (This.directionFactory.UP);
        This.directionalInterface.setFrameByDirection (This.lastDirection);
        This.aiVistor.visit (DiveAndDirectionalTrackingAI_Access'(This'Unchecked_Access));
   end moveUp;

   --  throws Exception
   procedure dive (This : in out DiveAndDirectionalTrackingAI) is
   begin
        This.directionalInterface.setFrameByDirection (This.directionOfTarget);
        This.aiVistor.visit (DiveAndDirectionalTrackingAI_Access'(This'Unchecked_Access));
   end dive;

   --  throws Exception
   procedure attack (This : in out DiveAndDirectionalTrackingAI) is
   begin
        BasicAI (This).processKeyAI (Canvas_Package.KEY_NUM1);
   end attack;

   --  throws Exception
   procedure drop (This : in out DiveAndDirectionalTrackingAI) is
   begin
        if This.timeDelayHelper.isTime (This.gameTickTimeDelayHelper.startTime) then
            This.initialDropped := True;
            This.aiVistor.visit (DiveAndDirectionalTrackingAI_Access'(This'Unchecked_Access));
        end if;
   end drop;

   function isBeyondTarget (This : in out DiveAndDirectionalTrackingAI) return Boolean is
   begin
        if (This.directionOfTarget) = (This.directionFactory.DOWN) then
            if (This.getOwnerLayerInterface.getYP) > ((This.lastTrackingLayerInterface.getYP) + (This.MIN_DISTANCE)) then
                return True;
            else
                return False;
            end if;
        elsif (This.directionOfTarget) = (This.directionFactory.UP) then
            if (This.getOwnerLayerInterface.getYP) < ((This.lastTrackingLayerInterface.getYP) + (This.MIN_DISTANCE)) then
                return True;
            else
                return False;
            end if;
        elsif (This.directionOfTarget) = (This.directionFactory.RIGHT) then
            if (This.getOwnerLayerInterface.getXP) > ((This.lastTrackingLayerInterface.getXP) + (This.MIN_DISTANCE)) then
                return True;
            else
                return False;
            end if;
        elsif (This.directionOfTarget) = (This.directionFactory.LEFT) then
            if (This.getOwnerLayerInterface.getXP) < ((This.lastTrackingLayerInterface.getXP) + (This.MIN_DISTANCE)) then
                return True;
            else
                return False;
            end if;
        else
            return False;
        end if;
   end isBeyondTarget;

   procedure onEvent (This : in out DiveAndDirectionalTrackingAI; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, DiveAndDirectionalTrackingAI_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onMovement (This : in out DiveAndDirectionalTrackingAI; trackingEvent_Param : access TrackingEvent_Package.TrackingEvent'Class) is
      trackingEvent : constant TrackingEvent_Access := TrackingEvent_Access (trackingEvent_Param);
   begin
        This.list.add (trackingEvent);
   end onMovement;

   procedure onDestroyed (This : in out DiveAndDirectionalTrackingAI; destroyedEvent_Param : access DestroyedEvent_Package.DestroyedEvent'Class) is
      destroyedEvent : constant DestroyedEvent_Access := DestroyedEvent_Access (destroyedEvent_Param);
   begin
        if (This.getOwnerLayerInterface) = (destroyedEvent.getLayerInterface) then
            TrackingEventHandler_Package.getInstance.removeListener (DiveAndDirectionalTrackingAI_Access'(This'Unchecked_Access));
            DestroyedEventHandler_Package.getInstance.removeListener (DiveAndDirectionalTrackingAI_Access'(This'Unchecked_Access));
        end if;
   end onDestroyed;

   procedure setLastDirection (This : in out DiveAndDirectionalTrackingAI; lastDirection_Param : access Direction_Package.Direction'Class) is
      lastDirection : constant Direction_Access := Direction_Access (lastDirection_Param);
      value : Integer;
   begin
        This.lastDirection := lastDirection;
        value := This.getLastDirection.getValue;
        if (value) < (4) then
            BasicAI (This).setLastKey (This.directionToKeyMap (value));
        end if;
   end setLastDirection;

   procedure setLastKey (This : in out DiveAndDirectionalTrackingAI; lastKey : Integer) is
   begin
        BasicAI (This).setLastKey (lastKey);
        if (This.getLastKey) = (Canvas_Package.LEFT) then
            This.lastDirection := DirectionFactory_Package.getInstance.LEFT;
        elsif (This.getLastKey) = (Canvas_Package.DOWN) then
            This.lastDirection := DirectionFactory_Package.getInstance.DOWN;
        elsif (This.getLastKey) = (Canvas_Package.UP) then
            This.lastDirection := DirectionFactory_Package.getInstance.UP;
        elsif (This.getLastKey) = (Canvas_Package.RIGHT) then
            This.lastDirection := DirectionFactory_Package.getInstance.RIGHT;
        end if;
   end setLastKey;

   function getLastDirection (This : in out DiveAndDirectionalTrackingAI) return Direction_Access is
   begin
        return This.lastDirection;
   end getLastDirection;

   function toString (This : in out DiveAndDirectionalTrackingAI) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (BasicAI (This).toString);
        stringBuffer.append (To_Unbounded_String (" LastDirection: "));
        stringBuffer.append (StringUtil_Package.getInstance.toString (This.getLastDirection));
        return stringBuffer.toString;
   end toString;

end org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package;


