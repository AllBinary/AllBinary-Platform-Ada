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


package body org.allbinary.game.ag.ai.StopAtEdgeAI_Package is

   procedure Initialize_Fields (This : in out StopAtEdgeAI'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out StopAtEdgeAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
   end Initialize;

   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return StopAtEdgeAI_Access is
      This : constant StopAtEdgeAI_Access := new StopAtEdgeAI;
   begin
      StopAtEdgeAI_Package.Initialize (This.all, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out StopAtEdgeAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      ownerLayerInterface : AllBinaryLayer_Access;
      velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface_Access;
      velocityProperties : BasicVelocityProperties_Access;
      x : Integer;
      y : Integer;
      x2 : Integer;
      y2 : Integer;
      width : Integer;
      height : Integer;
      displayInfo : DisplayInfoSingleton_Access;
   begin
        ownerLayerInterface := StopAtEdgeAI'Class (This).getOwnerLayerInterface;
        velocityInterfaceCompositeInterface := (VelocityInterfaceCompositeInterface_Access (ownerLayerInterface));
        velocityProperties := velocityInterfaceCompositeInterface.getVelocityProperties;
        x := ownerLayerInterface.getXP;
        y := ownerLayerInterface.getYP;
        x2 := ownerLayerInterface.getX2;
        y2 := ownerLayerInterface.getY2;
        width := ownerLayerInterface.getWidth;
        height := ownerLayerInterface.getHeight;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        if ((x2) + (velocityProperties.getVelocityXBasicDecimalP.getScaled)) > (displayInfo.getLastWidth) then
            ownerLayerInterface.setPosition ((displayInfo.getLastWidth) - (width), y, ownerLayerInterface.getZP);
            velocityProperties.getVelocityYBasicDecimalP.setint (0);
        end if;
        if ((y2) + (velocityProperties.getVelocityYBasicDecimalP.getScaled)) > (displayInfo.getLastHeight) then
            ownerLayerInterface.setPosition (x, (displayInfo.getLastHeight) - (height), ownerLayerInterface.getZP);
            velocityProperties.getVelocityXBasicDecimalP.setint (0);
        end if;
        if ((x) + (velocityProperties.getVelocityXBasicDecimalP.getScaled)) < (0) then
            ownerLayerInterface.setPosition (0, y, ownerLayerInterface.getZP);
            velocityProperties.getVelocityYBasicDecimalP.setint (0);
        end if;
        if ((y) + (velocityProperties.getVelocityYBasicDecimalP.getScaled)) < (0) then
            ownerLayerInterface.setPosition (x, 0, ownerLayerInterface.getZP);
            velocityProperties.getVelocityXBasicDecimalP.setint (0);
        end if;
   end processAI;

end org.allbinary.game.ag.ai.StopAtEdgeAI_Package;


