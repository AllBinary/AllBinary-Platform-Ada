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


with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.game.score.RemoteErrorHighScoresSingletonFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out RemoteErrorHighScoresSingletonFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out RemoteErrorHighScoresSingletonFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RemoteErrorHighScoresSingletonFactory_Access is
      This : constant RemoteErrorHighScoresSingletonFactory_Access := new RemoteErrorHighScoresSingletonFactory;
   begin
      RemoteErrorHighScoresSingletonFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return HighScores_Access is
   begin
        return RemoteErrorHighScoresSingletonFactory_Package.SINGLETON;
   end getInstance;

begin
   null;
   SINGLETON := HighScores_Package.Create (CommonStrings_Package.getInstance.LOADING, To_Unbounded_String ("Remote High Scores Did Not Load"), CommonStrings_Package.getInstance.PERIODS);

end org.allbinary.game.score.RemoteErrorHighScoresSingletonFactory_Package;


