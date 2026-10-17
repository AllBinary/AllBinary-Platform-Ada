-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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


package body org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package is

   procedure Initialize_Fields (This : in out UpgradableRTSLayerHudPaintable'Class) is
   begin
      null;
      This.PERCENT := To_Unbounded_String ("%");
      This.rtsLayer := CollidableDestroyableDamageableLayer_Package.getNullInstance;
      This.costY := 0;
      This.costY1 := 0;
      This.percentCompleteX2 := 0;
      This.rtsLayerCompositePaintableLateInit := null;
      This.charHeight := 0;
      This.charWidth := 0;
      This.percentComplete := 0;
      This.percentCompleteX := 0;
      This.percentCompleteArray := CharArrayFactory_Package.getInstance.getZeroCharArray;
      This.currentTotalDigits := 0;
   end Initialize_Fields;


   function getInstance return UpgradableRTSLayerHudPaintable_Access is
   begin
        return UpgradableRTSLayerHudPaintable_Package.instance;
   end getInstance;

   procedure Initialize (This : in out UpgradableRTSLayerHudPaintable'Class) is
   begin
      SelectionHudPaintable_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UpgradableRTSLayerHudPaintable_Access is
      This : constant UpgradableRTSLayerHudPaintable_Access := new UpgradableRTSLayerHudPaintable;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure updateMeasurement (This : in out UpgradableRTSLayerHudPaintable; graphics : Graphics_Access) is
      font : Font_Access;
   begin
        SelectionHudPaintable (This).updateMeasurement (graphics);
        font := graphics.getFont;
        This.charHeight := font.getHeight;
        This.charWidth := MyFontProcessor_Package.defaultCharWidth (font);
   end updateMeasurement;

   procedure update (This : in out UpgradableRTSLayerHudPaintable) is
      commonButtons : CommonButtons_Access;
      displayInfoSingleton : DisplayInfoSingleton_Access;
   begin
        SelectionHudPaintable (This).update;
        commonButtons := CommonButtons_Package.getInstance;
        This.costY := ((This.y) + (commonButtons.STANDARD_BUTTON_SIZE));
        This.costY1 := (((This.y) + (commonButtons.STANDARD_BUTTON_SIZE)) - (This.charHeight));
        This.percentCompleteX2 := ((This.imageX) + (commonButtons.STANDARD_BUTTON_SIZE)) - (This.charWidth);
        displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
        if (displayInfoSingleton.getLastWidth) > (320) then
            This.rtsLayerCompositePaintableLateInit := UpgradableWideRTSLayerPaintable_Package.Create (This'Unchecked_Access);
        else
            This.rtsLayerCompositePaintableLateInit := RTSLayerCompositePaintable_Package.Create (This'Unchecked_Access);
        end if;
   end update;

   procedure updateSelectionInfo (This : in out UpgradableRTSLayerHudPaintable) is
      rtsLayer : RTSLayer_Access;
   begin
        rtsLayer := RTSLayer_Access (This.getRtsLayer);
        This.rtsLayerCompositePaintableLateInit.update (rtsLayer);
        This.setAnimationInterface (rtsLayer.getVerticleBuildAnimationInterface);
        This.setName (rtsLayer.getName);
   end updateSelectionInfo;

   procedure updateInfo (This : in out UpgradableRTSLayerHudPaintable) is
      rtsLayer : RTSLayer_Access;
   begin
        rtsLayer := RTSLayer_Access (This.getRtsLayer);
        This.percentComplete := rtsLayer.getPercentComplete;
        if (This.percentComplete) < (10) then
            This.percentCompleteX := 32;
        elsif (This.percentComplete) < (100) then
            This.percentCompleteX := 24;
        else
            This.percentCompleteX := 16;
        end if;
        This.percentCompleteArray := This.getPrimitiveLongUtil.getCharArray (This.percentComplete);
        This.currentTotalDigits := This.getPrimitiveLongUtil.getCurrentTotalDigits;
   end updateInfo;

   procedure paint (This : in out UpgradableRTSLayerHudPaintable; graphics : Graphics_Access) is
   begin
        SelectionHudPaintable (This).paint (graphics);
        This.rtsLayerCompositePaintableLateInit.paint (graphics);
        graphics.drawChars (This.percentCompleteArray, 0, This.currentTotalDigits, (This.imageX) + (This.percentCompleteX), This.costY, 0);
        graphics.drawString (This.PERCENT, This.percentCompleteX2, This.costY, 0);
        This.getAnimationInterface.paintXY (graphics, This.imageX, This.y);
   end paint;

   procedure setRtsLayer (This : in out UpgradableRTSLayerHudPaintable; rtsLayer : RTSLayer_Access) is
   begin
        This.rtsLayer := rtsLayer;
   end setRtsLayer;

   function getRtsLayer (This : in out UpgradableRTSLayerHudPaintable) return CollidableDestroyableDamageableLayer_Access is
   begin
        return This.rtsLayer;
   end getRtsLayer;

   procedure getInstance is
      Java_Result : constant UpgradableRTSLayerHudPaintable_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getRtsLayer (This : in out UpgradableRTSLayerHudPaintable) is
      Java_Result : constant CollidableDestroyableDamageableLayer_Access := UpgradableRTSLayerHudPaintable'Class (This).getRtsLayer;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRtsLayer;

begin
   null;
   instance := UpgradableRTSLayerHudPaintable_Package.Create;

end org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package;


