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


package body org.allbinary.game.score.NoHighScoresFactory_Package is

   procedure Initialize_Fields (This : in out NoHighScoresFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.NO_HIGH_SCORES := new HighScores_Access_Array'(0 .. (0) - 1 => null);
   end Initialize_Fields;


   function getInstance return NoHighScoresFactory_Access is
   begin
        return NoHighScoresFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out NoHighScoresFactory'Class) is
   begin
      HighScoresBase_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NoHighScoresFactory_Access is
      This : constant NoHighScoresFactory_Access := new NoHighScoresFactory;
   begin
      NoHighScoresFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure fetchHighScores (This : in out NoHighScoresFactory; gameInfo_Param : access GameInfo_Package.GameInfo'Class; highScoresResultsListener_Param : access HighScoresResultsListener_Package.HighScoresResultsListener'Class) is
      gameInfo : constant GameInfo_Access := GameInfo_Access (gameInfo_Param);
      highScoresResultsListener : constant HighScoresResultsListener_Access := HighScoresResultsListener_Access (highScoresResultsListener_Param);
   begin
        This.logUtil.putF (To_Unbounded_String ("Getting No HighScores"), NoHighScoresFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("fetchHighScores"));
        highScoresResultsListener.setHighScoresArray (This.NO_HIGH_SCORES);
   end fetchHighScores;

   function createHighScoresHelper (This : in out NoHighScoresFactory) return HighScoresHelperBaseInterface_Access is
   begin
        return HighScoresHelperBase_Package.Create;
   end createHighScoresHelper;

begin
   null;
   instance := NoHighScoresFactory_Package.Create;

end org.allbinary.game.score.NoHighScoresFactory_Package;


