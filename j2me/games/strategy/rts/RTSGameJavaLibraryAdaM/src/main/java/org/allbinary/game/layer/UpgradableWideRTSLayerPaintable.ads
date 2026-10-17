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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.game.layer.RTSLayerCompositePaintable_Package; use org.allbinary.game.layer.RTSLayerCompositePaintable_Package;

package org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package is

   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;

   type UpgradableWideRTSLayerPaintable is tagged;
   type UpgradableWideRTSLayerPaintable_Access is access all UpgradableWideRTSLayerPaintable'Class;
   type UpgradableWideRTSLayerPaintable_Access_Array is array (Natural range <>) of UpgradableWideRTSLayerPaintable_Access;
   type UpgradableWideRTSLayerPaintable_Access_Array_Access is access all UpgradableWideRTSLayerPaintable_Access_Array;

   type UpgradableWideRTSLayerPaintable is new RTSLayerCompositePaintable with record
      cost : Unbounded_String;
   end record;

   procedure Initialize (This : in out UpgradableWideRTSLayerPaintable'Class; upgradableRTSLayerHudPaintable : UpgradableRTSLayerHudPaintable_Access);
   function Create (upgradableRTSLayerHudPaintable : UpgradableRTSLayerHudPaintable_Access) return UpgradableWideRTSLayerPaintable_Access;
   procedure update (This : in out UpgradableWideRTSLayerPaintable; rtsLayer : RTSLayer_Access);
   procedure paint (This : in out UpgradableWideRTSLayerPaintable; graphics : Graphics_Access);
   procedure setCost (This : in out UpgradableWideRTSLayerPaintable; cost : Unbounded_String);
   function getCost (This : in out UpgradableWideRTSLayerPaintable) return Unbounded_String;
   procedure getCost (This : in out UpgradableWideRTSLayerPaintable);

end org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package;


