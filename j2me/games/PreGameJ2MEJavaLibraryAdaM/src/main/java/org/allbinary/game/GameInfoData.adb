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



package body org.allbinary.game.GameInfoData_Package is

   procedure Initialize_Fields (This : in out GameInfoData'Class) is
   begin
      null;
      This.GAME_TYPE := To_Unbounded_String ("GAME_TYPE");
      This.GAME_MODE := To_Unbounded_String ("GAME_MODE");
      This.PLAYER_TYPE := To_Unbounded_String ("PLAYER_TYPE");
      This.HIGHEST_LEVEL := To_Unbounded_String ("HIGHEST_LEVEL");
      This.CURRENT_LEVEL := To_Unbounded_String ("CURRENT_LEVEL");
      This.SOFTWARE_INFORMATION := To_Unbounded_String ("SOFTWARE_INFORMATION");
   end Initialize_Fields;


   function getInstance return GameInfoData_Access is
   begin
        return GameInfoData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out GameInfoData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameInfoData_Access is
      This : constant GameInfoData_Access := new GameInfoData;
   begin
      GameInfoData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := GameInfoData_Package.Create;

end org.allbinary.game.GameInfoData_Package;


