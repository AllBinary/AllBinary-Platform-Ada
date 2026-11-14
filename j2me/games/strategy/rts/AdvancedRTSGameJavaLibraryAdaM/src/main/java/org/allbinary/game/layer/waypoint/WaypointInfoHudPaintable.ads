-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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

with AllBinary_Java;
limited with org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package;
package org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References is
   type WaypointInfoHudPaintable_Access is access all org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package.WaypointInfoHudPaintable'Class;
   type WaypointInfoHudPaintable_Access_Array is array (Natural range <>) of WaypointInfoHudPaintable_Access;
   type WaypointInfoHudPaintable_Access_Array_Access is access all WaypointInfoHudPaintable_Access_Array;
   type WaypointInfoHudPaintable_Access_Array_Access_Array is array (Natural range <>) of WaypointInfoHudPaintable_Access_Array_Access;
   type WaypointInfoHudPaintable_Access_Array_Access_Array_Access is access all WaypointInfoHudPaintable_Access_Array_Access_Array;
   type WaypointInfoHudPaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WaypointInfoHudPaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : WaypointInfoHudPaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WaypointInfoHudPaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WaypointInfoHudPaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WaypointInfoHudPaintable_Access_Array_Access is (if Value /= null and then Value.all in WaypointInfoHudPaintable_Access_Array_Object'Class then WaypointInfoHudPaintable_Access_Array_Object'Class (Value.all).Value else null);
   type WaypointInfoHudPaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WaypointInfoHudPaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WaypointInfoHudPaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WaypointInfoHudPaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WaypointInfoHudPaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WaypointInfoHudPaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WaypointInfoHudPaintable_Access_Array_Access_Array_Object'Class then WaypointInfoHudPaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References;

with org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References;
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
limited with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;
limited with org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
limited with org.allbinary.graphics.draw.KeyValueDrawString_Package;
with org.allbinary.graphics.draw.KeyValueDrawString_Package_References;

package org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package SelectionHudPaintable_Package renames Standard.org.allbinary.game.layer.SelectionHudPaintable_Package;
   package KeyValueDrawString_Package renames Standard.org.allbinary.graphics.draw.KeyValueDrawString_Package;
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
   subtype PathFindingLayerInterface_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access;
   use type PathFindingLayerInterface_Access;
   subtype PathFindingLayerInterface_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array;
   use type PathFindingLayerInterface_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access;
   subtype PathFindingLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array;
   use type PathFindingLayerInterface_Access_Array_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access_Array_Access;
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
   subtype KeyValueDrawString_Access is org.allbinary.graphics.draw.KeyValueDrawString_Package_References.KeyValueDrawString_Access;
   use type KeyValueDrawString_Access;
   subtype KeyValueDrawString_Access_Array is org.allbinary.graphics.draw.KeyValueDrawString_Package_References.KeyValueDrawString_Access_Array;
   use type KeyValueDrawString_Access_Array;
   subtype KeyValueDrawString_Access_Array_Access is org.allbinary.graphics.draw.KeyValueDrawString_Package_References.KeyValueDrawString_Access_Array_Access;
   use type KeyValueDrawString_Access_Array_Access;
   subtype KeyValueDrawString_Access_Array_Access_Array is org.allbinary.graphics.draw.KeyValueDrawString_Package_References.KeyValueDrawString_Access_Array_Access_Array;
   use type KeyValueDrawString_Access_Array_Access_Array;
   subtype KeyValueDrawString_Access_Array_Access_Array_Access is org.allbinary.graphics.draw.KeyValueDrawString_Package_References.KeyValueDrawString_Access_Array_Access_Array_Access;
   use type KeyValueDrawString_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WaypointInfoHudPaintable_Access is org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References.WaypointInfoHudPaintable_Access;
   function "=" (Left, Right : WaypointInfoHudPaintable_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References."=";
   subtype WaypointInfoHudPaintable_Access_Array is org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References.WaypointInfoHudPaintable_Access_Array;
   function "=" (Left, Right : WaypointInfoHudPaintable_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References."=";
   subtype WaypointInfoHudPaintable_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References.WaypointInfoHudPaintable_Access_Array_Access;
   function "=" (Left, Right : WaypointInfoHudPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References."=";
   function Java_Box (Value : WaypointInfoHudPaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References.Java_Box;
   function Java_Unbox_WaypointInfoHudPaintable_Access_Array (Value : access Java_Object'Class) return WaypointInfoHudPaintable_Access_Array_Access renames org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References.Java_Unbox_WaypointInfoHudPaintable_Access_Array;
   subtype WaypointInfoHudPaintable_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References.WaypointInfoHudPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointInfoHudPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References."=";
   subtype WaypointInfoHudPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References.WaypointInfoHudPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointInfoHudPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References."=";
   function Java_Box (Value : WaypointInfoHudPaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References.Java_Box;
   function Java_Unbox_WaypointInfoHudPaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return WaypointInfoHudPaintable_Access_Array_Access_Array_Access renames org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References.Java_Unbox_WaypointInfoHudPaintable_Access_Array_Access_Array;

   type WaypointInfoHudPaintable is new SelectionHudPaintable with record
      keyvalueDrawString : KeyValueDrawString_Access;
      rtsLayerP : PathFindingLayerInterface_Access;
      textLine2Y : Integer;
   end record;

   procedure Initialize (This : in out WaypointInfoHudPaintable'Class);
   function Create return WaypointInfoHudPaintable_Access;
   procedure updateMeasurement (This : in out WaypointInfoHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure updateSelectionInfo (This : in out WaypointInfoHudPaintable);
   procedure setRtsLayer (This : in out WaypointInfoHudPaintable; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   function getRtsLayer (This : in out WaypointInfoHudPaintable) return PathFindingLayerInterface_Access;
   procedure paint (This : in out WaypointInfoHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package;


