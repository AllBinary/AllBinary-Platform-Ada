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
      Initialize (This.all);
      return This;
   end Create;

   procedure fetchHighScores (This : in out NoHighScoresFactory; gameInfo : GameInfo_Access; highScoresResultsListener : HighScoresResultsListener_Access) is
   begin
        This.logUtil.putF (To_Unbounded_String ("Getting No HighScores"), This'Unchecked_Access, To_Unbounded_String ("fetchHighScores"));
        highScoresResultsListener.setHighScoresArray (This.NO_HIGH_SCORES);
   end fetchHighScores;

   function createHighScoresHelper (This : in out NoHighScoresFactory) return HighScoresHelperBaseInterface_Access is
   begin
        return HighScoresHelperBase_Package.Create;
   end createHighScoresHelper;

   procedure getInstance is
      Java_Result : constant NoHighScoresFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure createHighScoresHelper (This : in out NoHighScoresFactory) is
      Java_Result : constant HighScoresHelperBaseInterface_Access := NoHighScoresFactory'Class (This).createHighScoresHelper;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createHighScoresHelper;

begin
   null;
   instance := NoHighScoresFactory_Package.Create;

end org.allbinary.game.score.NoHighScoresFactory_Package;


