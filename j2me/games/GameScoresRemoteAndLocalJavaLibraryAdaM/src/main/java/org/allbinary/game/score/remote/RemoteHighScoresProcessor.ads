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
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package; use org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package; use org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package;
with org.allbinary.game.score.remote.RemoteHighScores_Package; use org.allbinary.game.score.remote.RemoteHighScores_Package;

package org.allbinary.game.score.remote.RemoteHighScoresProcessor_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package NoCrypt_Package renames Standard.org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type RemoteHighScoresProcessor is tagged;
   type RemoteHighScoresProcessor_Access is access all RemoteHighScoresProcessor'Class;
   type RemoteHighScoresProcessor_Access_Array is array (Natural range <>) of RemoteHighScoresProcessor_Access;
   type RemoteHighScoresProcessor_Access_Array_Access is access all RemoteHighScoresProcessor_Access_Array;
   type RemoteHighScoresProcessor_Access_Array_Access_Array is array (Natural range <>) of RemoteHighScoresProcessor_Access_Array_Access;
   type RemoteHighScoresProcessor_Access_Array_Access_Array_Access is access all RemoteHighScoresProcessor_Access_Array_Access_Array;

   type RemoteHighScoresProcessor is new Java_Object and RemoteHighScoresProcessorInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      noCrypt : NoCrypt_Access;
   end record;

   procedure Initialize (This : in out RemoteHighScoresProcessor'Class);
   function Create return RemoteHighScoresProcessor_Access;
   procedure process (This : in out RemoteHighScoresProcessor; remoteHighScores_Param : access RemoteHighScores_Package.RemoteHighScores'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class);

end org.allbinary.game.score.remote.RemoteHighScoresProcessor_Package;


