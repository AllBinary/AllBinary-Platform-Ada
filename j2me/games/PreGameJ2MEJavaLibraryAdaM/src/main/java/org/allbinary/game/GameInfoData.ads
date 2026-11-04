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

limited with org.allbinary.game.GameInfoData_Package;
package org.allbinary.game.GameInfoData_Package_References is
   type GameInfoData_Access is access all org.allbinary.game.GameInfoData_Package.GameInfoData'Class;
   type GameInfoData_Access_Array is array (Natural range <>) of GameInfoData_Access;
   type GameInfoData_Access_Array_Access is access all GameInfoData_Access_Array;
   type GameInfoData_Access_Array_Access_Array is array (Natural range <>) of GameInfoData_Access_Array_Access;
   type GameInfoData_Access_Array_Access_Array_Access is access all GameInfoData_Access_Array_Access_Array;
end org.allbinary.game.GameInfoData_Package_References;

with org.allbinary.game.GameInfoData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.GameInfoData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameInfoData_Access is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access;
   function "=" (Left, Right : GameInfoData_Access) return Boolean renames org.allbinary.game.GameInfoData_Package_References."=";
   subtype GameInfoData_Access_Array is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access_Array;
   function "=" (Left, Right : GameInfoData_Access_Array) return Boolean renames org.allbinary.game.GameInfoData_Package_References."=";
   subtype GameInfoData_Access_Array_Access is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access_Array_Access;
   function "=" (Left, Right : GameInfoData_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfoData_Package_References."=";
   subtype GameInfoData_Access_Array_Access_Array is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access_Array_Access_Array;
   function "=" (Left, Right : GameInfoData_Access_Array_Access_Array) return Boolean renames org.allbinary.game.GameInfoData_Package_References."=";
   subtype GameInfoData_Access_Array_Access_Array_Access is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInfoData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfoData_Package_References."=";

   type GameInfoData is new Java_Object with record
      GAME_TYPE : Unbounded_String;
      GAME_MODE : Unbounded_String;
      PLAYER_TYPE : Unbounded_String;
      HIGHEST_LEVEL : Unbounded_String;
      CURRENT_LEVEL : Unbounded_String;
      SOFTWARE_INFORMATION : Unbounded_String;
   end record;
   instance : GameInfoData_Access;

   procedure Initialize (This : in out GameInfoData'Class);
   function Create return GameInfoData_Access;
   function getInstance return GameInfoData_Access;

end org.allbinary.game.GameInfoData_Package;


