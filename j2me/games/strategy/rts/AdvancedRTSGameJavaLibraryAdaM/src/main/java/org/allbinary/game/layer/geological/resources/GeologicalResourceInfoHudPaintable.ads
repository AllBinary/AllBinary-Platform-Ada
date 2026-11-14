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
limited with org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package;
package org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References is
   type GeologicalResourceInfoHudPaintable_Access is access all org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package.GeologicalResourceInfoHudPaintable'Class;
   type GeologicalResourceInfoHudPaintable_Access_Array is array (Natural range <>) of GeologicalResourceInfoHudPaintable_Access;
   type GeologicalResourceInfoHudPaintable_Access_Array_Access is access all GeologicalResourceInfoHudPaintable_Access_Array;
   type GeologicalResourceInfoHudPaintable_Access_Array_Access_Array is array (Natural range <>) of GeologicalResourceInfoHudPaintable_Access_Array_Access;
   type GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Access is access all GeologicalResourceInfoHudPaintable_Access_Array_Access_Array;
   type GeologicalResourceInfoHudPaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeologicalResourceInfoHudPaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : GeologicalResourceInfoHudPaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeologicalResourceInfoHudPaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeologicalResourceInfoHudPaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeologicalResourceInfoHudPaintable_Access_Array_Access is (if Value /= null and then Value.all in GeologicalResourceInfoHudPaintable_Access_Array_Object'Class then GeologicalResourceInfoHudPaintable_Access_Array_Object'Class (Value.all).Value else null);
   type GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeologicalResourceInfoHudPaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Object'Class then GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References;

with org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References;
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
with org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package; use org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package;
limited with org.allbinary.graphics.draw.KeyValueDrawCharArray_Package;
with org.allbinary.graphics.draw.KeyValueDrawCharArray_Package_References;

package org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package WaypointInfoHudPaintable_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package;
   package KeyValueDrawCharArray_Package renames Standard.org.allbinary.graphics.draw.KeyValueDrawCharArray_Package;
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
   subtype KeyValueDrawCharArray_Access is org.allbinary.graphics.draw.KeyValueDrawCharArray_Package_References.KeyValueDrawCharArray_Access;
   use type KeyValueDrawCharArray_Access;
   subtype KeyValueDrawCharArray_Access_Array is org.allbinary.graphics.draw.KeyValueDrawCharArray_Package_References.KeyValueDrawCharArray_Access_Array;
   use type KeyValueDrawCharArray_Access_Array;
   subtype KeyValueDrawCharArray_Access_Array_Access is org.allbinary.graphics.draw.KeyValueDrawCharArray_Package_References.KeyValueDrawCharArray_Access_Array_Access;
   use type KeyValueDrawCharArray_Access_Array_Access;
   subtype KeyValueDrawCharArray_Access_Array_Access_Array is org.allbinary.graphics.draw.KeyValueDrawCharArray_Package_References.KeyValueDrawCharArray_Access_Array_Access_Array;
   use type KeyValueDrawCharArray_Access_Array_Access_Array;
   subtype KeyValueDrawCharArray_Access_Array_Access_Array_Access is org.allbinary.graphics.draw.KeyValueDrawCharArray_Package_References.KeyValueDrawCharArray_Access_Array_Access_Array_Access;
   use type KeyValueDrawCharArray_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GeologicalResourceInfoHudPaintable_Access is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.GeologicalResourceInfoHudPaintable_Access;
   function "=" (Left, Right : GeologicalResourceInfoHudPaintable_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References."=";
   subtype GeologicalResourceInfoHudPaintable_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.GeologicalResourceInfoHudPaintable_Access_Array;
   function "=" (Left, Right : GeologicalResourceInfoHudPaintable_Access_Array) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References."=";
   subtype GeologicalResourceInfoHudPaintable_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.GeologicalResourceInfoHudPaintable_Access_Array_Access;
   function "=" (Left, Right : GeologicalResourceInfoHudPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References."=";
   function Java_Box (Value : GeologicalResourceInfoHudPaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.Java_Box;
   function Java_Unbox_GeologicalResourceInfoHudPaintable_Access_Array (Value : access Java_Object'Class) return GeologicalResourceInfoHudPaintable_Access_Array_Access renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.Java_Unbox_GeologicalResourceInfoHudPaintable_Access_Array;
   subtype GeologicalResourceInfoHudPaintable_Access_Array_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.GeologicalResourceInfoHudPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : GeologicalResourceInfoHudPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References."=";
   subtype GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References."=";
   function Java_Box (Value : GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.Java_Box;
   function Java_Unbox_GeologicalResourceInfoHudPaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Access renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.Java_Unbox_GeologicalResourceInfoHudPaintable_Access_Array_Access_Array;

   type GeologicalResourceInfoHudPaintable is new WaypointInfoHudPaintable with record
      GeologicalResourceInfoHudPaintable_Field_keyvalueDrawString : KeyValueDrawCharArray_Access;
      fontHeight : Integer;
   end record;
   RESOURCES : Unbounded_String;

   procedure Initialize (This : in out GeologicalResourceInfoHudPaintable'Class);
   function Create return GeologicalResourceInfoHudPaintable_Access;
   procedure updateMeasurement (This : in out GeologicalResourceInfoHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure updateSelectionInfo (This : in out GeologicalResourceInfoHudPaintable);
   procedure paint (This : in out GeologicalResourceInfoHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package;


