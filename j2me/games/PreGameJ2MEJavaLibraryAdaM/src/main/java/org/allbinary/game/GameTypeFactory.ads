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

limited with org.allbinary.game.GameTypeFactory_Package;
package org.allbinary.game.GameTypeFactory_Package_References is
   type GameTypeFactory_Access is access all org.allbinary.game.GameTypeFactory_Package.GameTypeFactory'Class;
   type GameTypeFactory_Access_Array is array (Natural range <>) of GameTypeFactory_Access;
   type GameTypeFactory_Access_Array_Access is access all GameTypeFactory_Access_Array;
   type GameTypeFactory_Access_Array_Access_Array is array (Natural range <>) of GameTypeFactory_Access_Array_Access;
   type GameTypeFactory_Access_Array_Access_Array_Access is access all GameTypeFactory_Access_Array_Access_Array;
end org.allbinary.game.GameTypeFactory_Package_References;

with org.allbinary.game.GameTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.GameType_Package;
with org.allbinary.game.GameType_Package_References;

package org.allbinary.game.GameTypeFactory_Package is

   package Reference_Types is
   subtype GameType_Access is org.allbinary.game.GameType_Package_References.GameType_Access;
   use type GameType_Access;
   subtype GameType_Access_Array is org.allbinary.game.GameType_Package_References.GameType_Access_Array;
   use type GameType_Access_Array;
   subtype GameType_Access_Array_Access is org.allbinary.game.GameType_Package_References.GameType_Access_Array_Access;
   use type GameType_Access_Array_Access;
   subtype GameType_Access_Array_Access_Array is org.allbinary.game.GameType_Package_References.GameType_Access_Array_Access_Array;
   use type GameType_Access_Array_Access_Array;
   subtype GameType_Access_Array_Access_Array_Access is org.allbinary.game.GameType_Package_References.GameType_Access_Array_Access_Array_Access;
   use type GameType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameTypeFactory_Access is org.allbinary.game.GameTypeFactory_Package_References.GameTypeFactory_Access;
   function "=" (Left, Right : GameTypeFactory_Access) return Boolean renames org.allbinary.game.GameTypeFactory_Package_References."=";
   subtype GameTypeFactory_Access_Array is org.allbinary.game.GameTypeFactory_Package_References.GameTypeFactory_Access_Array;
   function "=" (Left, Right : GameTypeFactory_Access_Array) return Boolean renames org.allbinary.game.GameTypeFactory_Package_References."=";
   subtype GameTypeFactory_Access_Array_Access is org.allbinary.game.GameTypeFactory_Package_References.GameTypeFactory_Access_Array_Access;
   function "=" (Left, Right : GameTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.game.GameTypeFactory_Package_References."=";
   subtype GameTypeFactory_Access_Array_Access_Array is org.allbinary.game.GameTypeFactory_Package_References.GameTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.GameTypeFactory_Package_References."=";
   subtype GameTypeFactory_Access_Array_Access_Array_Access is org.allbinary.game.GameTypeFactory_Package_References.GameTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.GameTypeFactory_Package_References."=";

   type GameTypeFactory is new Java_Object with record
      NULL_GAME_TYPE_ARRAY : GameType_Access_Array_Access;
      NONE : GameType_Access;
      SINGLE_PLAYER : GameType_Access;
      MULTI_PLAYER : GameType_Access;
      BOT : GameType_Access;
   end record;
   instance : GameTypeFactory_Access;

   procedure Initialize (This : in out GameTypeFactory'Class);
   function Create return GameTypeFactory_Access;
   function getInstance return GameTypeFactory_Access;

end org.allbinary.game.GameTypeFactory_Package;


