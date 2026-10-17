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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;

package org.allbinary.game.score.NullHighScoresSingletonFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type NullHighScoresSingletonFactory is tagged;
   type NullHighScoresSingletonFactory_Access is access all NullHighScoresSingletonFactory'Class;
   type NullHighScoresSingletonFactory_Access_Array is array (Natural range <>) of NullHighScoresSingletonFactory_Access;
   type NullHighScoresSingletonFactory_Access_Array_Access is access all NullHighScoresSingletonFactory_Access_Array;

   type NullHighScoresSingletonFactory is new Java_Object with null record;
   SINGLETON : HighScores_Access;

   procedure Initialize (This : in out NullHighScoresSingletonFactory'Class);
   function Create return NullHighScoresSingletonFactory_Access;
   function getInstance return HighScores_Access;

end org.allbinary.game.score.NullHighScoresSingletonFactory_Package;


