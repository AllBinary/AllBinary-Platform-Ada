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


package body org.allbinary.game.ag.ai.TopUBoundBounceAIFactory_Package is

   procedure Initialize_Fields (This : in out TopUBoundBounceAIFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TopUBoundBounceAIFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TopUBoundBounceAIFactory_Access is
      This : constant TopUBoundBounceAIFactory_Access := new TopUBoundBounceAIFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out TopUBoundBounceAIFactory; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return ArtificialIntelligenceInterface_Access is
      velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface_Access;
      velocityInterface : VelocityInterface_Access;
      maxDistancePerTick : Integer;
      halfWidth : Integer;
      halfHeight : Integer;
      point : GPoint_Access;
      displayInfo : DisplayInfoSingleton_Access;
      rectangle : Rectangle_Access;
   begin
        velocityInterfaceCompositeInterface := VelocityInterfaceCompositeInterface_Access (ownerLayerInterface);
        velocityInterface := VelocityInterface_Access (velocityInterfaceCompositeInterface.getVelocityProperties);
        maxDistancePerTick := (Java_Shift_Right_Arithmetic (velocityInterface.getMaxForwardVelocity, velocityInterface.getVelocityXBasicDecimalP.getScaledFactor));
        halfWidth := (((ownerLayerInterface.getWidth) * (2)) + (maxDistancePerTick)) + (1);
        halfHeight := (((ownerLayerInterface.getHeight) * (2)) + (maxDistancePerTick)) + (1);
        point := PointFactory_Package.getInstance.createXY (halfWidth, (halfHeight) + (60));
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        rectangle := Rectangle_Package.Create (point, (((displayInfo.getLastWidth) - (halfWidth)) - (point.getX)), (((displayInfo.getLastHeight) - (halfHeight)) - (point.getY)));
        return BoundBounceAI_Package.Create (ownerLayerInterface, gameInput, TopULayerBounds_Package.Create (rectangle), ReverseVelocityBoundsVisitor_Package.Create (ownerLayerInterface));
   end getInstance;

   procedure getInstance (This : in out TopUBoundBounceAIFactory; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) is
      Java_Result : constant ArtificialIntelligenceInterface_Access := TopUBoundBounceAIFactory'Class (This).getInstance (hashtable, ownerLayerInterface, gameInput);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.ai.TopUBoundBounceAIFactory_Package;


