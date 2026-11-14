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
limited with org.allbinary.game.state.GameState_Package;
package org.allbinary.game.state.GameState_Package_References is
   type GameState_Access is access all org.allbinary.game.state.GameState_Package.GameState'Class;
   type GameState_Access_Array is array (Natural range <>) of GameState_Access;
   type GameState_Access_Array_Access is access all GameState_Access_Array;
   type GameState_Access_Array_Access_Array is array (Natural range <>) of GameState_Access_Array_Access;
   type GameState_Access_Array_Access_Array_Access is access all GameState_Access_Array_Access_Array;
   type GameState_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameState_Access_Array_Access;
   end record;
   function Java_Box (Value : GameState_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameState_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameState_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameState_Access_Array_Access is (if Value /= null and then Value.all in GameState_Access_Array_Object'Class then GameState_Access_Array_Object'Class (Value.all).Value else null);
   type GameState_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameState_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameState_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameState_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameState_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameState_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameState_Access_Array_Access_Array_Object'Class then GameState_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.state.GameState_Package_References;

with org.allbinary.game.state.GameState_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.state.GameState_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameState_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access;
   function "=" (Left, Right : GameState_Access) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   subtype GameState_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array;
   function "=" (Left, Right : GameState_Access_Array) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   subtype GameState_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access;
   function "=" (Left, Right : GameState_Access_Array_Access) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   function Java_Box (Value : GameState_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.state.GameState_Package_References.Java_Box;
   function Java_Unbox_GameState_Access_Array (Value : access Java_Object'Class) return GameState_Access_Array_Access renames org.allbinary.game.state.GameState_Package_References.Java_Unbox_GameState_Access_Array;
   subtype GameState_Access_Array_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array;
   function "=" (Left, Right : GameState_Access_Array_Access_Array) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   subtype GameState_Access_Array_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameState_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   function Java_Box (Value : GameState_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.state.GameState_Package_References.Java_Box;
   function Java_Unbox_GameState_Access_Array_Access_Array (Value : access Java_Object'Class) return GameState_Access_Array_Access_Array_Access renames org.allbinary.game.state.GameState_Package_References.Java_Unbox_GameState_Access_Array_Access_Array;

   type GameState is new Java_Object with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out GameState'Class; name : Unbounded_String; state : Integer);
   function Create (name : Unbounded_String; state : Integer) return GameState_Access;
   function toString (This : in out GameState) return Unbounded_String;

end org.allbinary.game.state.GameState_Package;


