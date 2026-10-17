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
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package; use org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.draw.KeyValueDrawCharArray_Package; use org.allbinary.graphics.draw.KeyValueDrawCharArray_Package;

package org.allbinary.game.layer.geological.resources_Case.GeologicalResourceInfoHudPaintable_Package is

   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package WaypointInfoHudPaintable_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package KeyValueDrawCharArray_Package renames Standard.org.allbinary.graphics.draw.KeyValueDrawCharArray_Package;

   type GeologicalResourceInfoHudPaintable is tagged;
   type GeologicalResourceInfoHudPaintable_Access is access all GeologicalResourceInfoHudPaintable'Class;
   type GeologicalResourceInfoHudPaintable_Access_Array is array (Natural range <>) of GeologicalResourceInfoHudPaintable_Access;
   type GeologicalResourceInfoHudPaintable_Access_Array_Access is access all GeologicalResourceInfoHudPaintable_Access_Array;

   type GeologicalResourceInfoHudPaintable is new WaypointInfoHudPaintable with record
      keyvalueDrawString : KeyValueDrawCharArray_Access;
      fontHeight : Integer;
   end record;
   RESOURCES : Unbounded_String;

   procedure Initialize (This : in out GeologicalResourceInfoHudPaintable'Class);
   function Create return GeologicalResourceInfoHudPaintable_Access;
   procedure updateMeasurement (This : in out GeologicalResourceInfoHudPaintable; graphics : Graphics_Access);
   procedure updateSelectionInfo (This : in out GeologicalResourceInfoHudPaintable);
   procedure paint (This : in out GeologicalResourceInfoHudPaintable; graphics : Graphics_Access);

end org.allbinary.game.layer.geological.resources_Case.GeologicalResourceInfoHudPaintable_Package;


