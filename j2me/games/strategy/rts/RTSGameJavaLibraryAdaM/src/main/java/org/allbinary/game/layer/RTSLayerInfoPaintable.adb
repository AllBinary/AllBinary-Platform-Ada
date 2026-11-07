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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.graphics.paint.NullInitUpdatePaintable_Package; use org.allbinary.graphics.paint.NullInitUpdatePaintable_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package_References;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.layer.RTSLayerInfoPaintable_Package is

   package NullInitUpdatePaintable_Package renames Standard.org.allbinary.graphics.paint.NullInitUpdatePaintable_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype SelectionHudPaintable_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access;
   function "=" (Left, Right : SelectionHudPaintable_Access) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
   subtype SelectionHudPaintable_Access_Array is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array;
   function "=" (Left, Right : SelectionHudPaintable_Access_Array) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
   subtype SelectionHudPaintable_Access_Array_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access;
   function "=" (Left, Right : SelectionHudPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
   subtype SelectionHudPaintable_Access_Array_Access_Array is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : SelectionHudPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
   subtype SelectionHudPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SelectionHudPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
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
        This.initUpdatePaintable := InitUpdatePaintable_Access (hudPaintable);
   end updateRTSLayerInfoSelection;

end org.allbinary.game.layer.RTSLayerInfoPaintable_Package;


