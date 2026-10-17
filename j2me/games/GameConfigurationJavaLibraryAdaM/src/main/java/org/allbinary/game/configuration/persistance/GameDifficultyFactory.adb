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


package body org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package is

   procedure Initialize_Fields (This : in out GameDifficultyFactory'Class) is
   begin
      null;
      This.level := 0;
   end Initialize_Fields;

   procedure Initialize (This : in out GameDifficultyFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameDifficultyFactory_Access is
      This : constant GameDifficultyFactory_Access := new GameDifficultyFactory;
   begin
      GameDifficultyFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameDifficultyFactory_Access is
   begin
        return GameDifficultyFactory_Package.instance;
   end getInstance;

   procedure setLevel (This : in out GameDifficultyFactory; level : Integer) is
   begin
        This.level := level;
   end setLevel;

   function getLevel (This : in out GameDifficultyFactory) return Integer is
   begin
        return This.level;
   end getLevel;

begin
   null;
   instance := GameDifficultyFactory_Package.Create;

end org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package;


