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


with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package; use org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.system.os.OperatingSystemFactory_Package; use org.allbinary.logic.system.os.OperatingSystemFactory_Package;

package body org.allbinary.PostGameCommandFactory_Package is

   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package MultiPlayerGameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package;
   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package OperatingSystemFactory_Package renames Standard.org.allbinary.logic.system.os.OperatingSystemFactory_Package;
   procedure Initialize_Fields (This : in out PostGameCommandFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PostGameCommandFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PostGameCommandFactory_Access is
      This : constant PostGameCommandFactory_Access := new PostGameCommandFactory;
   begin
      PostGameCommandFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PostGameCommandFactory_Access is
   begin
        return PostGameCommandFactory_Package.instance;
   end getInstance;

   procedure addCommands (This : in out PostGameCommandFactory; canvas_Param : access MyCanvas_Package.MyCanvas'Class) is
      canvas : constant MyCanvas_Access := MyCanvas_Access (canvas_Param);
      operatingSystemInterface : GenericOperatingSystem_Access;
      gameCommandsFactory : GameCommandsFactory_Access;
   begin
        operatingSystemInterface := OperatingSystemFactory_Package.getInstance.getOperatingSystemInstance;
        gameCommandsFactory := GameCommandsFactory_Package.getInstance;
        if not (operatingSystemInterface.isOverScan) then
            canvas.addCommand (gameCommandsFactory.TOGGLE_KEYBOARD);
        end if;
        MultiPlayerGameFeatureFactory_Package.getInstance.addCommands (canvas);
   end addCommands;

begin
   null;
   instance := PostGameCommandFactory_Package.Create;

end org.allbinary.PostGameCommandFactory_Package;


