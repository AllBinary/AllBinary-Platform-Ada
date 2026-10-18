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


with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.game.layer.RTSLayerCompositePaintable_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out RTSLayerCompositePaintable'Class) is
   begin
      null;
      This.upgradeCost := StringUtil_Package.getInstance.EMPTY_STRING;
      This.downGradeCost := StringUtil_Package.getInstance.EMPTY_STRING;
      This.UPGRADE := To_Unbounded_String ("Up: $");
      This.DOWNGRADE := To_Unbounded_String ("Down: $-");
      
   end Initialize_Fields;


   procedure Initialize (This : in out RTSLayerCompositePaintable'Class; upgradableRTSLayerHudPaintable_Param : access UpgradableRTSLayerHudPaintable_Package.UpgradableRTSLayerHudPaintable'Class) is
      upgradableRTSLayerHudPaintable : constant UpgradableRTSLayerHudPaintable_Access := UpgradableRTSLayerHudPaintable_Access (upgradableRTSLayerHudPaintable_Param);
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.upgradableRTSLayerHudPaintable := upgradableRTSLayerHudPaintable;
   end Initialize;

   function Create (upgradableRTSLayerHudPaintable_Param : access UpgradableRTSLayerHudPaintable_Package.UpgradableRTSLayerHudPaintable'Class) return RTSLayerCompositePaintable_Access is
      This : constant RTSLayerCompositePaintable_Access := new RTSLayerCompositePaintable;
   begin
      RTSLayerCompositePaintable_Package.Initialize (This.all, upgradableRTSLayerHudPaintable_Param);
      return This;
   end Create;

   procedure update (This : in out RTSLayerCompositePaintable; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        if rtsLayer.isUpgradeable then
            RTSLayerCompositePaintable'Class (This).setUpgradeCost (StringMaker_Package.Create.append (This.UPGRADE).appendint (Integer (rtsLayer.getUpgradeCost)).toString);
        else
            RTSLayerCompositePaintable'Class (This).setUpgradeCost (StringUtil_Package.getInstance.EMPTY_STRING);
        end if;
        if rtsLayer.isDowngradeable then
            RTSLayerCompositePaintable'Class (This).setDownGradeCost (StringMaker_Package.Create.append (This.DOWNGRADE).appendint (Integer (rtsLayer.getDowngradeCost)).toString);
        else
            RTSLayerCompositePaintable'Class (This).setDownGradeCost (StringUtil_Package.getInstance.EMPTY_STRING);
        end if;
   end update;

   procedure paint (This : in out RTSLayerCompositePaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.drawString (RTSLayerCompositePaintable'Class (This).getDownGradeCost, This.upgradableRTSLayerHudPaintable.textX, This.upgradableRTSLayerHudPaintable.costY1, 0);
        graphics.drawString (RTSLayerCompositePaintable'Class (This).getUpgradeCost, This.upgradableRTSLayerHudPaintable.textX, This.upgradableRTSLayerHudPaintable.costY, 0);
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

end org.allbinary.game.layer.RTSLayerCompositePaintable_Package;


