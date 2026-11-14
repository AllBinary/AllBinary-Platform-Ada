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
limited with org.allbinary.game.score.HighScore_Package;
package org.allbinary.game.score.HighScore_Package_References is
   type HighScore_Access is access all org.allbinary.game.score.HighScore_Package.HighScore'Class;
   type HighScore_Access_Array is array (Natural range <>) of HighScore_Access;
   type HighScore_Access_Array_Access is access all HighScore_Access_Array;
   type HighScore_Access_Array_Access_Array is array (Natural range <>) of HighScore_Access_Array_Access;
   type HighScore_Access_Array_Access_Array_Access is access all HighScore_Access_Array_Access_Array;
   type HighScore_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScore_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScore_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScore_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScore_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScore_Access_Array_Access is (if Value /= null and then Value.all in HighScore_Access_Array_Object'Class then HighScore_Access_Array_Object'Class (Value.all).Value else null);
   type HighScore_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScore_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScore_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScore_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScore_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScore_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HighScore_Access_Array_Access_Array_Object'Class then HighScore_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.HighScore_Package_References;

with org.allbinary.game.score.HighScore_Package_References;
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

package org.allbinary.game.score.HighScore_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
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


   subtype HighScore_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access;
   function "=" (Left, Right : HighScore_Access) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
   subtype HighScore_Access_Array is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array;
   function "=" (Left, Right : HighScore_Access_Array) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
   subtype HighScore_Access_Array_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access;
   function "=" (Left, Right : HighScore_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
   function Java_Box (Value : HighScore_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScore_Package_References.Java_Box;
   function Java_Unbox_HighScore_Access_Array (Value : access Java_Object'Class) return HighScore_Access_Array_Access renames org.allbinary.game.score.HighScore_Package_References.Java_Unbox_HighScore_Access_Array;
   subtype HighScore_Access_Array_Access_Array is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access_Array;
   function "=" (Left, Right : HighScore_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
   subtype HighScore_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScore_Package_References.HighScore_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScore_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScore_Package_References."=";
   function Java_Box (Value : HighScore_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScore_Package_References.Java_Box;
   function Java_Unbox_HighScore_Access_Array_Access_Array (Value : access Java_Object'Class) return HighScore_Access_Array_Access_Array_Access renames org.allbinary.game.score.HighScore_Package_References.Java_Unbox_HighScore_Access_Array_Access_Array;

   type HighScore is new Java_Object with record
      id : Integer;
      name : Unbounded_String;
      gameInfo : GameInfo_Access;
      score : Long_Long_Integer;
      scoreString : Unbounded_String;
   end record;

   procedure Initialize (This : in out HighScore'Class; id : Integer; name : Unbounded_String; gameInfo_Param : access GameInfo_Package.GameInfo'Class; score : Long_Long_Integer);
   function Create (id : Integer; name : Unbounded_String; gameInfo_Param : access GameInfo_Package.GameInfo'Class; score : Long_Long_Integer) return HighScore_Access;
   function getId (This : in out HighScore) return Integer;
   function getName (This : in out HighScore) return Unbounded_String;
   function getScore (This : in out HighScore) return Long_Long_Integer;
   function getAsBytes (This : in out HighScore) return Short_Short_Integer_Array_Access;
   function getGameInfo (This : in out HighScore) return GameInfo_Access;
   function getScoreString (This : in out HighScore) return Unbounded_String;
   procedure setName (This : in out HighScore; name : Unbounded_String);
   function toString (This : in out HighScore) return Unbounded_String;

end org.allbinary.game.score.HighScore_Package;


