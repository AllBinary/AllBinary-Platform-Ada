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


with org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package; use org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package;
with org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package; use org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package;
with org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.EnumerationUtil_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.score.remote.RemoteHighScores_Package;
with org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor_Package;
with org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package;
with org.allbinary.logic.system.SoftwareInformation_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package is

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
   procedure Initialize_Fields (This : in out RemoteHighScoresSubmissionProcessorFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out RemoteHighScoresSubmissionProcessorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RemoteHighScoresSubmissionProcessorFactory_Access is
      This : constant RemoteHighScoresSubmissionProcessorFactory_Access := new RemoteHighScoresSubmissionProcessorFactory;
   begin
      RemoteHighScoresSubmissionProcessorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return RemoteHighScoresSubmissionProcessorInterface_Access is
   begin
        return RemoteHighScoresSubmissionProcessorInterface_Access (RemoteHighScoresSubmissionProcessorFactory_Package.SINGLETON);
   end getInstance;

begin
   null;
   SINGLETON := RemoteHighScoresSubmissionProcessorInterface_Access (RemoteHighScoresSubmissionProcessor_Package.Create);

end org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package;


