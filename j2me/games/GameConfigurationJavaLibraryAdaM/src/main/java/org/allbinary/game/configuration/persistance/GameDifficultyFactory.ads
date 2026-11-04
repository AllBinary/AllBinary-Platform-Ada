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

limited with org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package;
package org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package_References is
   type GameDifficultyFactory_Access is access all org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package.GameDifficultyFactory'Class;
   type GameDifficultyFactory_Access_Array is array (Natural range <>) of GameDifficultyFactory_Access;
   type GameDifficultyFactory_Access_Array_Access is access all GameDifficultyFactory_Access_Array;
   type GameDifficultyFactory_Access_Array_Access_Array is array (Natural range <>) of GameDifficultyFactory_Access_Array_Access;
   type GameDifficultyFactory_Access_Array_Access_Array_Access is access all GameDifficultyFactory_Access_Array_Access_Array;
end org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package_References;

with org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameDifficultyFactory_Access is org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package_References.GameDifficultyFactory_Access;
   function "=" (Left, Right : GameDifficultyFactory_Access) return Boolean renames org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package_References."=";
   subtype GameDifficultyFactory_Access_Array is org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package_References.GameDifficultyFactory_Access_Array;
   function "=" (Left, Right : GameDifficultyFactory_Access_Array) return Boolean renames org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package_References."=";
   subtype GameDifficultyFactory_Access_Array_Access is org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package_References.GameDifficultyFactory_Access_Array_Access;
   function "=" (Left, Right : GameDifficultyFactory_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package_References."=";
   subtype GameDifficultyFactory_Access_Array_Access_Array is org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package_References.GameDifficultyFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameDifficultyFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package_References."=";
   subtype GameDifficultyFactory_Access_Array_Access_Array_Access is org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package_References.GameDifficultyFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameDifficultyFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package_References."=";

   type GameDifficultyFactory is new Java_Object with record
      level : Integer;
   end record;
   instance : GameDifficultyFactory_Access;

   procedure Initialize (This : in out GameDifficultyFactory'Class);
   function Create return GameDifficultyFactory_Access;
   function getInstance return GameDifficultyFactory_Access;
   procedure setLevel (This : in out GameDifficultyFactory; level : Integer);
   function getLevel (This : in out GameDifficultyFactory) return Integer;

end org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package;


