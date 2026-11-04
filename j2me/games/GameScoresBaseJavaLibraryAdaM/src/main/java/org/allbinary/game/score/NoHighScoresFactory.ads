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

limited with org.allbinary.game.score.NoHighScoresFactory_Package;
package org.allbinary.game.score.NoHighScoresFactory_Package_References is
   type NoHighScoresFactory_Access is access all org.allbinary.game.score.NoHighScoresFactory_Package.NoHighScoresFactory'Class;
   type NoHighScoresFactory_Access_Array is array (Natural range <>) of NoHighScoresFactory_Access;
   type NoHighScoresFactory_Access_Array_Access is access all NoHighScoresFactory_Access_Array;
   type NoHighScoresFactory_Access_Array_Access_Array is array (Natural range <>) of NoHighScoresFactory_Access_Array_Access;
   type NoHighScoresFactory_Access_Array_Access_Array_Access is access all NoHighScoresFactory_Access_Array_Access_Array;
end org.allbinary.game.score.NoHighScoresFactory_Package_References;

with org.allbinary.game.score.NoHighScoresFactory_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.game.score.HighScoresBase_Package; use org.allbinary.game.score.HighScoresBase_Package;
limited with org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScores_Package_References;
limited with org.allbinary.game.score.HighScoresResultsListener_Package;
with org.allbinary.game.score.HighScoresResultsListener_Package_References;
limited with org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References;

package org.allbinary.game.score.NoHighScoresFactory_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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
   subtype HighScoresResultsListener_Access is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access;
   use type HighScoresResultsListener_Access;
   subtype HighScoresResultsListener_Access_Array is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array;
   use type HighScoresResultsListener_Access_Array;
   subtype HighScoresResultsListener_Access_Array_Access is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array_Access;
   use type HighScoresResultsListener_Access_Array_Access;
   subtype HighScoresResultsListener_Access_Array_Access_Array is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array_Access_Array;
   use type HighScoresResultsListener_Access_Array_Access_Array;
   subtype HighScoresResultsListener_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array_Access_Array_Access;
   use type HighScoresResultsListener_Access_Array_Access_Array_Access;
   subtype HighScoresHelperBaseInterface_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access;
   use type HighScoresHelperBaseInterface_Access;
   subtype HighScoresHelperBaseInterface_Access_Array is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array;
   use type HighScoresHelperBaseInterface_Access_Array;
   subtype HighScoresHelperBaseInterface_Access_Array_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access;
   use type HighScoresHelperBaseInterface_Access_Array_Access;
   subtype HighScoresHelperBaseInterface_Access_Array_Access_Array is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access_Array;
   use type HighScoresHelperBaseInterface_Access_Array_Access_Array;
   subtype HighScoresHelperBaseInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access_Array_Access;
   use type HighScoresHelperBaseInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NoHighScoresFactory_Access is org.allbinary.game.score.NoHighScoresFactory_Package_References.NoHighScoresFactory_Access;
   function "=" (Left, Right : NoHighScoresFactory_Access) return Boolean renames org.allbinary.game.score.NoHighScoresFactory_Package_References."=";
   subtype NoHighScoresFactory_Access_Array is org.allbinary.game.score.NoHighScoresFactory_Package_References.NoHighScoresFactory_Access_Array;
   function "=" (Left, Right : NoHighScoresFactory_Access_Array) return Boolean renames org.allbinary.game.score.NoHighScoresFactory_Package_References."=";
   subtype NoHighScoresFactory_Access_Array_Access is org.allbinary.game.score.NoHighScoresFactory_Package_References.NoHighScoresFactory_Access_Array_Access;
   function "=" (Left, Right : NoHighScoresFactory_Access_Array_Access) return Boolean renames org.allbinary.game.score.NoHighScoresFactory_Package_References."=";
   subtype NoHighScoresFactory_Access_Array_Access_Array is org.allbinary.game.score.NoHighScoresFactory_Package_References.NoHighScoresFactory_Access_Array_Access_Array;
   function "=" (Left, Right : NoHighScoresFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.NoHighScoresFactory_Package_References."=";
   subtype NoHighScoresFactory_Access_Array_Access_Array_Access is org.allbinary.game.score.NoHighScoresFactory_Package_References.NoHighScoresFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoHighScoresFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.NoHighScoresFactory_Package_References."=";

   type NoHighScoresFactory is new HighScoresBase with record
      logUtil : LogUtil_Access;
      NO_HIGH_SCORES : HighScores_Access_Array_Access;
   end record;
   instance : NoHighScoresFactory_Access;

   procedure Initialize (This : in out NoHighScoresFactory'Class);
   function Create return NoHighScoresFactory_Access;
   function getInstance return NoHighScoresFactory_Access;
   procedure fetchHighScores (This : in out NoHighScoresFactory; gameInfo_Param : access GameInfo_Package.GameInfo'Class; highScoresResultsListener_Param : access HighScoresResultsListener_Package.HighScoresResultsListener'Class);
   function createHighScoresHelper (This : in out NoHighScoresFactory) return HighScoresHelperBaseInterface_Access;

end org.allbinary.game.score.NoHighScoresFactory_Package;


