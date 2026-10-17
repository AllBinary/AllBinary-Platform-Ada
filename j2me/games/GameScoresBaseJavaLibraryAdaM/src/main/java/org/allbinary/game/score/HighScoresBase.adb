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


package body org.allbinary.game.score.HighScoresBase_Package is

   procedure Initialize_Fields (This : in out HighScoresBase'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out HighScoresBase'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return HighScoresBase_Access is
      This : constant HighScoresBase_Access := new HighScoresBase;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure fetchHighScores (This : in out HighScoresBase; gameInfo : GameInfo_Access; highScoresResultsListener : HighScoresResultsListener_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end fetchHighScores;

   procedure fetchHighScoresPreload (This : in out HighScoresBase; gameInfo : GameInfo_Access; highScoresResultsListener : HighScoresResultsListener_Access; preload : Boolean) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end fetchHighScoresPreload;

   function createHighScoresHelper (This : in out HighScoresBase) return HighScoresHelperBaseInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end createHighScoresHelper;

   procedure createHighScoresHelper (This : in out HighScoresBase) is
      Java_Result : constant HighScoresHelperBaseInterface_Access := HighScoresBase'Class (This).createHighScoresHelper;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createHighScoresHelper;

end org.allbinary.game.score.HighScoresBase_Package;


