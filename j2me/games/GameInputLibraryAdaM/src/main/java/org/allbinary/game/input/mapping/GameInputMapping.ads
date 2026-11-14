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
limited with org.allbinary.game.input.mapping.GameInputMapping_Package;
package org.allbinary.game.input.mapping.GameInputMapping_Package_References is
   type GameInputMapping_Access is access all org.allbinary.game.input.mapping.GameInputMapping_Package.GameInputMapping'Class;
   type GameInputMapping_Access_Array is array (Natural range <>) of GameInputMapping_Access;
   type GameInputMapping_Access_Array_Access is access all GameInputMapping_Access_Array;
   type GameInputMapping_Access_Array_Access_Array is array (Natural range <>) of GameInputMapping_Access_Array_Access;
   type GameInputMapping_Access_Array_Access_Array_Access is access all GameInputMapping_Access_Array_Access_Array;
   type GameInputMapping_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInputMapping_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInputMapping_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInputMapping_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInputMapping_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInputMapping_Access_Array_Access is (if Value /= null and then Value.all in GameInputMapping_Access_Array_Object'Class then GameInputMapping_Access_Array_Object'Class (Value.all).Value else null);
   type GameInputMapping_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInputMapping_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInputMapping_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInputMapping_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInputMapping_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInputMapping_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameInputMapping_Access_Array_Access_Array_Object'Class then GameInputMapping_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.mapping.GameInputMapping_Package_References;

with org.allbinary.game.input.mapping.GameInputMapping_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKey_Package_References;

package org.allbinary.game.input.mapping.GameInputMapping_Package is

   package GameKey_Package renames Standard.org.allbinary.game.input.GameKey_Package;
   package Reference_Types is
   subtype GameKey_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access;
   use type GameKey_Access;
   subtype GameKey_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array;
   use type GameKey_Access_Array;
   subtype GameKey_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access;
   use type GameKey_Access_Array_Access;
   subtype GameKey_Access_Array_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array;
   use type GameKey_Access_Array_Access_Array;
   subtype GameKey_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array_Access;
   use type GameKey_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameInputMapping_Access is org.allbinary.game.input.mapping.GameInputMapping_Package_References.GameInputMapping_Access;
   function "=" (Left, Right : GameInputMapping_Access) return Boolean renames org.allbinary.game.input.mapping.GameInputMapping_Package_References."=";
   subtype GameInputMapping_Access_Array is org.allbinary.game.input.mapping.GameInputMapping_Package_References.GameInputMapping_Access_Array;
   function "=" (Left, Right : GameInputMapping_Access_Array) return Boolean renames org.allbinary.game.input.mapping.GameInputMapping_Package_References."=";
   subtype GameInputMapping_Access_Array_Access is org.allbinary.game.input.mapping.GameInputMapping_Package_References.GameInputMapping_Access_Array_Access;
   function "=" (Left, Right : GameInputMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.GameInputMapping_Package_References."=";
   function Java_Box (Value : GameInputMapping_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.mapping.GameInputMapping_Package_References.Java_Box;
   function Java_Unbox_GameInputMapping_Access_Array (Value : access Java_Object'Class) return GameInputMapping_Access_Array_Access renames org.allbinary.game.input.mapping.GameInputMapping_Package_References.Java_Unbox_GameInputMapping_Access_Array;
   subtype GameInputMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.GameInputMapping_Package_References.GameInputMapping_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.GameInputMapping_Package_References."=";
   subtype GameInputMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.GameInputMapping_Package_References.GameInputMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.GameInputMapping_Package_References."=";
   function Java_Box (Value : GameInputMapping_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.mapping.GameInputMapping_Package_References.Java_Box;
   function Java_Unbox_GameInputMapping_Access_Array_Access_Array (Value : access Java_Object'Class) return GameInputMapping_Access_Array_Access_Array_Access renames org.allbinary.game.input.mapping.GameInputMapping_Package_References.Java_Unbox_GameInputMapping_Access_Array_Access_Array;

   type GameInputMapping is new Java_Object with record
      name : Unbounded_String;
      gameKey : GameKey_Access;
   end record;

   procedure Initialize (This : in out GameInputMapping'Class; name : Unbounded_String; gameKey_Param : access GameKey_Package.GameKey'Class);
   function Create (name : Unbounded_String; gameKey_Param : access GameKey_Package.GameKey'Class) return GameInputMapping_Access;
   procedure setGameKey (This : in out GameInputMapping; gameKey_Param : access GameKey_Package.GameKey'Class);
   function getGameKey (This : in out GameInputMapping) return GameKey_Access;
   procedure setName (This : in out GameInputMapping; name : Unbounded_String);
   function getName (This : in out GameInputMapping) return Unbounded_String;

end org.allbinary.game.input.mapping.GameInputMapping_Package;


