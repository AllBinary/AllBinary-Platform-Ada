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



package body org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package is

   procedure Initialize_Fields (This : in out TestRemoteHighScoresNotFinished'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TestRemoteHighScoresNotFinished'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TestRemoteHighScoresNotFinished_Access is
      This : constant TestRemoteHighScoresNotFinished_Access := new TestRemoteHighScoresNotFinished;
   begin
      TestRemoteHighScoresNotFinished_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure main (args : Unbounded_String_Array_Access) is
   begin
        TestRemoteHighScoresNotFinished_Package.Create;
   end main;

begin
   null;
   PATH := To_Unbounded_String ("G:\mnt\bc\mydev\work\allbinary_src\licensing\data\");

end org.allbinary.game.score.remote.TestRemoteHighScoresNotFinished_Package;


