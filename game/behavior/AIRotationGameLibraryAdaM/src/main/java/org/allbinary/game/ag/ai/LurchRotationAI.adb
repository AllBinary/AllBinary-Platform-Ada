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


package body org.allbinary.game.ag.ai.LurchRotationAI_Package is

   procedure Initialize_Fields (This : in out LurchRotationAI'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out LurchRotationAI'Class; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) is
      rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface_Access;
   begin
        LurchAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        rotationAnimationInterfaceCompositeInterface := RotationAnimationInterfaceCompositeInterface_Access (This.getOwnerLayerInterface);
        This.rotationAnimationInterface := rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface;
        This.update;
   end Initialize;

   function Create (ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return LurchRotationAI_Access is
      This : constant LurchRotationAI_Access := new LurchRotationAI;
   begin
      LurchRotationAI_Package.Initialize (This.all, ownerLayerInterface, gameInput);
      return This;
   end Create;

   procedure reverse_Id (This : in out LurchRotationAI) is
   begin
        LurchAI (This).reverse_Id;
        This.update;
   end reverse_Id;

   procedure update (This : in out LurchRotationAI) is
      rotationAnimationInterface : RotationAnimationInterface_Access;
      angleIncrementInfo : AngleIncrementInfo_Access;
      rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface_Access;
   begin
        if (This.currentRelativeAngle) = (0) then
            rotationAnimationInterface := RotationAnimationInterface_Access (This.rotationAnimationInterface);
            angleIncrementInfo := rotationAnimationInterface.getAngleInfoP.getAngleIncrementInfo;
            rotationAnimationInterfaceCompositeInterface := RotationAnimationInterfaceCompositeInterface_Access (This.getOwnerLayerInterface);
            rotationAnimationInterfaceCompositeInterface.setFrame (angleIncrementInfo.RIGHT_FRAME.intValue);
        elsif (This.currentRelativeAngle) = (180) then
            rotationAnimationInterface := RotationAnimationInterface_Access (This.rotationAnimationInterface);
            angleIncrementInfo := rotationAnimationInterface.getAngleInfoP.getAngleIncrementInfo;
            rotationAnimationInterfaceCompositeInterface := RotationAnimationInterfaceCompositeInterface_Access (This.getOwnerLayerInterface);
            rotationAnimationInterfaceCompositeInterface.setFrame (angleIncrementInfo.LEFT_FRAME.intValue);
        end if;
   end update;

end org.allbinary.game.ag.ai.LurchRotationAI_Package;


