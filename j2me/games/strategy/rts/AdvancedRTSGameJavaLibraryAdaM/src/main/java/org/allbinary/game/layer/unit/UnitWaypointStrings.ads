-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.game.layer.unit.UnitWaypointStrings_Package;
package org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References is
   type UnitWaypointStrings_Access is access all org.allbinary.game.layer.unit.UnitWaypointStrings_Package.UnitWaypointStrings'Class;
   type UnitWaypointStrings_Access_Array is array (Natural range <>) of UnitWaypointStrings_Access;
   type UnitWaypointStrings_Access_Array_Access is access all UnitWaypointStrings_Access_Array;
   type UnitWaypointStrings_Access_Array_Access_Array is array (Natural range <>) of UnitWaypointStrings_Access_Array_Access;
   type UnitWaypointStrings_Access_Array_Access_Array_Access is access all UnitWaypointStrings_Access_Array_Access_Array;
   type UnitWaypointStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UnitWaypointStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : UnitWaypointStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UnitWaypointStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UnitWaypointStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UnitWaypointStrings_Access_Array_Access is (if Value /= null and then Value.all in UnitWaypointStrings_Access_Array_Object'Class then UnitWaypointStrings_Access_Array_Object'Class (Value.all).Value else null);
   type UnitWaypointStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UnitWaypointStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UnitWaypointStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UnitWaypointStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UnitWaypointStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UnitWaypointStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UnitWaypointStrings_Access_Array_Access_Array_Object'Class then UnitWaypointStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References;

with org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.layer.unit.UnitWaypointStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype UnitWaypointStrings_Access is org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.UnitWaypointStrings_Access;
   function "=" (Left, Right : UnitWaypointStrings_Access) return Boolean renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References."=";
   subtype UnitWaypointStrings_Access_Array is org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.UnitWaypointStrings_Access_Array;
   function "=" (Left, Right : UnitWaypointStrings_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References."=";
   subtype UnitWaypointStrings_Access_Array_Access is org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.UnitWaypointStrings_Access_Array_Access;
   function "=" (Left, Right : UnitWaypointStrings_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References."=";
   function Java_Box (Value : UnitWaypointStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.Java_Box;
   function Java_Unbox_UnitWaypointStrings_Access_Array (Value : access Java_Object'Class) return UnitWaypointStrings_Access_Array_Access renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.Java_Unbox_UnitWaypointStrings_Access_Array;
   subtype UnitWaypointStrings_Access_Array_Access_Array is org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.UnitWaypointStrings_Access_Array_Access_Array;
   function "=" (Left, Right : UnitWaypointStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References."=";
   subtype UnitWaypointStrings_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.UnitWaypointStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UnitWaypointStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References."=";
   function Java_Box (Value : UnitWaypointStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.Java_Box;
   function Java_Unbox_UnitWaypointStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return UnitWaypointStrings_Access_Array_Access_Array_Access renames org.allbinary.game.layer.unit.UnitWaypointStrings_Package_References.Java_Unbox_UnitWaypointStrings_Access_Array_Access_Array;

   type UnitWaypointStrings is new Java_Object with record
      PATHING : Unbounded_String;
      WANDERING : Unbounded_String;
      THINKING : Unbounded_String;
      THINKING_ABOUT_TARGET : Unbounded_String;
      TARGET : Unbounded_String;
      KILL : Unbounded_String;
      STOP : Unbounded_String;
      WAYPOINT_DESTROYED_SHORT : Unbounded_String;
      WAYPOINT_DESTROYED : Unbounded_String;
      ALL_VISITED_SHORT : Unbounded_String;
      ALL_VISITED : Unbounded_String;
      ALREADY_THERE_SHORT : Unbounded_String;
      ALREADY_THERE : Unbounded_String;
      NEXT_PATH_NODE : Unbounded_String;
      U_ALL_VISITED_SHORT : Unbounded_String;
      U_ALREADY_THERE_SHORT : Unbounded_String;
      VISITED_MOST_OF_THE_PATH : Unbounded_String;
      RETURNING_AS_WAYPOINT_PATH_LIST : Unbounded_String;
   end record;
   instance : UnitWaypointStrings_Access;

   procedure Initialize (This : in out UnitWaypointStrings'Class);
   function Create return UnitWaypointStrings_Access;
   function getInstance return UnitWaypointStrings_Access;

end org.allbinary.game.layer.unit.UnitWaypointStrings_Package;


