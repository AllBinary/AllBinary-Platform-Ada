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
limited with org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package;
package org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package_References is
   type WaypointInfoHudPaintableSingleton_Access is access all org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package.WaypointInfoHudPaintableSingleton'Class;
   type WaypointInfoHudPaintableSingleton_Access_Array is array (Natural range <>) of WaypointInfoHudPaintableSingleton_Access;
   type WaypointInfoHudPaintableSingleton_Access_Array_Access is access all WaypointInfoHudPaintableSingleton_Access_Array;
   type WaypointInfoHudPaintableSingleton_Access_Array_Access_Array is array (Natural range <>) of WaypointInfoHudPaintableSingleton_Access_Array_Access;
   type WaypointInfoHudPaintableSingleton_Access_Array_Access_Array_Access is access all WaypointInfoHudPaintableSingleton_Access_Array_Access_Array;
   type WaypointInfoHudPaintableSingleton_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WaypointInfoHudPaintableSingleton_Access_Array_Access;
   end record;
   function Java_Box (Value : WaypointInfoHudPaintableSingleton_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WaypointInfoHudPaintableSingleton_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WaypointInfoHudPaintableSingleton_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WaypointInfoHudPaintableSingleton_Access_Array_Access is (if Value /= null and then Value.all in WaypointInfoHudPaintableSingleton_Access_Array_Object'Class then WaypointInfoHudPaintableSingleton_Access_Array_Object'Class (Value.all).Value else null);
   type WaypointInfoHudPaintableSingleton_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WaypointInfoHudPaintableSingleton_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WaypointInfoHudPaintableSingleton_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WaypointInfoHudPaintableSingleton_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WaypointInfoHudPaintableSingleton_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WaypointInfoHudPaintableSingleton_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WaypointInfoHudPaintableSingleton_Access_Array_Access_Array_Object'Class then WaypointInfoHudPaintableSingleton_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package_References;

with org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package;
with org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References;

package org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package is

   package Reference_Types is
   subtype WaypointInfoHudPaintable_Access is org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References.WaypointInfoHudPaintable_Access;
   use type WaypointInfoHudPaintable_Access;
   subtype WaypointInfoHudPaintable_Access_Array is org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References.WaypointInfoHudPaintable_Access_Array;
   use type WaypointInfoHudPaintable_Access_Array;
   subtype WaypointInfoHudPaintable_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References.WaypointInfoHudPaintable_Access_Array_Access;
   use type WaypointInfoHudPaintable_Access_Array_Access;
   subtype WaypointInfoHudPaintable_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References.WaypointInfoHudPaintable_Access_Array_Access_Array;
   use type WaypointInfoHudPaintable_Access_Array_Access_Array;
   subtype WaypointInfoHudPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package_References.WaypointInfoHudPaintable_Access_Array_Access_Array_Access;
   use type WaypointInfoHudPaintable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WaypointInfoHudPaintableSingleton_Access is org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package_References.WaypointInfoHudPaintableSingleton_Access;
   function "=" (Left, Right : WaypointInfoHudPaintableSingleton_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package_References."=";
   subtype WaypointInfoHudPaintableSingleton_Access_Array is org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package_References.WaypointInfoHudPaintableSingleton_Access_Array;
   function "=" (Left, Right : WaypointInfoHudPaintableSingleton_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package_References."=";
   subtype WaypointInfoHudPaintableSingleton_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package_References.WaypointInfoHudPaintableSingleton_Access_Array_Access;
   function "=" (Left, Right : WaypointInfoHudPaintableSingleton_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package_References."=";
   function Java_Box (Value : WaypointInfoHudPaintableSingleton_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package_References.Java_Box;
   function Java_Unbox_WaypointInfoHudPaintableSingleton_Access_Array (Value : access Java_Object'Class) return WaypointInfoHudPaintableSingleton_Access_Array_Access renames org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package_References.Java_Unbox_WaypointInfoHudPaintableSingleton_Access_Array;
   subtype WaypointInfoHudPaintableSingleton_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package_References.WaypointInfoHudPaintableSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointInfoHudPaintableSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package_References."=";
   subtype WaypointInfoHudPaintableSingleton_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package_References.WaypointInfoHudPaintableSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointInfoHudPaintableSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package_References."=";
   function Java_Box (Value : WaypointInfoHudPaintableSingleton_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package_References.Java_Box;
   function Java_Unbox_WaypointInfoHudPaintableSingleton_Access_Array_Access_Array (Value : access Java_Object'Class) return WaypointInfoHudPaintableSingleton_Access_Array_Access_Array_Access renames org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package_References.Java_Unbox_WaypointInfoHudPaintableSingleton_Access_Array_Access_Array;

   type WaypointInfoHudPaintableSingleton is new Java_Object with null record;
   instance : WaypointInfoHudPaintable_Access;

   procedure Initialize (This : in out WaypointInfoHudPaintableSingleton'Class);
   function Create return WaypointInfoHudPaintableSingleton_Access;
   function getInstance return WaypointInfoHudPaintable_Access;

end org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package;


