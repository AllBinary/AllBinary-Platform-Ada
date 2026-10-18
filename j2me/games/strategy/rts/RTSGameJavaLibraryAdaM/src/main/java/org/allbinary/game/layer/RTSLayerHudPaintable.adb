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


package body org.allbinary.game.layer.RTSLayerHudPaintable_Package is

   procedure Initialize_Fields (This : in out RTSLayerHudPaintable'Class) is
   begin
      null;
      This.weaponProperties := StringUtil_Package.getInstance.getArrayInstance;
      This.rtsLayer := CollidableDestroyableDamageableLayer_Package.getNullInstance;
      This.costY := 0;
      This.costY1 := 0;
      This.fontHeight := 0;
   end Initialize_Fields;


   function getInstance return RTSLayerHudPaintable_Access is
   begin
        return RTSLayerHudPaintable_Package.instance;
   end getInstance;

   procedure Initialize (This : in out RTSLayerHudPaintable'Class) is
   begin
      SelectionHudPaintable_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RTSLayerHudPaintable_Access is
      This : constant RTSLayerHudPaintable_Access := new RTSLayerHudPaintable;
   begin
      RTSLayerHudPaintable_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateMeasurement (This : in out RTSLayerHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        SelectionHudPaintable (This).updateMeasurement (graphics);
        font := graphics.getFont;
        This.fontHeight := font.getHeight;
        This.costY1 := ((This.y) + (((((This.weaponProperties'Length) + (1))) * (This.fontHeight))));
        if not (AndroidUtil_Package.isAndroid) then
            This.costY := This.costY1;
        else
            This.costY := ((This.y) + (((((This.weaponProperties'Length) + (2))) * (This.fontHeight))));
        end if;
   end updateMeasurement;

   procedure updateSelectionInfo (This : in out RTSLayerHudPaintable) is
      partInterface : BasicWeaponPart_Access;
   begin
        RTSLayerHudPaintable'Class (This).setName (RTSLayerHudPaintable'Class (This).getRtsLayer.getName);
        partInterface := BasicWeaponPart_Access (RTSLayerHudPaintable'Class (This).getRtsLayer.getPartInterfaceArray (0));
        This.weaponProperties := partInterface.getWeaponProperties.toStringArray;
        This.myFontProcessor := This.updateMyFontProcessor;
   end updateSelectionInfo;

   procedure paint (This : in out RTSLayerHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      size : Integer;
      index : Integer;
   begin
        SelectionHudPaintable (This).paint (graphics);
        size := This.weaponProperties'Length;
        for index in 0 .. (size) - 1 loop
            graphics.drawString (This.weaponProperties (index), This.textX, (This.y) + (((((index) + (1))) * (This.fontHeight))), 0);
        end loop;
   end paint;

   procedure setRtsLayer (This : in out RTSLayerHudPaintable; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        This.rtsLayer := rtsLayer;
   end setRtsLayer;

   function getRtsLayer (This : in out RTSLayerHudPaintable) return CollidableDestroyableDamageableLayer_Access is
   begin
        return This.rtsLayer;
   end getRtsLayer;

begin
   null;
   instance := RTSLayerHudPaintable_Package.Create;

end org.allbinary.game.layer.RTSLayerHudPaintable_Package;


