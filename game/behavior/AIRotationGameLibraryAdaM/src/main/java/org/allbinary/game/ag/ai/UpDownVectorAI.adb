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


package body org.allbinary.game.ag.ai.UpDownVectorAI_Package is

   procedure Initialize_Fields (This : in out UpDownVectorAI'Class) is
   begin
      null;
      
      This.index := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out UpDownVectorAI'Class; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) is
      velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface_Access;
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        velocityInterfaceCompositeInterface := VelocityInterfaceCompositeInterface_Access (This.getOwnerLayerInterface);
        This.velocityInterface := velocityInterfaceCompositeInterface.getVelocityProperties;
        This.velocityInterface.getVelocityYBasicDecimalP.setint (0);
   end Initialize;

   function Create (ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return UpDownVectorAI_Access is
      This : constant UpDownVectorAI_Access := new UpDownVectorAI;
   begin
      UpDownVectorAI_Package.Initialize (This.all, ownerLayerInterface, gameInput);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out UpDownVectorAI; allBinaryLayerManager : AllBinaryLayerManager_Access) is
      y : Integer;
      basicDecimal : BasicDecimal_Access;
   begin
        y := (This.getOwnerLayerInterface.getHeight) * (270);
        if (This.index) < (5) then
            basicDecimal := This.velocityInterface.getVelocityYBasicDecimalP;
            basicDecimal.setint (0);
            basicDecimal.addint (y);
            This.index := This.index + 1;
        elsif (This.index) < (10) then
            basicDecimal := This.velocityInterface.getVelocityYBasicDecimalP;
            basicDecimal.setint (0);
            basicDecimal.subtractint (y);
            This.index := This.index + 1;
        else
            This.index := 0;
            This.processAI (allBinaryLayerManager);
        end if;
   end processAI;

end org.allbinary.game.ag.ai.UpDownVectorAI_Package;


