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


package body org.allbinary.game.GameStrings_Package is

   procedure Initialize_Fields (This : in out GameStrings'Class) is
   begin
      null;
      This.PROCESS_TICK := To_Unbounded_String ("processTick");
      This.ON_GAME_INITIALIZED := To_Unbounded_String ("onGameInitialized");
      This.UPDATESURFACE := To_Unbounded_String ("updateSurface");
      This.ON_SET_DISPLAYABLE := To_Unbounded_String ("onSetDisplayable");
      This.UNPAUSE := To_Unbounded_String ("unPause");
      This.TOGGLE_MENU := To_Unbounded_String ("toggleMenu");
      This.SET_GAME_OVER := To_Unbounded_String ("setGameOver");
      This.GAME_STATE := To_Unbounded_String ("Game State: ");
      This.SET_GAME_STATE := To_Unbounded_String ("setGameState");
      This.STOP_GAME_CANVAS_RUNNABLE_INTERFACE := To_Unbounded_String ("stopGameCanvasRunnableInterface");
   end Initialize_Fields;

   procedure Initialize (This : in out GameStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameStrings_Access is
      This : constant GameStrings_Access := new GameStrings;
   begin
      GameStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameStrings_Access is
   begin
        return GameStrings_Package.instance;
   end getInstance;

begin
   null;
   instance := GameStrings_Package.Create;

end org.allbinary.game.GameStrings_Package;


