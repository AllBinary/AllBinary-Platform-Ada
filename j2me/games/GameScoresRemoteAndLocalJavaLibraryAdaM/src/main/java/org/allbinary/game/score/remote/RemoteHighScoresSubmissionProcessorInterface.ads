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

limited with org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package;
package org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References is
   type RemoteHighScoresSubmissionProcessorInterface_Access is access all org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package.RemoteHighScoresSubmissionProcessorInterface'Class;
   type RemoteHighScoresSubmissionProcessorInterface_Access_Array is array (Natural range <>) of RemoteHighScoresSubmissionProcessorInterface_Access;
   type RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access is access all RemoteHighScoresSubmissionProcessorInterface_Access_Array;
   type RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access_Array is array (Natural range <>) of RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access;
   type RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access_Array_Access is access all RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access_Array;
end org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References;

with org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.score.HighScore_Package;
with org.allbinary.game.score.HighScore_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.game.score.remote.RemoteHighScores_Package;
with org.allbinary.game.score.remote.RemoteHighScores_Package_References;

package org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package is

   package HighScore_Package renames Standard.org.allbinary.game.score.HighScore_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
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
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype RemoteHighScores_Access is org.allbinary.game.score.remote.RemoteHighScores_Package_References.RemoteHighScores_Access;
   use type RemoteHighScores_Access;
   subtype RemoteHighScores_Access_Array is org.allbinary.game.score.remote.RemoteHighScores_Package_References.RemoteHighScores_Access_Array;
   use type RemoteHighScores_Access_Array;
   subtype RemoteHighScores_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScores_Package_References.RemoteHighScores_Access_Array_Access;
   use type RemoteHighScores_Access_Array_Access;
   subtype RemoteHighScores_Access_Array_Access_Array is org.allbinary.game.score.remote.RemoteHighScores_Package_References.RemoteHighScores_Access_Array_Access_Array;
   use type RemoteHighScores_Access_Array_Access_Array;
   subtype RemoteHighScores_Access_Array_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScores_Package_References.RemoteHighScores_Access_Array_Access_Array_Access;
   use type RemoteHighScores_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type RemoteHighScoresSubmissionProcessorInterface is interface;
   subtype RemoteHighScoresSubmissionProcessorInterface_Access is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References.RemoteHighScoresSubmissionProcessorInterface_Access;
   function "=" (Left, Right : RemoteHighScoresSubmissionProcessorInterface_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References."=";
   subtype RemoteHighScoresSubmissionProcessorInterface_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References.RemoteHighScoresSubmissionProcessorInterface_Access_Array;
   function "=" (Left, Right : RemoteHighScoresSubmissionProcessorInterface_Access_Array) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References."=";
   subtype RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References.RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access;
   function "=" (Left, Right : RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References."=";
   subtype RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References.RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References."=";
   subtype RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References.RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References."=";
   function Java_Object_Access_From_RemoteHighScoresSubmissionProcessorInterface (Value : RemoteHighScoresSubmissionProcessorInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure process (This : in out RemoteHighScoresSubmissionProcessorInterface; remoteHighScores_Param : access RemoteHighScores_Package.RemoteHighScores'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; highScore_Param : access HighScore_Package.HighScore'Class) is abstract;

end org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package;


