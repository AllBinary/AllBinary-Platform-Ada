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
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package; use org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.input.BuildMenuCompositeInterface_Package;
with org.allbinary.game.layer.capital.Capital_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PlayerOwnedRTSLayers_Package;
with org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.layer.RTSInterface_Package;
with org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package;
with org.allbinary.game.layer.RTSLayerCompositePaintable_Package;
with org.allbinary.game.layer.RTSLayerUtil_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;

package body org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package is

   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
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
   subtype UpgradableRTSLayerHudPaintable_Access is org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References.UpgradableRTSLayerHudPaintable_Access;
   function "=" (Left, Right : UpgradableRTSLayerHudPaintable_Access) return Boolean renames org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References."=";
   subtype UpgradableRTSLayerHudPaintable_Access_Array is org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References.UpgradableRTSLayerHudPaintable_Access_Array;
   function "=" (Left, Right : UpgradableRTSLayerHudPaintable_Access_Array) return Boolean renames org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References."=";
   subtype UpgradableRTSLayerHudPaintable_Access_Array_Access is org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References.UpgradableRTSLayerHudPaintable_Access_Array_Access;
   function "=" (Left, Right : UpgradableRTSLayerHudPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References."=";
   subtype UpgradableRTSLayerHudPaintable_Access_Array_Access_Array is org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References.UpgradableRTSLayerHudPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : UpgradableRTSLayerHudPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References."=";
   subtype UpgradableRTSLayerHudPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References.UpgradableRTSLayerHudPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UpgradableRTSLayerHudPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References."=";
   subtype RTSLayer_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access;
   function "=" (Left, Right : RTSLayer_Access) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array;
   function "=" (Left, Right : RTSLayer_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access;
   function "=" (Left, Right : RTSLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   procedure Initialize_Fields (This : in out UpgradableWideRTSLayerPaintable'Class) is
   begin
      null;
      This.cost := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   procedure Initialize (This : in out UpgradableWideRTSLayerPaintable'Class; upgradableRTSLayerHudPaintable_Param : access UpgradableRTSLayerHudPaintable_Package.UpgradableRTSLayerHudPaintable'Class) is
      upgradableRTSLayerHudPaintable : constant UpgradableRTSLayerHudPaintable_Access := UpgradableRTSLayerHudPaintable_Access (upgradableRTSLayerHudPaintable_Param);
   begin
        RTSLayerCompositePaintable_Package.Initialize (This, upgradableRTSLayerHudPaintable);
        Initialize_Fields (This);
   end Initialize;

   function Create (upgradableRTSLayerHudPaintable_Param : access UpgradableRTSLayerHudPaintable_Package.UpgradableRTSLayerHudPaintable'Class) return UpgradableWideRTSLayerPaintable_Access is
      This : constant UpgradableWideRTSLayerPaintable_Access := new UpgradableWideRTSLayerPaintable;
   begin
      UpgradableWideRTSLayerPaintable_Package.Initialize (This.all, upgradableRTSLayerHudPaintable_Param);
      return This;
   end Create;

   procedure update (This : in out UpgradableWideRTSLayerPaintable; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        RTSLayerCompositePaintable (This).update (rtsLayer);
        UpgradableWideRTSLayerPaintable'Class (This).setCost (StringMaker_Package.Create.append (UpgradableWideRTSLayerPaintable'Class (This).getUpgradeCost).append (CommonSeps_Package.getInstance.SPACE).append (UpgradableWideRTSLayerPaintable'Class (This).getDownGradeCost).toString);
   end update;

   procedure paint (This : in out UpgradableWideRTSLayerPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.drawString (UpgradableWideRTSLayerPaintable'Class (This).getCost, This.upgradableRTSLayerHudPaintable.textX, This.upgradableRTSLayerHudPaintable.costY, 0);
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


