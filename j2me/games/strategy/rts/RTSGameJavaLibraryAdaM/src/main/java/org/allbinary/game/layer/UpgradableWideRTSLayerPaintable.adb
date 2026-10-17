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


package body org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package is

   procedure Initialize_Fields (This : in out UpgradableWideRTSLayerPaintable'Class) is
   begin
      null;
      This.cost := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   procedure Initialize (This : in out UpgradableWideRTSLayerPaintable'Class; upgradableRTSLayerHudPaintable : UpgradableRTSLayerHudPaintable_Access) is
   begin
        RTSLayerCompositePaintable_Package.Initialize (This, upgradableRTSLayerHudPaintable);
        Initialize_Fields (This);
   end Initialize;

   function Create (upgradableRTSLayerHudPaintable : UpgradableRTSLayerHudPaintable_Access) return UpgradableWideRTSLayerPaintable_Access is
      This : constant UpgradableWideRTSLayerPaintable_Access := new UpgradableWideRTSLayerPaintable;
   begin
      UpgradableWideRTSLayerPaintable_Package.Initialize (This.all, upgradableRTSLayerHudPaintable);
      return This;
   end Create;

   procedure update (This : in out UpgradableWideRTSLayerPaintable; rtsLayer : RTSLayer_Access) is
   begin
        RTSLayerCompositePaintable (This).update (rtsLayer);
        This.setCost (StringMaker_Package.Create.append (This.getUpgradeCost).append (CommonSeps_Package.getInstance.SPACE).append (This.getDownGradeCost).toString);
   end update;

   procedure paint (This : in out UpgradableWideRTSLayerPaintable; graphics : Graphics_Access) is
   begin
        graphics.drawString (This.getCost, This.upgradableRTSLayerHudPaintable.textX, This.upgradableRTSLayerHudPaintable.costY, 0);
   end paint;

   procedure setCost (This : in out UpgradableWideRTSLayerPaintable; cost : Unbounded_String) is
   begin
        This.cost := cost;
   end setCost;

   function getCost (This : in out UpgradableWideRTSLayerPaintable) return Unbounded_String is
   begin
        return This.cost;
   end getCost;

end org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package;


