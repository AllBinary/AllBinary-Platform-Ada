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


with org.allbinary.game.score.remote.RemoteHighScoresProcessor_Package; use org.allbinary.game.score.remote.RemoteHighScoresProcessor_Package;
with org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package; use org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package;
with org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References;
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
with org.allbinary.game.score.remote.RemoteHighScoresProcessor_Package;
with org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package;
with org.allbinary.logic.system.SoftwareInformation_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package is

   subtype RemoteHighScoresProcessorInterface_Access is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access;
   function "=" (Left, Right : RemoteHighScoresProcessorInterface_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References."=";
   subtype RemoteHighScoresProcessorInterface_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access_Array;
   function "=" (Left, Right : RemoteHighScoresProcessorInterface_Access_Array) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References."=";
   subtype RemoteHighScoresProcessorInterface_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access_Array_Access;
   function "=" (Left, Right : RemoteHighScoresProcessorInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References."=";
   subtype RemoteHighScoresProcessorInterface_Access_Array_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : RemoteHighScoresProcessorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References."=";
   subtype RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References."=";
   procedure Initialize_Fields (This : in out RemoteHighScoresProcessorFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out RemoteHighScoresProcessorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RemoteHighScoresProcessorFactory_Access is
      This : constant RemoteHighScoresProcessorFactory_Access := new RemoteHighScoresProcessorFactory;
   begin
      RemoteHighScoresProcessorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return RemoteHighScoresProcessorInterface_Access is
   begin
        return RemoteHighScoresProcessorInterface_Access (RemoteHighScoresProcessorFactory_Package.SINGLETON);
   end getInstance;

begin
   null;
   SINGLETON := RemoteHighScoresProcessorInterface_Access (RemoteHighScoresProcessor_Package.Create);

end org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package;


