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

limited with org.allbinary.game.layer.RTSLayerInfoPaintable_Package;
package org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References is
   type RTSLayerInfoPaintable_Access is access all org.allbinary.game.layer.RTSLayerInfoPaintable_Package.RTSLayerInfoPaintable'Class;
   type RTSLayerInfoPaintable_Access_Array is array (Natural range <>) of RTSLayerInfoPaintable_Access;
   type RTSLayerInfoPaintable_Access_Array_Access is access all RTSLayerInfoPaintable_Access_Array;
   type RTSLayerInfoPaintable_Access_Array_Access_Array is array (Natural range <>) of RTSLayerInfoPaintable_Access_Array_Access;
   type RTSLayerInfoPaintable_Access_Array_Access_Array_Access is access all RTSLayerInfoPaintable_Access_Array_Access_Array;
end org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References;

with org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References;
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
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;
limited with org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package_References;

package org.allbinary.game.layer.RTSLayerInfoPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package InitUpdatePaintable_Package renames Standard.org.allbinary.graphics.paint.InitUpdatePaintable_Package;
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
   subtype SelectionHudPaintable_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access;
   use type SelectionHudPaintable_Access;
   subtype SelectionHudPaintable_Access_Array is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array;
   use type SelectionHudPaintable_Access_Array;
   subtype SelectionHudPaintable_Access_Array_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access;
   use type SelectionHudPaintable_Access_Array_Access;
   subtype SelectionHudPaintable_Access_Array_Access_Array is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access_Array;
   use type SelectionHudPaintable_Access_Array_Access_Array;
   subtype SelectionHudPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access_Array_Access;
   use type SelectionHudPaintable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RTSLayerInfoPaintable_Access is org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References.RTSLayerInfoPaintable_Access;
   function "=" (Left, Right : RTSLayerInfoPaintable_Access) return Boolean renames org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References."=";
   subtype RTSLayerInfoPaintable_Access_Array is org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References.RTSLayerInfoPaintable_Access_Array;
   function "=" (Left, Right : RTSLayerInfoPaintable_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References."=";
   subtype RTSLayerInfoPaintable_Access_Array_Access is org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References.RTSLayerInfoPaintable_Access_Array_Access;
   function "=" (Left, Right : RTSLayerInfoPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References."=";
   subtype RTSLayerInfoPaintable_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References.RTSLayerInfoPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayerInfoPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References."=";
   subtype RTSLayerInfoPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References.RTSLayerInfoPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayerInfoPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References."=";

   type RTSLayerInfoPaintable is new InitUpdatePaintable with record
      initUpdatePaintable : InitUpdatePaintable_Access;
   end record;

   procedure Initialize (This : in out RTSLayerInfoPaintable'Class);
   function Create return RTSLayerInfoPaintable_Access;
   procedure update (This : in out RTSLayerInfoPaintable);
   procedure paint (This : in out RTSLayerInfoPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure updateRTSLayerInfoInit (This : in out RTSLayerInfoPaintable; hudPaintable_Param : access InitUpdatePaintable_Package.InitUpdatePaintable'Class);
   procedure updateRTSLayerInfoSelection (This : in out RTSLayerInfoPaintable; hudPaintable_Param : access SelectionHudPaintable_Package.SelectionHudPaintable'Class);

end org.allbinary.game.layer.RTSLayerInfoPaintable_Package;


