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

limited with org.allbinary.game.layer.RTSLayerHudPaintable_Package;
package org.allbinary.game.layer.RTSLayerHudPaintable_Package_References is
   type RTSLayerHudPaintable_Access is access all org.allbinary.game.layer.RTSLayerHudPaintable_Package.RTSLayerHudPaintable'Class;
   type RTSLayerHudPaintable_Access_Array is array (Natural range <>) of RTSLayerHudPaintable_Access;
   type RTSLayerHudPaintable_Access_Array_Access is access all RTSLayerHudPaintable_Access_Array;
   type RTSLayerHudPaintable_Access_Array_Access_Array is array (Natural range <>) of RTSLayerHudPaintable_Access_Array_Access;
   type RTSLayerHudPaintable_Access_Array_Access_Array_Access is access all RTSLayerHudPaintable_Access_Array_Access_Array;
end org.allbinary.game.layer.RTSLayerHudPaintable_Package_References;

with org.allbinary.game.layer.RTSLayerHudPaintable_Package_References;
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
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
limited with org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;

package org.allbinary.game.layer.RTSLayerHudPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
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


   subtype RTSLayerHudPaintable_Access is org.allbinary.game.layer.RTSLayerHudPaintable_Package_References.RTSLayerHudPaintable_Access;
   function "=" (Left, Right : RTSLayerHudPaintable_Access) return Boolean renames org.allbinary.game.layer.RTSLayerHudPaintable_Package_References."=";
   subtype RTSLayerHudPaintable_Access_Array is org.allbinary.game.layer.RTSLayerHudPaintable_Package_References.RTSLayerHudPaintable_Access_Array;
   function "=" (Left, Right : RTSLayerHudPaintable_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerHudPaintable_Package_References."=";
   subtype RTSLayerHudPaintable_Access_Array_Access is org.allbinary.game.layer.RTSLayerHudPaintable_Package_References.RTSLayerHudPaintable_Access_Array_Access;
   function "=" (Left, Right : RTSLayerHudPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerHudPaintable_Package_References."=";
   subtype RTSLayerHudPaintable_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayerHudPaintable_Package_References.RTSLayerHudPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayerHudPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerHudPaintable_Package_References."=";
   subtype RTSLayerHudPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayerHudPaintable_Package_References.RTSLayerHudPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayerHudPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerHudPaintable_Package_References."=";

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


