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
limited with org.allbinary.game.input.GameKey_Package;
package org.allbinary.game.input.GameKey_Package_References is
   type GameKey_Access is access all org.allbinary.game.input.GameKey_Package.GameKey'Class;
   type GameKey_Access_Array is array (Natural range <>) of GameKey_Access;
   type GameKey_Access_Array_Access is access all GameKey_Access_Array;
   type GameKey_Access_Array_Access_Array is array (Natural range <>) of GameKey_Access_Array_Access;
   type GameKey_Access_Array_Access_Array_Access is access all GameKey_Access_Array_Access_Array;
   type GameKey_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameKey_Access_Array_Access;
   end record;
   function Java_Box (Value : GameKey_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameKey_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameKey_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameKey_Access_Array_Access is (if Value /= null and then Value.all in GameKey_Access_Array_Object'Class then GameKey_Access_Array_Object'Class (Value.all).Value else null);
   type GameKey_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameKey_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameKey_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameKey_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameKey_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameKey_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameKey_Access_Array_Access_Array_Object'Class then GameKey_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.GameKey_Package_References;

with org.allbinary.game.input.GameKey_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;

package org.allbinary.game.input.GameKey_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameKey_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access;
   function "=" (Left, Right : GameKey_Access) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array;
   function "=" (Left, Right : GameKey_Access_Array) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access;
   function "=" (Left, Right : GameKey_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   function Java_Box (Value : GameKey_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.GameKey_Package_References.Java_Box;
   function Java_Unbox_GameKey_Access_Array (Value : access Java_Object'Class) return GameKey_Access_Array_Access renames org.allbinary.game.input.GameKey_Package_References.Java_Unbox_GameKey_Access_Array;
   subtype GameKey_Access_Array_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array;
   function "=" (Left, Right : GameKey_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKey_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   function Java_Box (Value : GameKey_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.GameKey_Package_References.Java_Box;
   function Java_Unbox_GameKey_Access_Array_Access_Array (Value : access Java_Object'Class) return GameKey_Access_Array_Access_Array_Access renames org.allbinary.game.input.GameKey_Package_References.Java_Unbox_GameKey_Access_Array_Access_Array;

   type GameKey is new Input_Package.Input with null record;
   NULL_GAME_KEY : GameKey_Access;

   procedure Initialize (This : in out GameKey'Class; key : Integer; name : Unbounded_String);
   function Create (key : Integer; name : Unbounded_String) return GameKey_Access;
   function toString (This : in out GameKey) return Unbounded_String;

end org.allbinary.game.input.GameKey_Package;


