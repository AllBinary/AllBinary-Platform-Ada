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


package body org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package is

   procedure Initialize_Fields (This : in out HorizontaRotationManeuverAI'Class) is
   begin
      null;
      This.circularIndexUtil := CircularIndexUtil_Package.createInstanceAt (10, Integer_Package.MAX_VALUE);
      This.currentSpeedDivisor := 5;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out HorizontaRotationManeuverAI'Class; ownerLayerInterface_Param : access AllBinaryLayer'Class; gameInput_Param : access GameInput'Class) is
      ownerLayerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : GameInput_Access := GameInput_Access (gameInput_Param);
      rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface_Access;
      velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface_Access;
      rotationAnimationInterface : RotationAnimationInterface_Access;
      angleIncrementInfo : AngleIncrementInfo_Access;
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        rotationAnimationInterfaceCompositeInterface := RotationAnimationInterfaceCompositeInterface_Access (This.getOwnerLayerInterface);
        This.rotationAnimationInterface := rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface;
        velocityInterfaceCompositeInterface := VelocityInterfaceCompositeInterface_Access (This.getOwnerLayerInterface);
        This.baseVelocityInterface := velocityInterfaceCompositeInterface.getVelocityProperties;
        This.velocityInterface := VelocityInterface_Access (This.baseVelocityInterface);
        rotationAnimationInterface := RotationAnimationInterface_Access (This.rotationAnimationInterface);
        angleIncrementInfo := rotationAnimationInterface.getAngleInfoP.getAngleIncrementInfo;
        rotationAnimationInterfaceCompositeInterface.setFrame (angleIncrementInfo.RIGHT_FRAME.intValue);
   end Initialize;

   function Create (ownerLayerInterface_Param : access AllBinaryLayer'Class; gameInput_Param : access GameInput'Class) return HorizontaRotationManeuverAI_Access is
      This : constant HorizontaRotationManeuverAI_Access := new HorizontaRotationManeuverAI;
   begin
      HorizontaRotationManeuverAI_Package.Initialize (This.all, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   procedure transition (This : in out HorizontaRotationManeuverAI) is
      rotationAnimationInterface : RotationAnimationInterface_Access;
      angleIncrementInfo : AngleIncrementInfo_Access;
      rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface_Access;
      allbinaryLayer : AllBinaryLayer_Access;
   begin
        rotationAnimationInterface := RotationAnimationInterface_Access (This.rotationAnimationInterface);
        angleIncrementInfo := rotationAnimationInterface.getAngleInfoP.getAngleIncrementInfo;
        rotationAnimationInterfaceCompositeInterface := RotationAnimationInterfaceCompositeInterface_Access (This.getOwnerLayerInterface);
        rotationAnimationInterfaceCompositeInterface.setFrame (angleIncrementInfo.RIGHT_FRAME.intValue);
        allbinaryLayer := This.getOwnerLayerInterface;
        allbinaryLayer.setPosition (allbinaryLayer.getXP, 1, allbinaryLayer.getZP);
   end transition;

   --  throws Exception
   procedure processAI (This : in out HorizontaRotationManeuverAI; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class) is
      allBinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      rotationAnimationInterface : RotationAnimationInterface_Access;
      angleIncrementInfo : AngleIncrementInfo_Access;
      frame : Integer;
      ownerLayerInterface : AllBinaryLayer_Access;
      displayInfo : DisplayInfoSingleton_Access;
      index : Integer;
   begin
        rotationAnimationInterface := (RotationAnimationInterface_Access (This.rotationAnimationInterface));
        angleIncrementInfo := rotationAnimationInterface.getAngleInfoP.getAngleIncrementInfo;
        frame := This.rotationAnimationInterface.getFrame;
        ownerLayerInterface := This.getOwnerLayerInterface;
        if (((ownerLayerInterface.getXP) - (ownerLayerInterface.getWidth)) <= (0)) and then ((frame) = (angleIncrementInfo.LEFT_FRAME.intValue)) then
            This.reverse_Id;
            This.drop;
        end if;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        if (((ownerLayerInterface.getX2) + (ownerLayerInterface.getWidth)) > (displayInfo.getLastWidth)) and then ((frame) = (angleIncrementInfo.RIGHT_FRAME.intValue)) then
            This.reverse_Id;
            This.accelerate;
            This.drop;
        end if;
        index := This.circularIndexUtil.getIndex;
        if (((index) rem (This.currentSpeedDivisor)) = (0)) and then (((index) rem (2)) = (0)) then
            BasicAI (This).processKeyAI (Canvas_Package.UP);
            This.velocityInterface.limitMaxXYVelocity ((This.velocityInterface.getMaxForwardVelocity) / (This.currentSpeedDivisor));
        end if;
        This.circularIndexUtil.next;
        if (frame) = (angleIncrementInfo.LEFT_FRAME.intValue) then
            BasicAI (This).processKeyAI (Canvas_Package.KEY_NUM0);
        elsif (frame) = (angleIncrementInfo.RIGHT_FRAME.intValue) then
            BasicAI (This).processKeyAI (Canvas_Package.KEY_POUND);
        end if;
   end processAI;

   procedure reverse_Id (This : in out HorizontaRotationManeuverAI) is
      rotationAnimationInterface : RotationAnimationInterface_Access;
      angleIncrementInfo : AngleIncrementInfo_Access;
      frame : Integer;
      rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface_Access;
   begin
        rotationAnimationInterface := RotationAnimationInterface_Access (This.rotationAnimationInterface);
        angleIncrementInfo := rotationAnimationInterface.getAngleInfoP.getAngleIncrementInfo;
        frame := This.rotationAnimationInterface.getFrame;
        if (frame) = (angleIncrementInfo.LEFT_FRAME.intValue) then
            rotationAnimationInterfaceCompositeInterface := RotationAnimationInterfaceCompositeInterface_Access (This.getOwnerLayerInterface);
            rotationAnimationInterfaceCompositeInterface.setFrame (angleIncrementInfo.RIGHT_FRAME.intValue);
            This.baseVelocityInterface.zero;
        elsif (frame) = (angleIncrementInfo.RIGHT_FRAME.intValue) then
            rotationAnimationInterfaceCompositeInterface := RotationAnimationInterfaceCompositeInterface_Access (This.getOwnerLayerInterface);
            rotationAnimationInterfaceCompositeInterface.setFrame (angleIncrementInfo.LEFT_FRAME.intValue);
            This.baseVelocityInterface.zero;
        end if;
   end reverse_Id;

   procedure accelerate (This : in out HorizontaRotationManeuverAI) is
   begin
        if (This.currentSpeedDivisor) > (1) then
            This.currentSpeedDivisor := This.currentSpeedDivisor - 1;
        end if;
   end accelerate;

   procedure drop (This : in out HorizontaRotationManeuverAI) is
      displayInfo : DisplayInfoSingleton_Access;
      ownerLayerInterface : AllBinaryLayer_Access;
      y : Integer;
   begin
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        ownerLayerInterface := This.getOwnerLayerInterface;
        y := ownerLayerInterface.getYP;
        if ((ownerLayerInterface.getY2) + (ownerLayerInterface.getHeight)) > (displayInfo.getLastHeight) then
            y := 0;
        else
            y := (y) + ((ownerLayerInterface.getHeight) + (1));
        end if;
        ownerLayerInterface.setPosition (ownerLayerInterface.getXP, y, ownerLayerInterface.getZP);
   end drop;

   function getId (This : in out HorizontaRotationManeuverAI) return Integer is
   begin
        return ArtificialIntelligence_Package.AI_ID;
   end getId;

end org.allbinary.game.ag.ai.HorizontaRotationManeuverAI_Package;


