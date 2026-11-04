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

limited with org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package;
package org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package_References is
   type UpgradableWideRTSLayerPaintable_Access is access all org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package.UpgradableWideRTSLayerPaintable'Class;
   type UpgradableWideRTSLayerPaintable_Access_Array is array (Natural range <>) of UpgradableWideRTSLayerPaintable_Access;
   type UpgradableWideRTSLayerPaintable_Access_Array_Access is access all UpgradableWideRTSLayerPaintable_Access_Array;
   type UpgradableWideRTSLayerPaintable_Access_Array_Access_Array is array (Natural range <>) of UpgradableWideRTSLayerPaintable_Access_Array_Access;
   type UpgradableWideRTSLayerPaintable_Access_Array_Access_Array_Access is access all UpgradableWideRTSLayerPaintable_Access_Array_Access_Array;
end org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package_References;

with org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package_References;
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
with org.allbinary.game.layer.RTSLayerCompositePaintable_Package; use org.allbinary.game.layer.RTSLayerCompositePaintable_Package;
limited with org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package;
with org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References;
limited with org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;

package org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
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
   subtype UpgradableRTSLayerHudPaintable_Access is org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References.UpgradableRTSLayerHudPaintable_Access;
   use type UpgradableRTSLayerHudPaintable_Access;
   subtype UpgradableRTSLayerHudPaintable_Access_Array is org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References.UpgradableRTSLayerHudPaintable_Access_Array;
   use type UpgradableRTSLayerHudPaintable_Access_Array;
   subtype UpgradableRTSLayerHudPaintable_Access_Array_Access is org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References.UpgradableRTSLayerHudPaintable_Access_Array_Access;
   use type UpgradableRTSLayerHudPaintable_Access_Array_Access;
   subtype UpgradableRTSLayerHudPaintable_Access_Array_Access_Array is org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References.UpgradableRTSLayerHudPaintable_Access_Array_Access_Array;
   use type UpgradableRTSLayerHudPaintable_Access_Array_Access_Array;
   subtype UpgradableRTSLayerHudPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References.UpgradableRTSLayerHudPaintable_Access_Array_Access_Array_Access;
   use type UpgradableRTSLayerHudPaintable_Access_Array_Access_Array_Access;
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


   subtype UpgradableWideRTSLayerPaintable_Access is org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package_References.UpgradableWideRTSLayerPaintable_Access;
   function "=" (Left, Right : UpgradableWideRTSLayerPaintable_Access) return Boolean renames org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package_References."=";
   subtype UpgradableWideRTSLayerPaintable_Access_Array is org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package_References.UpgradableWideRTSLayerPaintable_Access_Array;
   function "=" (Left, Right : UpgradableWideRTSLayerPaintable_Access_Array) return Boolean renames org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package_References."=";
   subtype UpgradableWideRTSLayerPaintable_Access_Array_Access is org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package_References.UpgradableWideRTSLayerPaintable_Access_Array_Access;
   function "=" (Left, Right : UpgradableWideRTSLayerPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package_References."=";
   subtype UpgradableWideRTSLayerPaintable_Access_Array_Access_Array is org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package_References.UpgradableWideRTSLayerPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : UpgradableWideRTSLayerPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package_References."=";
   subtype UpgradableWideRTSLayerPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package_References.UpgradableWideRTSLayerPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UpgradableWideRTSLayerPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.UpgradableWideRTSLayerPaintable_Package_References."=";

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


