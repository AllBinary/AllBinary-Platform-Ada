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


package body org.allbinary.game.ag.ai.BoundBounceAI_Package is

   procedure Initialize_Fields (This : in out BoundBounceAI'Class) is
   begin
      null;
      This.currentRelativeAngle := 0;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BoundBounceAI'Class; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access; layerBounds : LayerBounds_Access; boundsVisitorInterface : BoundsVisitorInterface_Access) is
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        This.layerBounds := layerBounds;
        This.boundsVisitorInterface := boundsVisitorInterface;
   end Initialize;

   function Create (ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access; layerBounds : LayerBounds_Access; boundsVisitorInterface : BoundsVisitorInterface_Access) return BoundBounceAI_Access is
      This : constant BoundBounceAI_Access := new BoundBounceAI;
   begin
      BoundBounceAI_Package.Initialize (This.all, ownerLayerInterface, gameInput, layerBounds, boundsVisitorInterface);
      return This;
   end Create;

   procedure paint (This : in out BoundBounceAI; graphics : Graphics_Access) is
      rectange : Rectangle_Access;
   begin
        rectange := This.layerBounds.getRectangleP;
        graphics.drawRect (rectange.getPoint.getX, rectange.getPoint.getY, rectange.getWidth, rectange.getHeight);
   end paint;

   --  throws Exception
   procedure processAI (This : in out BoundBounceAI; allBinaryLayerManager : AllBinaryLayerManager_Access) is
   begin
        This.layerBounds.visit (This.boundsVisitorInterface);
   end processAI;

end org.allbinary.game.ag.ai.BoundBounceAI_Package;


