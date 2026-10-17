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
with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.graphics.draw.KeyValueDrawString_Package; use org.allbinary.graphics.draw.KeyValueDrawString_Package;

package org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package is

   package NullPathFindingLayer_Package renames Standard.org.allbinary.game.layer.NullPathFindingLayer_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package SelectionHudPaintable_Package renames Standard.org.allbinary.game.layer.SelectionHudPaintable_Package;
   package KeyValueDrawString_Package renames Standard.org.allbinary.graphics.draw.KeyValueDrawString_Package;

   type WaypointInfoHudPaintable is tagged;
   type WaypointInfoHudPaintable_Access is access all WaypointInfoHudPaintable'Class;
   type WaypointInfoHudPaintable_Access_Array is array (Natural range <>) of WaypointInfoHudPaintable_Access;
   type WaypointInfoHudPaintable_Access_Array_Access is access all WaypointInfoHudPaintable_Access_Array;

   type WaypointInfoHudPaintable is new SelectionHudPaintable with record
      keyvalueDrawString : KeyValueDrawString_Access;
      rtsLayerP : PathFindingLayerInterface_Access;
      textLine2Y : Integer;
   end record;

   procedure Initialize (This : in out WaypointInfoHudPaintable'Class);
   function Create return WaypointInfoHudPaintable_Access;
   procedure updateMeasurement (This : in out WaypointInfoHudPaintable; graphics : Graphics_Access);
   procedure updateSelectionInfo (This : in out WaypointInfoHudPaintable);
   procedure setRtsLayer (This : in out WaypointInfoHudPaintable; rtsLayer : RTSLayer_Access);
   function getRtsLayer (This : in out WaypointInfoHudPaintable) return PathFindingLayerInterface_Access;
   procedure paint (This : in out WaypointInfoHudPaintable; graphics : Graphics_Access);

end org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package;


