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
with org.allbinary.game.layer.RTSLayerCompositePaintable_Package; use org.allbinary.game.layer.RTSLayerCompositePaintable_Package;
with org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package; use org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;

package org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;

   type UpgradableWideRTSLayerPaintable is tagged;
   type UpgradableWideRTSLayerPaintable_Access is access all UpgradableWideRTSLayerPaintable'Class;
   type UpgradableWideRTSLayerPaintable_Access_Array is array (Natural range <>) of UpgradableWideRTSLayerPaintable_Access;
   type UpgradableWideRTSLayerPaintable_Access_Array_Access is access all UpgradableWideRTSLayerPaintable_Access_Array;
   type UpgradableWideRTSLayerPaintable_Access_Array_Access_Array is array (Natural range <>) of UpgradableWideRTSLayerPaintable_Access_Array_Access;
   type UpgradableWideRTSLayerPaintable_Access_Array_Access_Array_Access is access all UpgradableWideRTSLayerPaintable_Access_Array_Access_Array;

   type UpgradableWideRTSLayerPaintable is new RTSLayerCompositePaintable with record
      cost : Unbounded_String;
   end record;

   procedure Initialize (This : in out UpgradableWideRTSLayerPaintable'Class; upgradableRTSLayerHudPaintable_Param : access UpgradableRTSLayerHudPaintable_Package.UpgradableRTSLayerHudPaintable'Class);
   function Create (upgradableRTSLayerHudPaintable_Param : access UpgradableRTSLayerHudPaintable_Package.UpgradableRTSLayerHudPaintable'Class) return UpgradableWideRTSLayerPaintable_Access;
   procedure update (This : in out UpgradableWideRTSLayerPaintable; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   procedure paint (This : in out UpgradableWideRTSLayerPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure setCost (This : in out UpgradableWideRTSLayerPaintable; cost : Unbounded_String);
   function getCost (This : in out UpgradableWideRTSLayerPaintable) return Unbounded_String;

end org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package;


