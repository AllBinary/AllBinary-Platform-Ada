-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


package body org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package is

   procedure Initialize_Fields (This : in out WaypointInfoHudPaintable'Class) is
   begin
      null;
      
      This.rtsLayerP := NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER;
      This.textLine2Y := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out WaypointInfoHudPaintable'Class) is
   begin
      SelectionHudPaintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.keyvalueDrawString := KeyValueDrawString_Package.Create (To_Unbounded_String ("Owner: "), This.textX);
   end Initialize;

   function Create return WaypointInfoHudPaintable_Access is
      This : constant WaypointInfoHudPaintable_Access := new WaypointInfoHudPaintable;
   begin
      WaypointInfoHudPaintable_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateMeasurement (This : in out WaypointInfoHudPaintable; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        SelectionHudPaintable (This).updateMeasurement (graphics);
        font := graphics.getFont;
        This.textLine2Y := ((This.y) + (font.getHeight));
   end updateMeasurement;

   procedure updateSelectionInfo (This : in out WaypointInfoHudPaintable) is
      rtsLayer : RTSLayer_Access;
   begin
        rtsLayer := RTSLayer_Access (This.rtsLayerP);
        This.setName (rtsLayer.getName);
        This.setAnimationInterface (rtsLayer.getVerticleBuildAnimationInterface);
        This.keyvalueDrawString.update (rtsLayer.getParentLayer.getName);
   end updateSelectionInfo;

   procedure setRtsLayer (This : in out WaypointInfoHudPaintable; rtsLayer_Param : access RTSLayer'Class) is
      rtsLayer : RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        This.rtsLayerP := rtsLayer;
   end setRtsLayer;

   function getRtsLayer (This : in out WaypointInfoHudPaintable) return PathFindingLayerInterface_Access is
   begin
        return This.rtsLayerP;
   end getRtsLayer;

   procedure paint (This : in out WaypointInfoHudPaintable; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        SelectionHudPaintable (This).paint (graphics);
        This.keyvalueDrawString.paint (graphics, This.textLine2Y);
        This.getAnimationInterface.paintXY (graphics, This.imageX, This.y);
   end paint;

end org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package;


