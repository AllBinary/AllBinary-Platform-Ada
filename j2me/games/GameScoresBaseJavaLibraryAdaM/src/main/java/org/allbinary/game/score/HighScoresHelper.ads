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
limited with org.allbinary.game.score.HighScoresHelper_Package;
package org.allbinary.game.score.HighScoresHelper_Package_References is
   type HighScoresHelper_Access is access all org.allbinary.game.score.HighScoresHelper_Package.HighScoresHelper'Class;
   type HighScoresHelper_Access_Array is array (Natural range <>) of HighScoresHelper_Access;
   type HighScoresHelper_Access_Array_Access is access all HighScoresHelper_Access_Array;
   type HighScoresHelper_Access_Array_Access_Array is array (Natural range <>) of HighScoresHelper_Access_Array_Access;
   type HighScoresHelper_Access_Array_Access_Array_Access is access all HighScoresHelper_Access_Array_Access_Array;
   type HighScoresHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoresHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoresHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoresHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoresHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoresHelper_Access_Array_Access is (if Value /= null and then Value.all in HighScoresHelper_Access_Array_Object'Class then HighScoresHelper_Access_Array_Object'Class (Value.all).Value else null);
   type HighScoresHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoresHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoresHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoresHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoresHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoresHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HighScoresHelper_Access_Array_Access_Array_Object'Class then HighScoresHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.HighScoresHelper_Package_References;

with org.allbinary.game.score.HighScoresHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
with org.allbinary.game.score.HighScoresHelperBase_Package; use org.allbinary.game.score.HighScoresHelperBase_Package;
limited with org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScores_Package_References;

package org.allbinary.game.score.HighScoresHelper_Package is

   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   package Reference_Types is
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   use type CircularIndexUtil_Access;
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   use type CircularIndexUtil_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access;
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   use type CircularIndexUtil_Access_Array_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access_Array_Access;
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


   subtype HighScoresHelper_Access is org.allbinary.game.score.HighScoresHelper_Package_References.HighScoresHelper_Access;
   function "=" (Left, Right : HighScoresHelper_Access) return Boolean renames org.allbinary.game.score.HighScoresHelper_Package_References."=";
   subtype HighScoresHelper_Access_Array is org.allbinary.game.score.HighScoresHelper_Package_References.HighScoresHelper_Access_Array;
   function "=" (Left, Right : HighScoresHelper_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresHelper_Package_References."=";
   subtype HighScoresHelper_Access_Array_Access is org.allbinary.game.score.HighScoresHelper_Package_References.HighScoresHelper_Access_Array_Access;
   function "=" (Left, Right : HighScoresHelper_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresHelper_Package_References."=";
   function Java_Box (Value : HighScoresHelper_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScoresHelper_Package_References.Java_Box;
   function Java_Unbox_HighScoresHelper_Access_Array (Value : access Java_Object'Class) return HighScoresHelper_Access_Array_Access renames org.allbinary.game.score.HighScoresHelper_Package_References.Java_Unbox_HighScoresHelper_Access_Array;
   subtype HighScoresHelper_Access_Array_Access_Array is org.allbinary.game.score.HighScoresHelper_Package_References.HighScoresHelper_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresHelper_Package_References."=";
   subtype HighScoresHelper_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresHelper_Package_References.HighScoresHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresHelper_Package_References."=";
   function Java_Box (Value : HighScoresHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScoresHelper_Package_References.Java_Box;
   function Java_Unbox_HighScoresHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return HighScoresHelper_Access_Array_Access_Array_Access renames org.allbinary.game.score.HighScoresHelper_Package_References.Java_Unbox_HighScoresHelper_Access_Array_Access_Array;

   type HighScoresHelper is new HighScoresHelperBase with record
      circularIndexUtil : CircularIndexUtil_Access;
      lastIndex : Integer;
   end record;

   procedure Initialize (This : in out HighScoresHelper'Class);
   function Create return HighScoresHelper_Access;
   procedure setHighScoresArray (This : in out HighScoresHelper; highScoresArrayP : HighScores_Access_Array_Access);
   function getNextHighScores (This : in out HighScoresHelper) return HighScores_Access;
   function isAnyHighScores (This : in out HighScoresHelper) return Boolean;

end org.allbinary.game.score.HighScoresHelper_Package;


