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

limited with org.allbinary.game.input.GameKeyFactory_Package;
package org.allbinary.game.input.GameKeyFactory_Package_References is
   type GameKeyFactory_Access is access all org.allbinary.game.input.GameKeyFactory_Package.GameKeyFactory'Class;
   type GameKeyFactory_Access_Array is array (Natural range <>) of GameKeyFactory_Access;
   type GameKeyFactory_Access_Array_Access is access all GameKeyFactory_Access_Array;
   type GameKeyFactory_Access_Array_Access_Array is array (Natural range <>) of GameKeyFactory_Access_Array_Access;
   type GameKeyFactory_Access_Array_Access_Array_Access is access all GameKeyFactory_Access_Array_Access_Array;
end org.allbinary.game.input.GameKeyFactory_Package_References;

with org.allbinary.game.input.GameKeyFactory_Package_References;
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

package org.allbinary.game.input.GameKeyFactory_Package is

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


   subtype GameKeyFactory_Access is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access;
   function "=" (Left, Right : GameKeyFactory_Access) return Boolean renames org.allbinary.game.input.GameKeyFactory_Package_References."=";
   subtype GameKeyFactory_Access_Array is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array;
   function "=" (Left, Right : GameKeyFactory_Access_Array) return Boolean renames org.allbinary.game.input.GameKeyFactory_Package_References."=";
   subtype GameKeyFactory_Access_Array_Access is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array_Access;
   function "=" (Left, Right : GameKeyFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKeyFactory_Package_References."=";
   subtype GameKeyFactory_Access_Array_Access_Array is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameKeyFactory_Package_References."=";
   subtype GameKeyFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKeyFactory_Package_References."=";

   type GameKeyFactory is new Java_Object with record
      NONE : GameKey_Access;
      UP : GameKey_Access;
      DOWN : GameKey_Access;
      LEFT : GameKey_Access;
      RIGHT : GameKey_Access;
      KEY_POUND : GameKey_Access;
      KEY_STAR : GameKey_Access;
      KEY_NUM0 : GameKey_Access;
      KEY_NUM1 : GameKey_Access;
      KEY_NUM2 : GameKey_Access;
      KEY_NUM3 : GameKey_Access;
      KEY_NUM4 : GameKey_Access;
      KEY_NUM5 : GameKey_Access;
      KEY_NUM6 : GameKey_Access;
      KEY_NUM7 : GameKey_Access;
      KEY_NUM8 : GameKey_Access;
      KEY_NUM9 : GameKey_Access;
      GAME_A : GameKey_Access;
      GAME_B : GameKey_Access;
      GAME_C : GameKey_Access;
      GAME_D : GameKey_Access;
      FIRE : GameKey_Access;
      LEVEL_DOWN : GameKey_Access;
      LEVEL_UP : GameKey_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out GameKeyFactory'Class);
   function Create return GameKeyFactory_Access;
   function getInstance return GameKeyFactory_Access;

end org.allbinary.game.input.GameKeyFactory_Package;


