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

with AllBinary_Java;
limited with org.allbinary.game.score.HighScoresResultsListener_Package;
package org.allbinary.game.score.HighScoresResultsListener_Package_References is
   type HighScoresResultsListener_Access is access all org.allbinary.game.score.HighScoresResultsListener_Package.HighScoresResultsListener'Class;
   type HighScoresResultsListener_Access_Array is array (Natural range <>) of HighScoresResultsListener_Access;
   type HighScoresResultsListener_Access_Array_Access is access all HighScoresResultsListener_Access_Array;
   type HighScoresResultsListener_Access_Array_Access_Array is array (Natural range <>) of HighScoresResultsListener_Access_Array_Access;
   type HighScoresResultsListener_Access_Array_Access_Array_Access is access all HighScoresResultsListener_Access_Array_Access_Array;
   type HighScoresResultsListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoresResultsListener_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoresResultsListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoresResultsListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoresResultsListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoresResultsListener_Access_Array_Access is (if Value /= null and then Value.all in HighScoresResultsListener_Access_Array_Object'Class then HighScoresResultsListener_Access_Array_Object'Class (Value.all).Value else null);
   type HighScoresResultsListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoresResultsListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoresResultsListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoresResultsListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoresResultsListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoresResultsListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HighScoresResultsListener_Access_Array_Access_Array_Object'Class then HighScoresResultsListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.HighScoresResultsListener_Package_References;

with org.allbinary.game.score.HighScoresResultsListener_Package_References;
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

package org.allbinary.game.score.HighScoresResultsListener_Package is

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


   type HighScoresResultsListener is interface;
   subtype HighScoresResultsListener_Access is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access;
   function "=" (Left, Right : HighScoresResultsListener_Access) return Boolean renames org.allbinary.game.score.HighScoresResultsListener_Package_References."=";
   subtype HighScoresResultsListener_Access_Array is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array;
   function "=" (Left, Right : HighScoresResultsListener_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresResultsListener_Package_References."=";
   subtype HighScoresResultsListener_Access_Array_Access is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array_Access;
   function "=" (Left, Right : HighScoresResultsListener_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresResultsListener_Package_References."=";
   function Java_Box (Value : HighScoresResultsListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScoresResultsListener_Package_References.Java_Box;
   function Java_Unbox_HighScoresResultsListener_Access_Array (Value : access Java_Object'Class) return HighScoresResultsListener_Access_Array_Access renames org.allbinary.game.score.HighScoresResultsListener_Package_References.Java_Unbox_HighScoresResultsListener_Access_Array;
   subtype HighScoresResultsListener_Access_Array_Access_Array is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresResultsListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresResultsListener_Package_References."=";
   subtype HighScoresResultsListener_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresResultsListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresResultsListener_Package_References."=";
   function Java_Box (Value : HighScoresResultsListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScoresResultsListener_Package_References.Java_Box;
   function Java_Unbox_HighScoresResultsListener_Access_Array_Access_Array (Value : access Java_Object'Class) return HighScoresResultsListener_Access_Array_Access_Array_Access renames org.allbinary.game.score.HighScoresResultsListener_Package_References.Java_Unbox_HighScoresResultsListener_Access_Array_Access_Array;
   function Java_Object_Access_From_HighScoresResultsListener (Value : HighScoresResultsListener_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setHighScoresArray (This : in out HighScoresResultsListener; highScoresArrayP : HighScores_Access_Array_Access) is abstract;

end org.allbinary.game.score.HighScoresResultsListener_Package;


