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


package body org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package is

   procedure Initialize_Fields (This : in out AboutCommandProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AboutCommandProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AboutCommandProcessor_Access is
      This : constant AboutCommandProcessor_Access := new AboutCommandProcessor;
   begin
      AboutCommandProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AboutCommandProcessor_Access is
   begin
        return AboutCommandProcessor_Package.instance;
   end getInstance;

   procedure process (This : in out AboutCommandProcessor; midletCommandListener_Param : access CommandListener'Class; command_Param : access Command'Class; canvas_Param : access Canvas'Class) is
      midletCommandListener : CommandListener_Access := CommandListener_Access (midletCommandListener_Param);
      command : Command_Access := Command_Access (command_Param);
      canvas : Canvas_Access := Canvas_Access (canvas_Param);
   begin
        midletCommandListener.commandAction (command, canvas);
   end process;

begin
   null;
   instance := AboutCommandProcessor_Package.Create;

end org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package;


