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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.RTSLayerCompositePaintable_Package; use org.allbinary.game.layer.RTSLayerCompositePaintable_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;

package org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;

   type UpgradableRTSLayerHudPaintable is tagged;
   type UpgradableRTSLayerHudPaintable_Access is access all UpgradableRTSLayerHudPaintable'Class;
   type UpgradableRTSLayerHudPaintable_Access_Array is array (Natural range <>) of UpgradableRTSLayerHudPaintable_Access;
   type UpgradableRTSLayerHudPaintable_Access_Array_Access is access all UpgradableRTSLayerHudPaintable_Access_Array;
   type UpgradableRTSLayerHudPaintable_Access_Array_Access_Array is array (Natural range <>) of UpgradableRTSLayerHudPaintable_Access_Array_Access;
   type UpgradableRTSLayerHudPaintable_Access_Array_Access_Array_Access is access all UpgradableRTSLayerHudPaintable_Access_Array_Access_Array;

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


