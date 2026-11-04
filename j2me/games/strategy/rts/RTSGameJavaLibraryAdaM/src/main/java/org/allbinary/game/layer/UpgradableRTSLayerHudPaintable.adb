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


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;
with org.allbinary.logic.java.character_Id.CharArrayFactory_Package; use org.allbinary.logic.java.character_Id.CharArrayFactory_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.input.motion.button.CommonButtons_Package; use org.allbinary.input.motion.button.CommonButtons_Package;
with org.allbinary.game.layer.RTSLayerCompositePaintable_Package; use org.allbinary.game.layer.RTSLayerCompositePaintable_Package;
with org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References;
with org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package; use org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;
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
with org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;

package body org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package CharArrayFactory_Package renames Standard.org.allbinary.logic.java.character_Id.CharArrayFactory_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package CommonButtons_Package renames Standard.org.allbinary.input.motion.button.CommonButtons_Package;
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
   subtype CollidableDestroyableDamageableLayer_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype RTSLayerCompositePaintable_Access is org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References.RTSLayerCompositePaintable_Access;
   function "=" (Left, Right : RTSLayerCompositePaintable_Access) return Boolean renames org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References."=";
   subtype RTSLayerCompositePaintable_Access_Array is org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References.RTSLayerCompositePaintable_Access_Array;
   function "=" (Left, Right : RTSLayerCompositePaintable_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References."=";
   subtype RTSLayerCompositePaintable_Access_Array_Access is org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References.RTSLayerCompositePaintable_Access_Array_Access;
   function "=" (Left, Right : RTSLayerCompositePaintable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References."=";
   subtype RTSLayerCompositePaintable_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References.RTSLayerCompositePaintable_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayerCompositePaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References."=";
   subtype RTSLayerCompositePaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References.RTSLayerCompositePaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayerCompositePaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References."=";
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
        return UpgradableRTSLayerHudPaintable_Access (UpgradableRTSLayerHudPaintable_Package.instance);
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
      UpgradableRTSLayerHudPaintable_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateMeasurement (This : in out UpgradableRTSLayerHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        SelectionHudPaintable_Package.SelectionHudPaintable (This).updateMeasurement (graphics);
        font := graphics.getFont;
        This.charHeight := font.getHeight;
        This.charWidth := MyFontProcessor_Package.defaultCharWidth (font);
   end updateMeasurement;

   procedure update (This : in out UpgradableRTSLayerHudPaintable) is
      commonButtons : CommonButtons_Access;
      displayInfoSingleton : DisplayInfoSingleton_Access;
   begin
        SelectionHudPaintable_Package.SelectionHudPaintable (This).update;
        commonButtons := CommonButtons_Package.getInstance;
        This.costY := ((This.y) + (commonButtons.STANDARD_BUTTON_SIZE));
        This.costY1 := (((This.y) + (commonButtons.STANDARD_BUTTON_SIZE)) - (This.charHeight));
        This.percentCompleteX2 := ((This.imageX) + (commonButtons.STANDARD_BUTTON_SIZE)) - (This.charWidth);
        displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
        if (displayInfoSingleton.getLastWidth) > (320) then
            This.rtsLayerCompositePaintableLateInit := RTSLayerCompositePaintable_Access (UpgradableWideRTSLayerPaintable_Package.Create (UpgradableRTSLayerHudPaintable_Access'(This'Unchecked_Access)));
        else
            This.rtsLayerCompositePaintableLateInit := RTSLayerCompositePaintable_Package.Create (UpgradableRTSLayerHudPaintable_Access'(This'Unchecked_Access));
        end if;
   end update;

   procedure updateSelectionInfo (This : in out UpgradableRTSLayerHudPaintable) is
      rtsLayer : RTSLayer_Access;
   begin
        rtsLayer := RTSLayer_Access (UpgradableRTSLayerHudPaintable'Class (This).getRtsLayer);
        This.rtsLayerCompositePaintableLateInit.update (rtsLayer);
        UpgradableRTSLayerHudPaintable'Class (This).setAnimationInterface (rtsLayer.getVerticleBuildAnimationInterface);
        UpgradableRTSLayerHudPaintable'Class (This).setName (rtsLayer.getName);
   end updateSelectionInfo;

   procedure updateInfo (This : in out UpgradableRTSLayerHudPaintable) is
      rtsLayer : RTSLayer_Access;
   begin
        rtsLayer := RTSLayer_Access (UpgradableRTSLayerHudPaintable'Class (This).getRtsLayer);
        This.percentComplete := rtsLayer.getPercentComplete;
        if (This.percentComplete) < (10) then
            This.percentCompleteX := 32;
        elsif (This.percentComplete) < (100) then
            This.percentCompleteX := 24;
        else
            This.percentCompleteX := 16;
        end if;
        This.percentCompleteArray := UpgradableRTSLayerHudPaintable'Class (This).getPrimitiveLongUtil.getCharArray (This.percentComplete);
        This.currentTotalDigits := UpgradableRTSLayerHudPaintable'Class (This).getPrimitiveLongUtil.getCurrentTotalDigits;
   end updateInfo;

   procedure paint (This : in out UpgradableRTSLayerHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        SelectionHudPaintable_Package.SelectionHudPaintable (This).paint (graphics);
        This.rtsLayerCompositePaintableLateInit.paint (graphics);
        graphics.drawChars (This.percentCompleteArray, 0, This.currentTotalDigits, (This.imageX) + (This.percentCompleteX), This.costY, 0);
        graphics.drawString (This.PERCENT, This.percentCompleteX2, This.costY, 0);
        UpgradableRTSLayerHudPaintable'Class (This).getAnimationInterface.paintXY (graphics, This.imageX, This.y);
   end paint;

   procedure setRtsLayer (This : in out UpgradableRTSLayerHudPaintable; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        This.rtsLayer := CollidableDestroyableDamageableLayer_Access (rtsLayer);
   end setRtsLayer;

   function getRtsLayer (This : in out UpgradableRTSLayerHudPaintable) return CollidableDestroyableDamageableLayer_Access is
   begin
        return This.rtsLayer;
   end getRtsLayer;

begin
   null;
   instance := UpgradableRTSLayerHudPaintable_Package.Create;

end org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package;


