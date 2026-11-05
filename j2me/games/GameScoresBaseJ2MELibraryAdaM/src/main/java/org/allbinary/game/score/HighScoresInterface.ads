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

limited with org.allbinary.game.score.HighScoresInterface_Package;
package org.allbinary.game.score.HighScoresInterface_Package_References is
   type HighScoresInterface_Access is access all org.allbinary.game.score.HighScoresInterface_Package.HighScoresInterface'Class;
   type HighScoresInterface_Access_Array is array (Natural range <>) of HighScoresInterface_Access;
   type HighScoresInterface_Access_Array_Access is access all HighScoresInterface_Access_Array;
   type HighScoresInterface_Access_Array_Access_Array is array (Natural range <>) of HighScoresInterface_Access_Array_Access;
   type HighScoresInterface_Access_Array_Access_Array_Access is access all HighScoresInterface_Access_Array_Access_Array;
end org.allbinary.game.score.HighScoresInterface_Package_References;

with org.allbinary.game.score.HighScoresInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.game.score.HighScore_Package;
with org.allbinary.game.score.HighScore_Package_References;

package org.allbinary.game.score.HighScoresInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype HighScore_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access;
   use type HighScore_Access;
   subtype HighScore_Access_Array is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array;
   use type HighScore_Access_Array;
   subtype HighScore_Access_Array_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access;
   use type HighScore_Access_Array_Access;
   subtype HighScore_Access_Array_Access_Array is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access_Array;
   use type HighScore_Access_Array_Access_Array;
   subtype HighScore_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access_Array_Access;
   use type HighScore_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type HighScoresInterface is interface;
   subtype HighScoresInterface_Access is org.allbinary.game.score.HighScoresInterface_Package_References.HighScoresInterface_Access;
   function "=" (Left, Right : HighScoresInterface_Access) return Boolean renames org.allbinary.game.score.HighScoresInterface_Package_References."=";
   subtype HighScoresInterface_Access_Array is org.allbinary.game.score.HighScoresInterface_Package_References.HighScoresInterface_Access_Array;
   function "=" (Left, Right : HighScoresInterface_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresInterface_Package_References."=";
   subtype HighScoresInterface_Access_Array_Access is org.allbinary.game.score.HighScoresInterface_Package_References.HighScoresInterface_Access_Array_Access;
   function "=" (Left, Right : HighScoresInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresInterface_Package_References."=";
   subtype HighScoresInterface_Access_Array_Access_Array is org.allbinary.game.score.HighScoresInterface_Package_References.HighScoresInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresInterface_Package_References."=";
   subtype HighScoresInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresInterface_Package_References.HighScoresInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresInterface_Package_References."=";
   function Java_Object_Access_From_HighScoresInterface (Value : HighScoresInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getList (This : in out HighScoresInterface) return BasicArrayList_Access is abstract;
   procedure addHighScore (This : in out HighScoresInterface; newHighScore_Param : access HighScore_Package.HighScore'Class) is abstract;
   function getTotal (This : in out HighScoresInterface) return Integer is abstract;
   function isBestScore (This : in out HighScoresInterface; newHighScore_Param : access HighScore_Package.HighScore'Class) return Boolean is abstract;
   procedure isBestScore (This : in out HighScoresInterface; newHighScore_Param : access HighScore_Package.HighScore'Class) is abstract;

end org.allbinary.game.score.HighScoresInterface_Package;


