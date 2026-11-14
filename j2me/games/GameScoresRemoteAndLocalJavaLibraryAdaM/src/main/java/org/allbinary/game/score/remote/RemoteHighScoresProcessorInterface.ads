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
limited with org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package;
package org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References is
   type RemoteHighScoresProcessorInterface_Access is access all org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package.RemoteHighScoresProcessorInterface'Class;
   type RemoteHighScoresProcessorInterface_Access_Array is array (Natural range <>) of RemoteHighScoresProcessorInterface_Access;
   type RemoteHighScoresProcessorInterface_Access_Array_Access is access all RemoteHighScoresProcessorInterface_Access_Array;
   type RemoteHighScoresProcessorInterface_Access_Array_Access_Array is array (Natural range <>) of RemoteHighScoresProcessorInterface_Access_Array_Access;
   type RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Access is access all RemoteHighScoresProcessorInterface_Access_Array_Access_Array;
   type RemoteHighScoresProcessorInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RemoteHighScoresProcessorInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : RemoteHighScoresProcessorInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RemoteHighScoresProcessorInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RemoteHighScoresProcessorInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RemoteHighScoresProcessorInterface_Access_Array_Access is (if Value /= null and then Value.all in RemoteHighScoresProcessorInterface_Access_Array_Object'Class then RemoteHighScoresProcessorInterface_Access_Array_Object'Class (Value.all).Value else null);
   type RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RemoteHighScoresProcessorInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Object'Class then RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References;

with org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References;
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
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.game.score.remote.RemoteHighScores_Package;
with org.allbinary.game.score.remote.RemoteHighScores_Package_References;

package org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
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


   type RemoteHighScoresProcessorInterface is interface;
   subtype RemoteHighScoresProcessorInterface_Access is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access;
   function "=" (Left, Right : RemoteHighScoresProcessorInterface_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References."=";
   subtype RemoteHighScoresProcessorInterface_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access_Array;
   function "=" (Left, Right : RemoteHighScoresProcessorInterface_Access_Array) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References."=";
   subtype RemoteHighScoresProcessorInterface_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access_Array_Access;
   function "=" (Left, Right : RemoteHighScoresProcessorInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References."=";
   function Java_Box (Value : RemoteHighScoresProcessorInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.Java_Box;
   function Java_Unbox_RemoteHighScoresProcessorInterface_Access_Array (Value : access Java_Object'Class) return RemoteHighScoresProcessorInterface_Access_Array_Access renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.Java_Unbox_RemoteHighScoresProcessorInterface_Access_Array;
   subtype RemoteHighScoresProcessorInterface_Access_Array_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : RemoteHighScoresProcessorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References."=";
   subtype RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References."=";
   function Java_Box (Value : RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.Java_Box;
   function Java_Unbox_RemoteHighScoresProcessorInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Access renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.Java_Unbox_RemoteHighScoresProcessorInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_RemoteHighScoresProcessorInterface (Value : RemoteHighScoresProcessorInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure process (This : in out RemoteHighScoresProcessorInterface; remoteHighScores_Param : access RemoteHighScores_Package.RemoteHighScores'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class) is abstract;

end org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package;


