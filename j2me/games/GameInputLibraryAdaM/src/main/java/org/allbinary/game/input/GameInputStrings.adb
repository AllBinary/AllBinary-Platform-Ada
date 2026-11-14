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



package body org.allbinary.game.input.GameInputStrings_Package is

   procedure Initialize_Fields (This : in out GameInputStrings'Class) is
   begin
      null;
      This.PROCESS_INPUT := To_Unbounded_String ("processInput");
      This.KEY_PRESSED := To_Unbounded_String ("keyPressed");
      This.KEY_RELEASED := To_Unbounded_String ("keyReleased");
      This.KEY_REPEATED := To_Unbounded_String ("keyRepeated");
      This.ON_PRESS_GAME_KEY := To_Unbounded_String ("onPressGameKeyEvent");
      This.ON_DOWN_GAME_KEY := To_Unbounded_String ("onDownGameKeyEvent");
      This.ON_UP_GAME_KEY := To_Unbounded_String ("onUpGameKeyEvent");
      This.NO_KEY := To_Unbounded_String ("Key Code Not Mapped For Game: ");
      This.ADD_KEY_EVENT := To_Unbounded_String ("addGameKeyEvent");
      This.REMOVE_KEY_EVENT := To_Unbounded_String ("removeGameKeyEvent");
      This.STRAFE_LEFT := To_Unbounded_String ("strafeLeft");
      This.STRAFE_RIGHT := To_Unbounded_String ("strafeRight");
      This.PROCESS_MOTION_INPUT := To_Unbounded_String ("processMotionInput");
      This.UDPATE_CURRENT_TOUCH_INPUT_FACTORY := To_Unbounded_String ("updateCurrentTouchInputFactory");
      This.ENABLE_PLAYER_GAME_INPUTS := To_Unbounded_String ("Enabling PlayerGameInputs: ");
      This.ENABLE_PLAYER_GAME_INPUT := To_Unbounded_String ("Enabling PlayerGameInput: ");
   end Initialize_Fields;

   procedure Initialize (This : in out GameInputStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameInputStrings_Access is
      This : constant GameInputStrings_Access := new GameInputStrings;
   begin
      GameInputStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameInputStrings_Access is
   begin
        return GameInputStrings_Package.instance;
   end getInstance;

begin
   null;
   instance := GameInputStrings_Package.Create;

end org.allbinary.game.input.GameInputStrings_Package;


