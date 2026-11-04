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

limited with org.allbinary.game.PlayerTypesFactory_Package;
package org.allbinary.game.PlayerTypesFactory_Package_References is
   type PlayerTypesFactory_Access is access all org.allbinary.game.PlayerTypesFactory_Package.PlayerTypesFactory'Class;
   type PlayerTypesFactory_Access_Array is array (Natural range <>) of PlayerTypesFactory_Access;
   type PlayerTypesFactory_Access_Array_Access is access all PlayerTypesFactory_Access_Array;
   type PlayerTypesFactory_Access_Array_Access_Array is array (Natural range <>) of PlayerTypesFactory_Access_Array_Access;
   type PlayerTypesFactory_Access_Array_Access_Array_Access is access all PlayerTypesFactory_Access_Array_Access_Array;
end org.allbinary.game.PlayerTypesFactory_Package_References;

with org.allbinary.game.PlayerTypesFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.PlayerType_Package;
with org.allbinary.game.PlayerType_Package_References;

package org.allbinary.game.PlayerTypesFactory_Package is

   package Reference_Types is
   subtype PlayerType_Access is org.allbinary.game.PlayerType_Package_References.PlayerType_Access;
   use type PlayerType_Access;
   subtype PlayerType_Access_Array is org.allbinary.game.PlayerType_Package_References.PlayerType_Access_Array;
   use type PlayerType_Access_Array;
   subtype PlayerType_Access_Array_Access is org.allbinary.game.PlayerType_Package_References.PlayerType_Access_Array_Access;
   use type PlayerType_Access_Array_Access;
   subtype PlayerType_Access_Array_Access_Array is org.allbinary.game.PlayerType_Package_References.PlayerType_Access_Array_Access_Array;
   use type PlayerType_Access_Array_Access_Array;
   subtype PlayerType_Access_Array_Access_Array_Access is org.allbinary.game.PlayerType_Package_References.PlayerType_Access_Array_Access_Array_Access;
   use type PlayerType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PlayerTypesFactory_Access is org.allbinary.game.PlayerTypesFactory_Package_References.PlayerTypesFactory_Access;
   function "=" (Left, Right : PlayerTypesFactory_Access) return Boolean renames org.allbinary.game.PlayerTypesFactory_Package_References."=";
   subtype PlayerTypesFactory_Access_Array is org.allbinary.game.PlayerTypesFactory_Package_References.PlayerTypesFactory_Access_Array;
   function "=" (Left, Right : PlayerTypesFactory_Access_Array) return Boolean renames org.allbinary.game.PlayerTypesFactory_Package_References."=";
   subtype PlayerTypesFactory_Access_Array_Access is org.allbinary.game.PlayerTypesFactory_Package_References.PlayerTypesFactory_Access_Array_Access;
   function "=" (Left, Right : PlayerTypesFactory_Access_Array_Access) return Boolean renames org.allbinary.game.PlayerTypesFactory_Package_References."=";
   subtype PlayerTypesFactory_Access_Array_Access_Array is org.allbinary.game.PlayerTypesFactory_Package_References.PlayerTypesFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerTypesFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.PlayerTypesFactory_Package_References."=";
   subtype PlayerTypesFactory_Access_Array_Access_Array_Access is org.allbinary.game.PlayerTypesFactory_Package_References.PlayerTypesFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerTypesFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.PlayerTypesFactory_Package_References."=";

   type PlayerTypesFactory is new Java_Object with record
      PLAYER_TYPE_ONE : PlayerType_Access;
      PLAYER_TYPE_TWO : PlayerType_Access;
      PLAYER_TYPE_THREE : PlayerType_Access;
   end record;
   SINGLETON : PlayerTypesFactory_Access;

   procedure Initialize (This : in out PlayerTypesFactory'Class);
   function Create return PlayerTypesFactory_Access;
   function getInstance return PlayerTypesFactory_Access;

end org.allbinary.game.PlayerTypesFactory_Package;


