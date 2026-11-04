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

limited with org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package;
package org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package_References is
   type TestRemoteHighScoresNotFinished_Access is access all org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package.TestRemoteHighScoresNotFinished'Class;
   type TestRemoteHighScoresNotFinished_Access_Array is array (Natural range <>) of TestRemoteHighScoresNotFinished_Access;
   type TestRemoteHighScoresNotFinished_Access_Array_Access is access all TestRemoteHighScoresNotFinished_Access_Array;
   type TestRemoteHighScoresNotFinished_Access_Array_Access_Array is array (Natural range <>) of TestRemoteHighScoresNotFinished_Access_Array_Access;
   type TestRemoteHighScoresNotFinished_Access_Array_Access_Array_Access is access all TestRemoteHighScoresNotFinished_Access_Array_Access_Array;
end org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package_References;

with org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TestRemoteHighScoresNotFinished_Access is org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package_References.TestRemoteHighScoresNotFinished_Access;
   function "=" (Left, Right : TestRemoteHighScoresNotFinished_Access) return Boolean renames org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package_References."=";
   subtype TestRemoteHighScoresNotFinished_Access_Array is org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package_References.TestRemoteHighScoresNotFinished_Access_Array;
   function "=" (Left, Right : TestRemoteHighScoresNotFinished_Access_Array) return Boolean renames org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package_References."=";
   subtype TestRemoteHighScoresNotFinished_Access_Array_Access is org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package_References.TestRemoteHighScoresNotFinished_Access_Array_Access;
   function "=" (Left, Right : TestRemoteHighScoresNotFinished_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package_References."=";
   subtype TestRemoteHighScoresNotFinished_Access_Array_Access_Array is org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package_References.TestRemoteHighScoresNotFinished_Access_Array_Access_Array;
   function "=" (Left, Right : TestRemoteHighScoresNotFinished_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package_References."=";
   subtype TestRemoteHighScoresNotFinished_Access_Array_Access_Array_Access is org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package_References.TestRemoteHighScoresNotFinished_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TestRemoteHighScoresNotFinished_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package_References."=";

   type TestRemoteHighScoresNotFinished is new Java_Object with null record;
   PATH : Unbounded_String;

   procedure Initialize (This : in out TestRemoteHighScoresNotFinished'Class);
   function Create return TestRemoteHighScoresNotFinished_Access;
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package;


