-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.game.score.LastFetchHighScoresFactory_Package is

   procedure Initialize_Fields (This : in out LastFetchHighScoresFactory'Class) is
   begin
      null;
      This.highScoresArray := NoHighScoresFactory_Package.getInstance.NO_HIGH_SCORES;
   end Initialize_Fields;

   procedure Initialize (This : in out LastFetchHighScoresFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LastFetchHighScoresFactory_Access is
      This : constant LastFetchHighScoresFactory_Access := new LastFetchHighScoresFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return LastFetchHighScoresFactory_Access is
   begin
        if (LastFetchHighScoresFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            LastFetchHighScoresFactory_Package.instance := LastFetchHighScoresFactory_Package.Create;
        end if;
        return LastFetchHighScoresFactory_Access (LastFetchHighScoresFactory_Package.instance);
   end getInstance;

   procedure getInstance is
      Java_Result : constant LastFetchHighScoresFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.score.LastFetchHighScoresFactory_Package;


