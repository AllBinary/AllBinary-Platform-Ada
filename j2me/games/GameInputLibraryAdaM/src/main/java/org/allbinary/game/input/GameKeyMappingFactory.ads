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

limited with org.allbinary.game.input.GameKeyMappingFactory_Package;
package org.allbinary.game.input.GameKeyMappingFactory_Package_References is
   type GameKeyMappingFactory_Access is access all org.allbinary.game.input.GameKeyMappingFactory_Package.GameKeyMappingFactory'Class;
   type GameKeyMappingFactory_Access_Array is array (Natural range <>) of GameKeyMappingFactory_Access;
   type GameKeyMappingFactory_Access_Array_Access is access all GameKeyMappingFactory_Access_Array;
   type GameKeyMappingFactory_Access_Array_Access_Array is array (Natural range <>) of GameKeyMappingFactory_Access_Array_Access;
   type GameKeyMappingFactory_Access_Array_Access_Array_Access is access all GameKeyMappingFactory_Access_Array_Access_Array;
end org.allbinary.game.input.GameKeyMappingFactory_Package_References;

with org.allbinary.game.input.GameKeyMappingFactory_Package_References;
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

package org.allbinary.game.input.GameKeyMappingFactory_Package is

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


   subtype GameKeyMappingFactory_Access is org.allbinary.game.input.GameKeyMappingFactory_Package_References.GameKeyMappingFactory_Access;
   function "=" (Left, Right : GameKeyMappingFactory_Access) return Boolean renames org.allbinary.game.input.GameKeyMappingFactory_Package_References."=";
   subtype GameKeyMappingFactory_Access_Array is org.allbinary.game.input.GameKeyMappingFactory_Package_References.GameKeyMappingFactory_Access_Array;
   function "=" (Left, Right : GameKeyMappingFactory_Access_Array) return Boolean renames org.allbinary.game.input.GameKeyMappingFactory_Package_References."=";
   subtype GameKeyMappingFactory_Access_Array_Access is org.allbinary.game.input.GameKeyMappingFactory_Package_References.GameKeyMappingFactory_Access_Array_Access;
   function "=" (Left, Right : GameKeyMappingFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKeyMappingFactory_Package_References."=";
   subtype GameKeyMappingFactory_Access_Array_Access_Array is org.allbinary.game.input.GameKeyMappingFactory_Package_References.GameKeyMappingFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyMappingFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameKeyMappingFactory_Package_References."=";
   subtype GameKeyMappingFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKeyMappingFactory_Package_References.GameKeyMappingFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyMappingFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKeyMappingFactory_Package_References."=";

   type GameKeyMappingFactory is new Java_Object with record
      intKeyToGameKey : GameKey_Access_Array_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out GameKeyMappingFactory'Class);
   function Create return GameKeyMappingFactory_Access;
   function getInstance return GameKeyMappingFactory_Access;
   function getGameKey (This : in out GameKeyMappingFactory; key : Integer) return GameKey_Access;
   procedure getGameKey (This : in out GameKeyMappingFactory; key : Integer);
   procedure setGameKey (This : in out GameKeyMappingFactory; gameKey_Param : access GameKey_Package.GameKey'Class);

end org.allbinary.game.input.GameKeyMappingFactory_Package;


