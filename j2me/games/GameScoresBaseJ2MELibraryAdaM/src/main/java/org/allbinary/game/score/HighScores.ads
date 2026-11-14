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

with AllBinary_Java;
limited with org.allbinary.game.score.HighScores_Package;
package org.allbinary.game.score.HighScores_Package_References is
   type HighScores_Access is access all org.allbinary.game.score.HighScores_Package.HighScores'Class;
   type HighScores_Access_Array is array (Natural range <>) of HighScores_Access;
   type HighScores_Access_Array_Access is access all HighScores_Access_Array;
   type HighScores_Access_Array_Access_Array is array (Natural range <>) of HighScores_Access_Array_Access;
   type HighScores_Access_Array_Access_Array_Access is access all HighScores_Access_Array_Access_Array;
   type HighScores_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScores_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScores_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScores_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScores_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScores_Access_Array_Access is (if Value /= null and then Value.all in HighScores_Access_Array_Object'Class then HighScores_Access_Array_Object'Class (Value.all).Value else null);
   type HighScores_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScores_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScores_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScores_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScores_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScores_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HighScores_Access_Array_Access_Array_Object'Class then HighScores_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.HighScores_Package_References;

with org.allbinary.game.score.HighScores_Package_References;
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
with org.allbinary.game.score.HighScoresInterface_Package; use org.allbinary.game.score.HighScoresInterface_Package;
limited with org.allbinary.game.score.HighScore_Package;
with org.allbinary.game.score.HighScore_Package_References;

package org.allbinary.game.score.HighScores_Package is

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


   subtype HighScores_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access;
   function "=" (Left, Right : HighScores_Access) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array;
   function "=" (Left, Right : HighScores_Access_Array) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access;
   function "=" (Left, Right : HighScores_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   function Java_Box (Value : HighScores_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScores_Package_References.Java_Box;
   function Java_Unbox_HighScores_Access_Array (Value : access Java_Object'Class) return HighScores_Access_Array_Access renames org.allbinary.game.score.HighScores_Package_References.Java_Unbox_HighScores_Access_Array;
   subtype HighScores_Access_Array_Access_Array is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access_Array;
   function "=" (Left, Right : HighScores_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScores_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   function Java_Box (Value : HighScores_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScores_Package_References.Java_Box;
   function Java_Unbox_HighScores_Access_Array_Access_Array (Value : access Java_Object'Class) return HighScores_Access_Array_Access_Array_Access renames org.allbinary.game.score.HighScores_Package_References.Java_Unbox_HighScores_Access_Array_Access_Array;

   type HighScores is new Java_Object and HighScoresInterface with record
      orderedHighScoresList : BasicArrayList_Access;
      name : Unbounded_String;
      heading : Unbounded_String;
      columnOneHeading : Unbounded_String;
      columnTwoHeading : Unbounded_String;
   end record;

   procedure Initialize (This : in out HighScores'Class; name : Unbounded_String; heading : Unbounded_String; columnTwoHeading : Unbounded_String);
   function Create (name : Unbounded_String; heading : Unbounded_String; columnTwoHeading : Unbounded_String) return HighScores_Access;
   procedure setList (This : in out HighScores; orderedHighScoresList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getList (This : in out HighScores) return BasicArrayList_Access;
   function getName (This : in out HighScores) return Unbounded_String;
   function getTotal (This : in out HighScores) return Integer;
   procedure addHighScore (This : in out HighScores; newHighScore_Param : access HighScore_Package.HighScore'Class);
   function getHeading (This : in out HighScores) return Unbounded_String;
   function getColumnOneHeading (This : in out HighScores) return Unbounded_String;
   function getColumnTwoHeading (This : in out HighScores) return Unbounded_String;
   function isBestScore (This : in out HighScores; newHighScore_Param : access HighScore_Package.HighScore'Class) return Boolean;
   procedure isBestScore (This : in out HighScores; newHighScore_Param : access HighScore_Package.HighScore'Class);
   function toString (This : in out HighScores) return Unbounded_String;

end org.allbinary.game.score.HighScores_Package;


