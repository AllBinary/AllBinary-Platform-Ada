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


package body org.allbinary.game.score.NullHighScoresSingletonFactory_Package is

   procedure Initialize_Fields (This : in out NullHighScoresSingletonFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullHighScoresSingletonFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullHighScoresSingletonFactory_Access is
      This : constant NullHighScoresSingletonFactory_Access := new NullHighScoresSingletonFactory;
   begin
      NullHighScoresSingletonFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return HighScores_Access is
   begin
        return NullHighScoresSingletonFactory_Package.SINGLETON;
   end getInstance;

begin
   null;
   SINGLETON := HighScores_Package.Create (CommonStrings_Package.getInstance.LOADING, To_Unbounded_String ("High Scores Not Loaded"), CommonStrings_Package.getInstance.PERIODS);

end org.allbinary.game.score.NullHighScoresSingletonFactory_Package;


