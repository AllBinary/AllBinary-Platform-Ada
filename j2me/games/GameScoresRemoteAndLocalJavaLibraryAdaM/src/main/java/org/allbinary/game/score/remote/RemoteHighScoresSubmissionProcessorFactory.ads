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

limited with org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package;
package org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package_References is
   type RemoteHighScoresSubmissionProcessorFactory_Access is access all org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package.RemoteHighScoresSubmissionProcessorFactory'Class;
   type RemoteHighScoresSubmissionProcessorFactory_Access_Array is array (Natural range <>) of RemoteHighScoresSubmissionProcessorFactory_Access;
   type RemoteHighScoresSubmissionProcessorFactory_Access_Array_Access is access all RemoteHighScoresSubmissionProcessorFactory_Access_Array;
   type RemoteHighScoresSubmissionProcessorFactory_Access_Array_Access_Array is array (Natural range <>) of RemoteHighScoresSubmissionProcessorFactory_Access_Array_Access;
   type RemoteHighScoresSubmissionProcessorFactory_Access_Array_Access_Array_Access is access all RemoteHighScoresSubmissionProcessorFactory_Access_Array_Access_Array;
end org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package_References;

with org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package;
with org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References;

package org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package is

   package Reference_Types is
   subtype RemoteHighScoresSubmissionProcessorInterface_Access is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References.RemoteHighScoresSubmissionProcessorInterface_Access;
   use type RemoteHighScoresSubmissionProcessorInterface_Access;
   subtype RemoteHighScoresSubmissionProcessorInterface_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References.RemoteHighScoresSubmissionProcessorInterface_Access_Array;
   use type RemoteHighScoresSubmissionProcessorInterface_Access_Array;
   subtype RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References.RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access;
   use type RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access;
   subtype RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References.RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access_Array;
   use type RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access_Array;
   subtype RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References.RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access_Array_Access;
   use type RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RemoteHighScoresSubmissionProcessorFactory_Access is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package_References.RemoteHighScoresSubmissionProcessorFactory_Access;
   function "=" (Left, Right : RemoteHighScoresSubmissionProcessorFactory_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package_References."=";
   subtype RemoteHighScoresSubmissionProcessorFactory_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package_References.RemoteHighScoresSubmissionProcessorFactory_Access_Array;
   function "=" (Left, Right : RemoteHighScoresSubmissionProcessorFactory_Access_Array) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package_References."=";
   subtype RemoteHighScoresSubmissionProcessorFactory_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package_References.RemoteHighScoresSubmissionProcessorFactory_Access_Array_Access;
   function "=" (Left, Right : RemoteHighScoresSubmissionProcessorFactory_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package_References."=";
   subtype RemoteHighScoresSubmissionProcessorFactory_Access_Array_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package_References.RemoteHighScoresSubmissionProcessorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : RemoteHighScoresSubmissionProcessorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package_References."=";
   subtype RemoteHighScoresSubmissionProcessorFactory_Access_Array_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package_References.RemoteHighScoresSubmissionProcessorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RemoteHighScoresSubmissionProcessorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package_References."=";

   type RemoteHighScoresSubmissionProcessorFactory is new Java_Object with null record;
   SINGLETON : RemoteHighScoresSubmissionProcessorInterface_Access;

   procedure Initialize (This : in out RemoteHighScoresSubmissionProcessorFactory'Class);
   function Create return RemoteHighScoresSubmissionProcessorFactory_Access;
   function getInstance return RemoteHighScoresSubmissionProcessorInterface_Access;

end org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package;


