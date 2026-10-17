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
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.AndroidUtil_Package; use org.allbinary.AndroidUtil_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.part.weapon.BasicWeaponPart_Package; use org.allbinary.game.part.weapon.BasicWeaponPart_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;

package org.allbinary.game.layer.RTSLayerHudPaintable_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AndroidUtil_Package renames Standard.org.allbinary.AndroidUtil_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package BasicWeaponPart_Package renames Standard.org.allbinary.game.part.weapon.BasicWeaponPart_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;

   type RTSLayerHudPaintable is tagged;
   type RTSLayerHudPaintable_Access is access all RTSLayerHudPaintable'Class;
   type RTSLayerHudPaintable_Access_Array is array (Natural range <>) of RTSLayerHudPaintable_Access;
   type RTSLayerHudPaintable_Access_Array_Access is access all RTSLayerHudPaintable_Access_Array;

   type RTSLayerHudPaintable is new SelectionHudPaintable and UpdateMyFontInterface with record
      weaponProperties : Unbounded_String_Array_Access;
      rtsLayer : CollidableDestroyableDamageableLayer_Access;
      costY : Integer;
      costY1 : Integer;
      fontHeight : Integer;
   end record;
   instance : RTSLayerHudPaintable_Access;

   procedure Initialize (This : in out RTSLayerHudPaintable'Class);
   function Create return RTSLayerHudPaintable_Access;
   function getInstance return RTSLayerHudPaintable_Access;
   procedure updateMeasurement (This : in out RTSLayerHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure updateSelectionInfo (This : in out RTSLayerHudPaintable);
   procedure paint (This : in out RTSLayerHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure setRtsLayer (This : in out RTSLayerHudPaintable; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   function getRtsLayer (This : in out RTSLayerHudPaintable) return CollidableDestroyableDamageableLayer_Access;

end org.allbinary.game.layer.RTSLayerHudPaintable_Package;


