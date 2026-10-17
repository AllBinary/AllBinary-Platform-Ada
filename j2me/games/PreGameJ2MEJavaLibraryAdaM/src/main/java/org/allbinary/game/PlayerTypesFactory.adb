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


package body org.allbinary.game.PlayerTypesFactory_Package is

   procedure Initialize_Fields (This : in out PlayerTypesFactory'Class) is
   begin
      null;
      This.PLAYER_TYPE_ONE := PlayerType_Package.Create (To_Unbounded_String ("Player Type One"), 0);
      This.PLAYER_TYPE_TWO := PlayerType_Package.Create (To_Unbounded_String ("Player Type Two"), 1);
      This.PLAYER_TYPE_THREE := PlayerType_Package.Create (To_Unbounded_String ("Player Type Three"), 2);
   end Initialize_Fields;

   procedure Initialize (This : in out PlayerTypesFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PlayerTypesFactory_Access is
      This : constant PlayerTypesFactory_Access := new PlayerTypesFactory;
   begin
      PlayerTypesFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PlayerTypesFactory_Access is
   begin
        return PlayerTypesFactory_Package.SINGLETON;
   end getInstance;

begin
   null;
   SINGLETON := PlayerTypesFactory_Package.Create;

end org.allbinary.game.PlayerTypesFactory_Package;


