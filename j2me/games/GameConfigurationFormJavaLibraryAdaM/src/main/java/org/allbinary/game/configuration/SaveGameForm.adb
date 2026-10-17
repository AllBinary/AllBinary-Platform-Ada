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


package body org.allbinary.game.configuration.SaveGameForm_Package is

   procedure Initialize_Fields (This : in out SaveGameForm'Class) is
   begin
      null;
      This.meUtil := MEUtil_Package.getInstance;
   end Initialize_Fields;


   --  throws Exception
   function createForm (commandListener : CommandListener_Access; title : Unbounded_String; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return CommandForm_Access is
   begin
        SaveGameForm_Package.FORM := SaveGameForm_Package.Create (commandListener, title, backgrounBasicColor, foregroundBasicColor);
        return SaveGameForm_Package.FORM;
   end createForm;

   function getInstance return CommandForm_Access is
   begin
        return SaveGameForm_Package.FORM;
   end getInstance;

   procedure Initialize (This : in out SaveGameForm'Class; commandListener : CommandListener_Access; title : Unbounded_String; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
      timeString : Unbounded_String;
   begin
        CommandForm_Package.Initialize (This, commandListener, title, backgrounBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        timeString := To_Unbounded_String (Java_Image (ABSystemWrapper_Package.getInstance.currentTimeMillis));
        This.meUtil.appendItem (This'Unchecked_Access, TextField_Package.Create (To_Unbounded_String ("Name: "), timeString, 30, TextField_Package.ANY));
        This.initCommands (commandListener);
   end Initialize;

   function Create (commandListener : CommandListener_Access; title : Unbounded_String; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return SaveGameForm_Access is
      This : constant SaveGameForm_Access := new SaveGameForm;
   begin
      SaveGameForm_Package.Initialize (This.all, commandListener, title, backgrounBasicColor, foregroundBasicColor);
      return This;
   end Create;

   procedure initCommands (This : in out SaveGameForm; cmdListener : CommandListener_Access) is
      gameCommandsFactory : GameCommandsFactory_Access;
   begin
        gameCommandsFactory := GameCommandsFactory_Package.getInstance;
        This.removeAllCommands;
        This.addCommand (gameCommandsFactory.SAVE);
        This.addCommand (gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
        This.setCommandListener (cmdListener);
   end initCommands;

   procedure createForm (commandListener : CommandListener_Access; title : Unbounded_String; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
      Java_Result : constant CommandForm_Access := createForm (commandListener, title, backgrounBasicColor, foregroundBasicColor);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createForm;

begin
   null;
   FORM := CommandForm_Package.getNullCommandForm;

end org.allbinary.game.configuration.SaveGameForm_Package;


