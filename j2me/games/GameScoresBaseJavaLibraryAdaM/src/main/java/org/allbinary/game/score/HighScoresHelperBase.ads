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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package; use org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;

package org.allbinary.game.score.HighScoresHelperBase_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type HighScoresHelperBase is tagged;
   type HighScoresHelperBase_Access is access all HighScoresHelperBase'Class;
   type HighScoresHelperBase_Access_Array is array (Natural range <>) of HighScoresHelperBase_Access;
   type HighScoresHelperBase_Access_Array_Access is access all HighScoresHelperBase_Access_Array;
   type HighScoresHelperBase_Access_Array_Access_Array is array (Natural range <>) of HighScoresHelperBase_Access_Array_Access;
   type HighScoresHelperBase_Access_Array_Access_Array_Access is access all HighScoresHelperBase_Access_Array_Access_Array;

   type HighScoresHelperBase is new Java_Object and HighScoresHelperBaseInterface with record
      logUtil : LogUtil_Access;
      highScoresArrayP : HighScores_Access_Array_Access;
   end record;

   procedure Initialize (This : in out HighScoresHelperBase'Class);
   function Create return HighScoresHelperBase_Access;
   procedure setHighScoresArray (This : in out HighScoresHelperBase; highScoresArrayP : HighScores_Access_Array_Access);
   function getNextHighScores (This : in out HighScoresHelperBase) return HighScores_Access;
   function isAnyHighScores (This : in out HighScoresHelperBase) return Boolean;
   procedure setSelectedHighScores (This : in out HighScoresHelperBase; selectedHighScores_Param : access HighScores_Package.HighScores'Class);
   function getSelectedHighScores (This : in out HighScoresHelperBase) return HighScores_Access;
   function getHighScoresArray (This : in out HighScoresHelperBase) return HighScores_Access_Array_Access;
   procedure selectHighScores (This : in out HighScoresHelperBase);

end org.allbinary.game.score.HighScoresHelperBase_Package;


