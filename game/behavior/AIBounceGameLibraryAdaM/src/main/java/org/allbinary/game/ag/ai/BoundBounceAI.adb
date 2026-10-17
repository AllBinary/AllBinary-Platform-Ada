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


   procedure Initialize (This : in out BoundBounceAI'Class; ownerLayerInterface_Param : access AllBinaryLayer'Class; gameInput_Param : access GameInput'Class; layerBounds_Param : access LayerBounds'Class; boundsVisitorInterface_Param : access BoundsVisitorInterface'Class) is
      ownerLayerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : GameInput_Access := GameInput_Access (gameInput_Param);
      layerBounds : LayerBounds_Access := LayerBounds_Access (layerBounds_Param);
      boundsVisitorInterface : BoundsVisitorInterface_Access := BoundsVisitorInterface_Access (boundsVisitorInterface_Param);
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        This.layerBounds := layerBounds;
        This.boundsVisitorInterface := boundsVisitorInterface;
   end Initialize;

   function Create (ownerLayerInterface_Param : access AllBinaryLayer'Class; gameInput_Param : access GameInput'Class; layerBounds_Param : access LayerBounds'Class; boundsVisitorInterface_Param : access BoundsVisitorInterface'Class) return BoundBounceAI_Access is
      This : constant BoundBounceAI_Access := new BoundBounceAI;
   begin
      BoundBounceAI_Package.Initialize (This.all, ownerLayerInterface_Param, gameInput_Param, layerBounds_Param, boundsVisitorInterface_Param);
      return This;
   end Create;

   procedure paint (This : in out BoundBounceAI; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      rectange : Rectangle_Access;
   begin
        rectange := This.layerBounds.getRectangleP;
        graphics.drawRect (rectange.getPoint.getX, rectange.getPoint.getY, rectange.getWidth, rectange.getHeight);
   end paint;

   --  throws Exception
   procedure processAI (This : in out BoundBounceAI; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class) is
      allBinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        This.layerBounds.visit (This.boundsVisitorInterface);
   end processAI;

end org.allbinary.game.ag.ai.BoundBounceAI_Package;


