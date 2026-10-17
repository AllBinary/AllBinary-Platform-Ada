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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
--  with java.io.DataOutputStream_Package; use java.io.DataOutputStream_Package;
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.game.score.HighScore_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type HighScore is tagged;
   type HighScore_Access is access all HighScore'Class;
   type HighScore_Access_Array is array (Natural range <>) of HighScore_Access;
   type HighScore_Access_Array_Access is access all HighScore_Access_Array;

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


