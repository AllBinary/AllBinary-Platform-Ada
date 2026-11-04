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

limited with org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package;
package org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References is
   type UpgradableRTSLayerHudPaintable_Access is access all org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package.UpgradableRTSLayerHudPaintable'Class;
   type UpgradableRTSLayerHudPaintable_Access_Array is array (Natural range <>) of UpgradableRTSLayerHudPaintable_Access;
   type UpgradableRTSLayerHudPaintable_Access_Array_Access is access all UpgradableRTSLayerHudPaintable_Access_Array;
   type UpgradableRTSLayerHudPaintable_Access_Array_Access_Array is array (Natural range <>) of UpgradableRTSLayerHudPaintable_Access_Array_Access;
   type UpgradableRTSLayerHudPaintable_Access_Array_Access_Array_Access is access all UpgradableRTSLayerHudPaintable_Access_Array_Access_Array;
end org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References;

with org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
limited with org.allbinary.game.layer.RTSLayerCompositePaintable_Package;
with org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References;
limited with org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;

package org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype CollidableDestroyableDamageableLayer_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access;
   use type CollidableDestroyableDamageableLayer_Access;
   subtype CollidableDestroyableDamageableLayer_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array;
   use type CollidableDestroyableDamageableLayer_Access_Array;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   subtype RTSLayerCompositePaintable_Access is org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References.RTSLayerCompositePaintable_Access;
   use type RTSLayerCompositePaintable_Access;
   subtype RTSLayerCompositePaintable_Access_Array is org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References.RTSLayerCompositePaintable_Access_Array;
   use type RTSLayerCompositePaintable_Access_Array;
   subtype RTSLayerCompositePaintable_Access_Array_Access is org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References.RTSLayerCompositePaintable_Access_Array_Access;
   use type RTSLayerCompositePaintable_Access_Array_Access;
   subtype RTSLayerCompositePaintable_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References.RTSLayerCompositePaintable_Access_Array_Access_Array;
   use type RTSLayerCompositePaintable_Access_Array_Access_Array;
   subtype RTSLayerCompositePaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References.RTSLayerCompositePaintable_Access_Array_Access_Array_Access;
   use type RTSLayerCompositePaintable_Access_Array_Access_Array_Access;
   subtype RTSLayer_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access;
   use type RTSLayer_Access;
   subtype RTSLayer_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array;
   use type RTSLayer_Access_Array;
   subtype RTSLayer_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access;
   use type RTSLayer_Access_Array_Access;
   subtype RTSLayer_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array;
   use type RTSLayer_Access_Array_Access_Array;
   subtype RTSLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array_Access;
   use type RTSLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


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

   type UpgradableRTSLayerHudPaintable is new SelectionHudPaintable with record
      PERCENT : Unbounded_String;
      rtsLayer : CollidableDestroyableDamageableLayer_Access;
      costY : Integer;
      costY1 : Integer;
      percentCompleteX2 : Integer;
      rtsLayerCompositePaintableLateInit : RTSLayerCompositePaintable_Access;
      charHeight : Integer;
      charWidth : Integer;
      percentComplete : Integer;
      percentCompleteX : Integer;
      percentCompleteArray : Character_Array_Access;
      currentTotalDigits : Integer;
   end record;
   instance : UpgradableRTSLayerHudPaintable_Access;

   procedure Initialize (This : in out UpgradableRTSLayerHudPaintable'Class);
   function Create return UpgradableRTSLayerHudPaintable_Access;
   function getInstance return UpgradableRTSLayerHudPaintable_Access;
   procedure updateMeasurement (This : in out UpgradableRTSLayerHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure update (This : in out UpgradableRTSLayerHudPaintable);
   procedure updateSelectionInfo (This : in out UpgradableRTSLayerHudPaintable);
   procedure updateInfo (This : in out UpgradableRTSLayerHudPaintable);
   procedure paint (This : in out UpgradableRTSLayerHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure setRtsLayer (This : in out UpgradableRTSLayerHudPaintable; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   function getRtsLayer (This : in out UpgradableRTSLayerHudPaintable) return CollidableDestroyableDamageableLayer_Access;

end org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package;


