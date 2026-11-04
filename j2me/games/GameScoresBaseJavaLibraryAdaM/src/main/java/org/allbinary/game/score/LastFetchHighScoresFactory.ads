-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

limited with org.allbinary.game.score.LastFetchHighScoresFactory_Package;
package org.allbinary.game.score.LastFetchHighScoresFactory_Package_References is
   type LastFetchHighScoresFactory_Access is access all org.allbinary.game.score.LastFetchHighScoresFactory_Package.LastFetchHighScoresFactory'Class;
   type LastFetchHighScoresFactory_Access_Array is array (Natural range <>) of LastFetchHighScoresFactory_Access;
   type LastFetchHighScoresFactory_Access_Array_Access is access all LastFetchHighScoresFactory_Access_Array;
   type LastFetchHighScoresFactory_Access_Array_Access_Array is array (Natural range <>) of LastFetchHighScoresFactory_Access_Array_Access;
   type LastFetchHighScoresFactory_Access_Array_Access_Array_Access is access all LastFetchHighScoresFactory_Access_Array_Access_Array;
end org.allbinary.game.score.LastFetchHighScoresFactory_Package_References;

with org.allbinary.game.score.LastFetchHighScoresFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScores_Package_References;

package org.allbinary.game.score.LastFetchHighScoresFactory_Package is

   package Reference_Types is
   subtype HighScores_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access;
   use type HighScores_Access;
   subtype HighScores_Access_Array is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array;
   use type HighScores_Access_Array;
   subtype HighScores_Access_Array_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access;
   use type HighScores_Access_Array_Access;
   subtype HighScores_Access_Array_Access_Array is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access_Array;
   use type HighScores_Access_Array_Access_Array;
   subtype HighScores_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access_Array_Access;
   use type HighScores_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LastFetchHighScoresFactory_Access is org.allbinary.game.score.LastFetchHighScoresFactory_Package_References.LastFetchHighScoresFactory_Access;
   function "=" (Left, Right : LastFetchHighScoresFactory_Access) return Boolean renames org.allbinary.game.score.LastFetchHighScoresFactory_Package_References."=";
   subtype LastFetchHighScoresFactory_Access_Array is org.allbinary.game.score.LastFetchHighScoresFactory_Package_References.LastFetchHighScoresFactory_Access_Array;
   function "=" (Left, Right : LastFetchHighScoresFactory_Access_Array) return Boolean renames org.allbinary.game.score.LastFetchHighScoresFactory_Package_References."=";
   subtype LastFetchHighScoresFactory_Access_Array_Access is org.allbinary.game.score.LastFetchHighScoresFactory_Package_References.LastFetchHighScoresFactory_Access_Array_Access;
   function "=" (Left, Right : LastFetchHighScoresFactory_Access_Array_Access) return Boolean renames org.allbinary.game.score.LastFetchHighScoresFactory_Package_References."=";
   subtype LastFetchHighScoresFactory_Access_Array_Access_Array is org.allbinary.game.score.LastFetchHighScoresFactory_Package_References.LastFetchHighScoresFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LastFetchHighScoresFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.LastFetchHighScoresFactory_Package_References."=";
   subtype LastFetchHighScoresFactory_Access_Array_Access_Array_Access is org.allbinary.game.score.LastFetchHighScoresFactory_Package_References.LastFetchHighScoresFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LastFetchHighScoresFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.LastFetchHighScoresFactory_Package_References."=";

   type LastFetchHighScoresFactory is new Java_Object with record
      highScoresArray : HighScores_Access_Array_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out LastFetchHighScoresFactory'Class);
   function Create return LastFetchHighScoresFactory_Access;
   function getInstance return LastFetchHighScoresFactory_Access;

end org.allbinary.game.score.LastFetchHighScoresFactory_Package;


