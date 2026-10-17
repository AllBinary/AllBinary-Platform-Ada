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


package body org.allbinary.game.commands.GameCommandsFactory_Package is

   procedure Initialize_Fields (This : in out GameCommandsFactory'Class) is
   begin
      null;
      This.TOGGLE_FULLSCREEN := Command_Package.Create (To_Unbounded_String ("Toggle FullScreen"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.TOGGLE_KEYBOARD := Command_Package.Create (To_Unbounded_String ("Keyboard"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.SET_MENU_DISPLAYABLE := Command_Package.Create (To_Unbounded_String ("Set Menu Displayable"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.APPLICATION_UPDATE := Command_Package.Create (CommonStrings_Package.getInstance.UPDATE, StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.DISPLAY_ABOUT := Command_Package.Create (CanvasStrings_Package.getInstance.ABOUT, StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 2);
      This.OPEN_WEB_URL := Command_Package.Create (To_Unbounded_String ("Open Web URL"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 2);
      This.CLOSE_OPTIONS := Command_Package.Create (To_Unbounded_String ("Back"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.DISPLAY_OPTIONS := Command_Package.Create (CanvasStrings_Package.getInstance.OPTIONS, StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 2);
      This.START_TRACE := Command_Package.Create (To_Unbounded_String ("Start Trace"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.STOP_TRACE := Command_Package.Create (To_Unbounded_String ("Stop Trace"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.DEFAULT_OPTIONS := Command_Package.Create (To_Unbounded_String ("Default"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.SHOW_GAME_CANVAS := Command_Package.Create (To_Unbounded_String ("Back to Game"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.CLOSE_AND_SHOW_GAME_CANVAS := Command_Package.Create (To_Unbounded_String ("Back"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.QUIT_COMMAND := Command_Package.Create (To_Unbounded_String ("Quit"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.STOP, 1);
      This.RESTART_COMMAND := Command_Package.Create (To_Unbounded_String ("Restart"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 0);
      This.DISPLAY_SAVE_FORM := Command_Package.Create (To_Unbounded_String ("Save To"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 3);
      This.SAVE := Command_Package.Create (To_Unbounded_String ("Save"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 3);
      This.DISPLAY_LOAD_FORM := Command_Package.Create (To_Unbounded_String ("Load"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 3);
      This.LOAD_FILE := Command_Package.Create (To_Unbounded_String ("Load File"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 3);
      This.DELETE_FILE := Command_Package.Create (To_Unbounded_String ("Delete File"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.EXIT_COMMAND := Command_Package.Create (To_Unbounded_String ("Exit"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.EXIT_Id, 2);
      This.EXIT_WITHOUT_PROGRESS_COMMAND := Command_Package.Create (To_Unbounded_String ("Exit Without Progress"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.EXIT_Id, 2);
      This.START_COMMAND := Command_Package.Create (CommonStrings_Package.getInstance.START, StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.CONTINUE_COMMAND := Command_Package.Create (To_Unbounded_String ("Continue"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.SELECT_COMMAND := Command_Package.Create (To_Unbounded_String ("Select"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.FEATURE_UPDATE := Command_Package.Create (To_Unbounded_String ("Feature Update"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
      This.BUY_COMMAND := Command_Package.Create (To_Unbounded_String ("BUY"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
   end Initialize_Fields;


   function getInstance return GameCommandsFactory_Access is
   begin
        if (GameCommandsFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            GameCommandsFactory_Package.instance := GameCommandsFactory_Package.Create;
        end if;
        return GameCommandsFactory_Access (GameCommandsFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out GameCommandsFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameCommandsFactory_Access is
      This : constant GameCommandsFactory_Access := new GameCommandsFactory;
   begin
      GameCommandsFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.commands.GameCommandsFactory_Package;


