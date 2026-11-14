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

with AllBinary_Java;
limited with org.allbinary.game.layer.RTSGameStrings_Package;
package org.allbinary.game.layer.RTSGameStrings_Package_References is
   type RTSGameStrings_Access is access all org.allbinary.game.layer.RTSGameStrings_Package.RTSGameStrings'Class;
   type RTSGameStrings_Access_Array is array (Natural range <>) of RTSGameStrings_Access;
   type RTSGameStrings_Access_Array_Access is access all RTSGameStrings_Access_Array;
   type RTSGameStrings_Access_Array_Access_Array is array (Natural range <>) of RTSGameStrings_Access_Array_Access;
   type RTSGameStrings_Access_Array_Access_Array_Access is access all RTSGameStrings_Access_Array_Access_Array;
   type RTSGameStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RTSGameStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : RTSGameStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RTSGameStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RTSGameStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RTSGameStrings_Access_Array_Access is (if Value /= null and then Value.all in RTSGameStrings_Access_Array_Object'Class then RTSGameStrings_Access_Array_Object'Class (Value.all).Value else null);
   type RTSGameStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RTSGameStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RTSGameStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RTSGameStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RTSGameStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RTSGameStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RTSGameStrings_Access_Array_Access_Array_Object'Class then RTSGameStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.RTSGameStrings_Package_References;

with org.allbinary.game.layer.RTSGameStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.layer.RTSGameStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype RTSGameStrings_Access is org.allbinary.game.layer.RTSGameStrings_Package_References.RTSGameStrings_Access;
   function "=" (Left, Right : RTSGameStrings_Access) return Boolean renames org.allbinary.game.layer.RTSGameStrings_Package_References."=";
   subtype RTSGameStrings_Access_Array is org.allbinary.game.layer.RTSGameStrings_Package_References.RTSGameStrings_Access_Array;
   function "=" (Left, Right : RTSGameStrings_Access_Array) return Boolean renames org.allbinary.game.layer.RTSGameStrings_Package_References."=";
   subtype RTSGameStrings_Access_Array_Access is org.allbinary.game.layer.RTSGameStrings_Package_References.RTSGameStrings_Access_Array_Access;
   function "=" (Left, Right : RTSGameStrings_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSGameStrings_Package_References."=";
   function Java_Box (Value : RTSGameStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.RTSGameStrings_Package_References.Java_Box;
   function Java_Unbox_RTSGameStrings_Access_Array (Value : access Java_Object'Class) return RTSGameStrings_Access_Array_Access renames org.allbinary.game.layer.RTSGameStrings_Package_References.Java_Unbox_RTSGameStrings_Access_Array;
   subtype RTSGameStrings_Access_Array_Access_Array is org.allbinary.game.layer.RTSGameStrings_Package_References.RTSGameStrings_Access_Array_Access_Array;
   function "=" (Left, Right : RTSGameStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSGameStrings_Package_References."=";
   subtype RTSGameStrings_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSGameStrings_Package_References.RTSGameStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSGameStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSGameStrings_Package_References."=";
   function Java_Box (Value : RTSGameStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.RTSGameStrings_Package_References.Java_Box;
   function Java_Unbox_RTSGameStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return RTSGameStrings_Access_Array_Access_Array_Access renames org.allbinary.game.layer.RTSGameStrings_Package_References.Java_Unbox_RTSGameStrings_Access_Array_Access_Array;

   type RTSGameStrings is new Java_Object with record
      DRAG_TO_SPOT : Unbounded_String;
      NOT_YOURS : Unbounded_String;
      NEW_UNIT : Unbounded_String;
      NEW_WAYPOINT : Unbounded_String;
      BUILDING : Unbounded_String;
      UPGRADE : Unbounded_String;
      DOWNGRADE : Unbounded_String;
      NO_MONEY : Unbounded_String;
      SPOT_TAKEN : Unbounded_String;
      BUILDING_COLLISION : Unbounded_String;
      STRUCTURE_TO_CLOSE : Unbounded_String;
      MAP_EDGE : Unbounded_String;
      ROAD_COLLISION : Unbounded_String;
      SELECT_BUILD_SPOT : Unbounded_String;
      BUILD_ON_PATH : Unbounded_String;
      DRAGGABLE : Unbounded_String;
   end record;
   instance : RTSGameStrings_Access;

   procedure Initialize (This : in out RTSGameStrings'Class);
   function Create return RTSGameStrings_Access;
   function getInstance return RTSGameStrings_Access;

end org.allbinary.game.layer.RTSGameStrings_Package;


