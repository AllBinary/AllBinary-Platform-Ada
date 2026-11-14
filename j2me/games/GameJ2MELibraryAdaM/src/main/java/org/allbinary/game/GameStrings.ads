--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
limited with org.allbinary.game.GameStrings_Package;
package org.allbinary.game.GameStrings_Package_References is
   type GameStrings_Access is access all org.allbinary.game.GameStrings_Package.GameStrings'Class;
   type GameStrings_Access_Array is array (Natural range <>) of GameStrings_Access;
   type GameStrings_Access_Array_Access is access all GameStrings_Access_Array;
   type GameStrings_Access_Array_Access_Array is array (Natural range <>) of GameStrings_Access_Array_Access;
   type GameStrings_Access_Array_Access_Array_Access is access all GameStrings_Access_Array_Access_Array;
   type GameStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : GameStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameStrings_Access_Array_Access is (if Value /= null and then Value.all in GameStrings_Access_Array_Object'Class then GameStrings_Access_Array_Object'Class (Value.all).Value else null);
   type GameStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameStrings_Access_Array_Access_Array_Object'Class then GameStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.GameStrings_Package_References;

with org.allbinary.game.GameStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.GameStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameStrings_Access is org.allbinary.game.GameStrings_Package_References.GameStrings_Access;
   function "=" (Left, Right : GameStrings_Access) return Boolean renames org.allbinary.game.GameStrings_Package_References."=";
   subtype GameStrings_Access_Array is org.allbinary.game.GameStrings_Package_References.GameStrings_Access_Array;
   function "=" (Left, Right : GameStrings_Access_Array) return Boolean renames org.allbinary.game.GameStrings_Package_References."=";
   subtype GameStrings_Access_Array_Access is org.allbinary.game.GameStrings_Package_References.GameStrings_Access_Array_Access;
   function "=" (Left, Right : GameStrings_Access_Array_Access) return Boolean renames org.allbinary.game.GameStrings_Package_References."=";
   function Java_Box (Value : GameStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.GameStrings_Package_References.Java_Box;
   function Java_Unbox_GameStrings_Access_Array (Value : access Java_Object'Class) return GameStrings_Access_Array_Access renames org.allbinary.game.GameStrings_Package_References.Java_Unbox_GameStrings_Access_Array;
   subtype GameStrings_Access_Array_Access_Array is org.allbinary.game.GameStrings_Package_References.GameStrings_Access_Array_Access_Array;
   function "=" (Left, Right : GameStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.game.GameStrings_Package_References."=";
   subtype GameStrings_Access_Array_Access_Array_Access is org.allbinary.game.GameStrings_Package_References.GameStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.GameStrings_Package_References."=";
   function Java_Box (Value : GameStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.GameStrings_Package_References.Java_Box;
   function Java_Unbox_GameStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return GameStrings_Access_Array_Access_Array_Access renames org.allbinary.game.GameStrings_Package_References.Java_Unbox_GameStrings_Access_Array_Access_Array;

   type GameStrings is new Java_Object with record
      PROCESS_TICK : Unbounded_String;
      ON_GAME_INITIALIZED : Unbounded_String;
      UPDATESURFACE : Unbounded_String;
      ON_SET_DISPLAYABLE : Unbounded_String;
      UNPAUSE : Unbounded_String;
      TOGGLE_MENU : Unbounded_String;
      SET_GAME_OVER : Unbounded_String;
      GAME_STATE : Unbounded_String;
      SET_GAME_STATE : Unbounded_String;
      STOP_GAME_CANVAS_RUNNABLE_INTERFACE : Unbounded_String;
   end record;
   instance : GameStrings_Access;

   procedure Initialize (This : in out GameStrings'Class);
   function Create return GameStrings_Access;
   function getInstance return GameStrings_Access;

end org.allbinary.game.GameStrings_Package;


