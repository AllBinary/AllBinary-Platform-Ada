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

limited with org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
package org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References is
   type HighScoresHelperBaseInterface_Access is access all org.allbinary.game.score.HighScoresHelperBaseInterface_Package.HighScoresHelperBaseInterface'Class;
   type HighScoresHelperBaseInterface_Access_Array is array (Natural range <>) of HighScoresHelperBaseInterface_Access;
   type HighScoresHelperBaseInterface_Access_Array_Access is access all HighScoresHelperBaseInterface_Access_Array;
   type HighScoresHelperBaseInterface_Access_Array_Access_Array is array (Natural range <>) of HighScoresHelperBaseInterface_Access_Array_Access;
   type HighScoresHelperBaseInterface_Access_Array_Access_Array_Access is access all HighScoresHelperBaseInterface_Access_Array_Access_Array;
end org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References;

with org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.score.HighScoresResultsListener_Package; use org.allbinary.game.score.HighScoresResultsListener_Package;
limited with org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScores_Package_References;

package org.allbinary.game.score.HighScoresHelperBaseInterface_Package is

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


   type HighScoresHelperBaseInterface is interface and HighScoresResultsListener;
   subtype HighScoresHelperBaseInterface_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access_Array is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access_Array_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access_Array_Access_Array is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   function Java_Object_Access_From_HighScoresHelperBaseInterface (Value : HighScoresHelperBaseInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setSelectedHighScores (This : in out HighScoresHelperBaseInterface; selectedHighScores_Param : access HighScores_Package.HighScores'Class) is abstract;
   function getHighScoresArray (This : in out HighScoresHelperBaseInterface) return HighScores_Access_Array_Access is abstract;
   function getSelectedHighScores (This : in out HighScoresHelperBaseInterface) return HighScores_Access is abstract;

end org.allbinary.game.score.HighScoresHelperBaseInterface_Package;


