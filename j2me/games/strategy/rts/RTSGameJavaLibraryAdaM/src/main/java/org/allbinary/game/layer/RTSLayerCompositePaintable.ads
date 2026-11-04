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

limited with org.allbinary.game.layer.RTSLayerCompositePaintable_Package;
package org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References is
   type RTSLayerCompositePaintable_Access is access all org.allbinary.game.layer.RTSLayerCompositePaintable_Package.RTSLayerCompositePaintable'Class;
   type RTSLayerCompositePaintable_Access_Array is array (Natural range <>) of RTSLayerCompositePaintable_Access;
   type RTSLayerCompositePaintable_Access_Array_Access is access all RTSLayerCompositePaintable_Access_Array;
   type RTSLayerCompositePaintable_Access_Array_Access_Array is array (Natural range <>) of RTSLayerCompositePaintable_Access_Array_Access;
   type RTSLayerCompositePaintable_Access_Array_Access_Array_Access is access all RTSLayerCompositePaintable_Access_Array_Access_Array;
end org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References;

with org.allbinary.game.layer.RTSLayerCompositePaintable_Package_References;
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
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
limited with org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package;
with org.allbinary.game.layer.UpgradableRTSLayerHudPaintable_Package_References;
limited with org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;

package org.allbinary.game.layer.RTSLayerCompositePaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
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

   type RTSLayerCompositePaintable is new Paintable with record
      upgradeCost : Unbounded_String;
      downGradeCost : Unbounded_String;
      UPGRADE : Unbounded_String;
      DOWNGRADE : Unbounded_String;
      upgradableRTSLayerHudPaintable : UpgradableRTSLayerHudPaintable_Access;
   end record;

   procedure Initialize (This : in out RTSLayerCompositePaintable'Class; upgradableRTSLayerHudPaintable_Param : access UpgradableRTSLayerHudPaintable_Package.UpgradableRTSLayerHudPaintable'Class);
   function Create (upgradableRTSLayerHudPaintable_Param : access UpgradableRTSLayerHudPaintable_Package.UpgradableRTSLayerHudPaintable'Class) return RTSLayerCompositePaintable_Access;
   procedure update (This : in out RTSLayerCompositePaintable; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   procedure paint (This : in out RTSLayerCompositePaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure setUpgradeCost (This : in out RTSLayerCompositePaintable; upgradeCost : Unbounded_String);
   function getUpgradeCost (This : in out RTSLayerCompositePaintable) return Unbounded_String;
   procedure setDownGradeCost (This : in out RTSLayerCompositePaintable; downGradeCost : Unbounded_String);
   function getDownGradeCost (This : in out RTSLayerCompositePaintable) return Unbounded_String;

end org.allbinary.game.layer.RTSLayerCompositePaintable_Package;


