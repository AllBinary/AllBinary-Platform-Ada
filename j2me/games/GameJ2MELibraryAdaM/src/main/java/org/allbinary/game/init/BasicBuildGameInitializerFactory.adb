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


package body org.allbinary.game.init.BasicBuildGameInitializerFactory_Package is

   procedure Initialize_Fields (This : in out BasicBuildGameInitializerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicBuildGameInitializerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicBuildGameInitializerFactory_Access is
      This : constant BasicBuildGameInitializerFactory_Access := new BasicBuildGameInitializerFactory;
   begin
      BasicBuildGameInitializerFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out BasicBuildGameInitializerFactory) return GameInitializationInterface_Access is
   begin
        return BaseGameInitialization_Package.NULL_BASE_GAME_INITIALIZATION;
   end getInstance;

begin
   null;
   NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY := BasicBuildGameInitializerFactory_Package.Create;

end org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;


