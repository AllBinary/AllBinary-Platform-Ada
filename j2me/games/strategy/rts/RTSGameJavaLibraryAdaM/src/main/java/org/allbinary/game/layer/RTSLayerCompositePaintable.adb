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


package body org.allbinary.game.layer.RTSLayerCompositePaintable_Package is

   procedure Initialize_Fields (This : in out RTSLayerCompositePaintable'Class) is
   begin
      null;
      This.upgradeCost := StringUtil_Package.getInstance.EMPTY_STRING;
      This.downGradeCost := StringUtil_Package.getInstance.EMPTY_STRING;
      This.UPGRADE := To_Unbounded_String ("Up: $");
      This.DOWNGRADE := To_Unbounded_String ("Down: $-");
      
   end Initialize_Fields;


   procedure Initialize (This : in out RTSLayerCompositePaintable'Class; upgradableRTSLayerHudPaintable : UpgradableRTSLayerHudPaintable_Access) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.upgradableRTSLayerHudPaintable := upgradableRTSLayerHudPaintable;
   end Initialize;

   function Create (upgradableRTSLayerHudPaintable : UpgradableRTSLayerHudPaintable_Access) return RTSLayerCompositePaintable_Access is
      This : constant RTSLayerCompositePaintable_Access := new RTSLayerCompositePaintable;
   begin
      Initialize (This.all, upgradableRTSLayerHudPaintable);
      return This;
   end Create;

   procedure update (This : in out RTSLayerCompositePaintable; rtsLayer : RTSLayer_Access) is
   begin
        if rtsLayer.isUpgradeable then
            This.setUpgradeCost (StringMaker_Package.Create.append (This.UPGRADE).appendint (Integer (rtsLayer.getUpgradeCost)).toString);
        else
            This.setUpgradeCost (StringUtil_Package.getInstance.EMPTY_STRING);
        end if;
        if rtsLayer.isDowngradeable then
            This.setDownGradeCost (StringMaker_Package.Create.append (This.DOWNGRADE).appendint (Integer (rtsLayer.getDowngradeCost)).toString);
        else
            This.setDownGradeCost (StringUtil_Package.getInstance.EMPTY_STRING);
        end if;
   end update;

   procedure paint (This : in out RTSLayerCompositePaintable; graphics : Graphics_Access) is
   begin
        graphics.drawString (This.getDownGradeCost, This.upgradableRTSLayerHudPaintable.textX, This.upgradableRTSLayerHudPaintable.costY1, 0);
        graphics.drawString (This.getUpgradeCost, This.upgradableRTSLayerHudPaintable.textX, This.upgradableRTSLayerHudPaintable.costY, 0);
   end paint;

   procedure setUpgradeCost (This : in out RTSLayerCompositePaintable; upgradeCost : Unbounded_String) is
   begin
        This.upgradeCost := upgradeCost;
   end setUpgradeCost;

   function getUpgradeCost (This : in out RTSLayerCompositePaintable) return Unbounded_String is
   begin
        return This.upgradeCost;
   end getUpgradeCost;

   procedure setDownGradeCost (This : in out RTSLayerCompositePaintable; downGradeCost : Unbounded_String) is
   begin
        This.downGradeCost := downGradeCost;
   end setDownGradeCost;

   function getDownGradeCost (This : in out RTSLayerCompositePaintable) return Unbounded_String is
   begin
        return This.downGradeCost;
   end getDownGradeCost;

   procedure getUpgradeCost (This : in out RTSLayerCompositePaintable) is
      Java_Result : constant Unbounded_String := RTSLayerCompositePaintable'Class (This).getUpgradeCost;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUpgradeCost;

   procedure getDownGradeCost (This : in out RTSLayerCompositePaintable) is
      Java_Result : constant Unbounded_String := RTSLayerCompositePaintable'Class (This).getDownGradeCost;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDownGradeCost;

end org.allbinary.game.layer.RTSLayerCompositePaintable_Package;


