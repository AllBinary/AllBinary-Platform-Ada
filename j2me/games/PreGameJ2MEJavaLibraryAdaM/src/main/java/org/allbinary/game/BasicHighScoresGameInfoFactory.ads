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

limited with org.allbinary.game.BasicHighScoresGameInfoFactory_Package;
package org.allbinary.game.BasicHighScoresGameInfoFactory_Package_References is
   type BasicHighScoresGameInfoFactory_Access is access all org.allbinary.game.BasicHighScoresGameInfoFactory_Package.BasicHighScoresGameInfoFactory'Class;
   type BasicHighScoresGameInfoFactory_Access_Array is array (Natural range <>) of BasicHighScoresGameInfoFactory_Access;
   type BasicHighScoresGameInfoFactory_Access_Array_Access is access all BasicHighScoresGameInfoFactory_Access_Array;
   type BasicHighScoresGameInfoFactory_Access_Array_Access_Array is array (Natural range <>) of BasicHighScoresGameInfoFactory_Access_Array_Access;
   type BasicHighScoresGameInfoFactory_Access_Array_Access_Array_Access is access all BasicHighScoresGameInfoFactory_Access_Array_Access_Array;
end org.allbinary.game.BasicHighScoresGameInfoFactory_Package_References;

with org.allbinary.game.BasicHighScoresGameInfoFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfo_Package_References;

package org.allbinary.game.BasicHighScoresGameInfoFactory_Package is

   package Reference_Types is
   subtype GameInfo_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access;
   use type GameInfo_Access;
   subtype GameInfo_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array;
   use type GameInfo_Access_Array;
   subtype GameInfo_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access;
   use type GameInfo_Access_Array_Access;
   subtype GameInfo_Access_Array_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array;
   use type GameInfo_Access_Array_Access_Array;
   subtype GameInfo_Access_Array_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array_Access;
   use type GameInfo_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicHighScoresGameInfoFactory_Access is org.allbinary.game.BasicHighScoresGameInfoFactory_Package_References.BasicHighScoresGameInfoFactory_Access;
   function "=" (Left, Right : BasicHighScoresGameInfoFactory_Access) return Boolean renames org.allbinary.game.BasicHighScoresGameInfoFactory_Package_References."=";
   subtype BasicHighScoresGameInfoFactory_Access_Array is org.allbinary.game.BasicHighScoresGameInfoFactory_Package_References.BasicHighScoresGameInfoFactory_Access_Array;
   function "=" (Left, Right : BasicHighScoresGameInfoFactory_Access_Array) return Boolean renames org.allbinary.game.BasicHighScoresGameInfoFactory_Package_References."=";
   subtype BasicHighScoresGameInfoFactory_Access_Array_Access is org.allbinary.game.BasicHighScoresGameInfoFactory_Package_References.BasicHighScoresGameInfoFactory_Access_Array_Access;
   function "=" (Left, Right : BasicHighScoresGameInfoFactory_Access_Array_Access) return Boolean renames org.allbinary.game.BasicHighScoresGameInfoFactory_Package_References."=";
   subtype BasicHighScoresGameInfoFactory_Access_Array_Access_Array is org.allbinary.game.BasicHighScoresGameInfoFactory_Package_References.BasicHighScoresGameInfoFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicHighScoresGameInfoFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.BasicHighScoresGameInfoFactory_Package_References."=";
   subtype BasicHighScoresGameInfoFactory_Access_Array_Access_Array_Access is org.allbinary.game.BasicHighScoresGameInfoFactory_Package_References.BasicHighScoresGameInfoFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicHighScoresGameInfoFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.BasicHighScoresGameInfoFactory_Package_References."=";

   type BasicHighScoresGameInfoFactory is new Java_Object with record
      MULTI_PLAYER_SERVER : GameInfo_Access;
      SINGLE_PLAYER_SERVER : GameInfo_Access;
   end record;
   SINGLETON : BasicHighScoresGameInfoFactory_Access;

   procedure Initialize (This : in out BasicHighScoresGameInfoFactory'Class);
   function Create return BasicHighScoresGameInfoFactory_Access;
   function getInstance return BasicHighScoresGameInfoFactory_Access;

end org.allbinary.game.BasicHighScoresGameInfoFactory_Package;


