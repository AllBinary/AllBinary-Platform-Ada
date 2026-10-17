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


package body org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package is

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
        return RemoteHighScoresSubmissionProcessorFactory_Package.SINGLETON;
   end getInstance;

begin
   null;
   SINGLETON := RemoteHighScoresSubmissionProcessor_Package.Create;

end org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package;


