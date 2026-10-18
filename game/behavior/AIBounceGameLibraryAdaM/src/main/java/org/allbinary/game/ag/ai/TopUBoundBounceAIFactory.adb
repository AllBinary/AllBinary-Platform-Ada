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


with org.allbinary.bounds.TopULayerBounds_Package; use org.allbinary.bounds.TopULayerBounds_Package;
with org.allbinary.game.physics.velocity.VelocityInterface_Package; use org.allbinary.game.physics.velocity.VelocityInterface_Package;
with org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package; use org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.game.ag.ai.BoundBounceAI_Package; use org.allbinary.game.ag.ai.BoundBounceAI_Package;
with org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package; use org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package;

package body org.allbinary.game.ag.ai.TopUBoundBounceAIFactory_Package is

   package TopULayerBounds_Package renames Standard.org.allbinary.bounds.TopULayerBounds_Package;
   package VelocityInterface_Package renames Standard.org.allbinary.game.physics.velocity.VelocityInterface_Package;
   package VelocityInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
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
      TopUBoundBounceAIFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out TopUBoundBounceAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ArtificialIntelligenceInterface_Access is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
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
        return ArtificialIntelligenceInterface_Access (BoundBounceAI_Package.Create (ownerLayerInterface, gameInput, TopULayerBounds_Package.Create (rectangle), ReverseVelocityBoundsVisitor_Package.Create (ownerLayerInterface)));
   end getInstance;

   procedure getInstance (This : in out TopUBoundBounceAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      Java_Result : constant ArtificialIntelligenceInterface_Access := TopUBoundBounceAIFactory'Class (This).getInstance (hashtable_Param, ownerLayerInterface_Param, gameInput_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.ai.TopUBoundBounceAIFactory_Package;


