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


package body org.allbinary.game.layer.RTSLayerInfoPaintable_Package is

   procedure Initialize_Fields (This : in out RTSLayerInfoPaintable'Class) is
   begin
      null;
      This.initUpdatePaintable := NullInitUpdatePaintable_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out RTSLayerInfoPaintable'Class) is
   begin
      InitUpdatePaintable_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RTSLayerInfoPaintable_Access is
      This : constant RTSLayerInfoPaintable_Access := new RTSLayerInfoPaintable;
   begin
      RTSLayerInfoPaintable_Package.Initialize (This.all);
      return This;
   end Create;

   procedure update (This : in out RTSLayerInfoPaintable) is
   begin
        This.initUpdatePaintable.update;
   end update;

   procedure paint (This : in out RTSLayerInfoPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.initUpdatePaintable.paint (graphics);
   end paint;

   procedure updateRTSLayerInfoInit (This : in out RTSLayerInfoPaintable; hudPaintable_Param : access InitUpdatePaintable_Package.InitUpdatePaintable'Class) is
      hudPaintable : constant InitUpdatePaintable_Access := InitUpdatePaintable_Access (hudPaintable_Param);
   begin
        This.initUpdatePaintable := hudPaintable;
   end updateRTSLayerInfoInit;

   procedure updateRTSLayerInfoSelection (This : in out RTSLayerInfoPaintable; hudPaintable_Param : access SelectionHudPaintable_Package.SelectionHudPaintable'Class) is
      hudPaintable : constant SelectionHudPaintable_Access := SelectionHudPaintable_Access (hudPaintable_Param);
   begin
        hudPaintable.updateSelectionInfo;
        This.initUpdatePaintable := hudPaintable;
   end updateRTSLayerInfoSelection;

end org.allbinary.game.layer.RTSLayerInfoPaintable_Package;


