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


with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.graphics.displayable.command.MyCommandsFactory_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out MyCommandsFactory'Class) is
   begin
      null;
      This.NO_COMMAND := Command_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, StringUtil_Package.getInstance.EMPTY_STRING, -(1), -(1));
      This.GAUGE_CHANGE := Command_Package.Create (To_Unbounded_String ("GAUGE_CHANGE"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.ITEM, 1);
      This.SET_DISPLAYABLE := Command_Package.Create (To_Unbounded_String ("Display"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 2);
      This.PAUSE_COMMAND := Command_Package.Create (To_Unbounded_String ("Pause"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 0);
      This.RESUME_COMMAND := Command_Package.Create (To_Unbounded_String ("Resume"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 0);
   end Initialize_Fields;


   function getInstance return MyCommandsFactory_Access is
   begin
        return MyCommandsFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out MyCommandsFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MyCommandsFactory_Access is
      This : constant MyCommandsFactory_Access := new MyCommandsFactory;
   begin
      MyCommandsFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := MyCommandsFactory_Package.Create;

end org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;


