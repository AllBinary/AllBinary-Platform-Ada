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

limited with org.allbinary.game.score.Scoreable_Package;
package org.allbinary.game.score.Scoreable_Package_References is
   type Scoreable_Access is access all org.allbinary.game.score.Scoreable_Package.Scoreable'Class;
   type Scoreable_Access_Array is array (Natural range <>) of Scoreable_Access;
   type Scoreable_Access_Array_Access is access all Scoreable_Access_Array;
   type Scoreable_Access_Array_Access_Array is array (Natural range <>) of Scoreable_Access_Array_Access;
   type Scoreable_Access_Array_Access_Array_Access is access all Scoreable_Access_Array_Access_Array;
end org.allbinary.game.score.Scoreable_Package_References;

with org.allbinary.game.score.Scoreable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.score.ScoreableInterface_Package; use org.allbinary.game.score.ScoreableInterface_Package;

package org.allbinary.game.score.Scoreable_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Scoreable_Access is org.allbinary.game.score.Scoreable_Package_References.Scoreable_Access;
   function "=" (Left, Right : Scoreable_Access) return Boolean renames org.allbinary.game.score.Scoreable_Package_References."=";
   subtype Scoreable_Access_Array is org.allbinary.game.score.Scoreable_Package_References.Scoreable_Access_Array;
   function "=" (Left, Right : Scoreable_Access_Array) return Boolean renames org.allbinary.game.score.Scoreable_Package_References."=";
   subtype Scoreable_Access_Array_Access is org.allbinary.game.score.Scoreable_Package_References.Scoreable_Access_Array_Access;
   function "=" (Left, Right : Scoreable_Access_Array_Access) return Boolean renames org.allbinary.game.score.Scoreable_Package_References."=";
   subtype Scoreable_Access_Array_Access_Array is org.allbinary.game.score.Scoreable_Package_References.Scoreable_Access_Array_Access_Array;
   function "=" (Left, Right : Scoreable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.Scoreable_Package_References."=";
   subtype Scoreable_Access_Array_Access_Array_Access is org.allbinary.game.score.Scoreable_Package_References.Scoreable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Scoreable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.Scoreable_Package_References."=";

   type Scoreable is new Java_Object and ScoreableInterface with record
      points : Integer;
   end record;
   ID : Integer;

   procedure Initialize (This : in out Scoreable'Class; points : Integer);
   function Create (points : Integer) return Scoreable_Access;
   procedure addPoints (This : in out Scoreable; points : Integer);
   procedure removePoints (This : in out Scoreable; points : Integer);
   procedure setPoints (This : in out Scoreable; points : Integer);
   function getPoints (This : in out Scoreable) return Integer;

end org.allbinary.game.score.Scoreable_Package;


