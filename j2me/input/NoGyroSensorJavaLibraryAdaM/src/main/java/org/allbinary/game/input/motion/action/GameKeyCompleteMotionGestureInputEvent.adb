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


package body org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package is

   procedure Initialize_Fields (This : in out GameKeyCompleteMotionGestureInputEvent'Class) is
   begin
      null;
      This.gameKey := GameKey_Package.NULL_GAME_KEY;
      This.gameKeyEvent := GameKeyEvent_Package.NONE;
   end Initialize_Fields;


   procedure Initialize (This : in out GameKeyCompleteMotionGestureInputEvent'Class; name : Unbounded_String; motionGestureInput : MotionGestureInput_Access; inputToGameKeyMapping : InputToGameKeyMapping_Access) is
   begin
        CompleteMotionGestureInputEvent_Package.Initialize (This, name, motionGestureInput);
        Initialize_Fields (This);
   end Initialize;

   function Create (name : Unbounded_String; motionGestureInput : MotionGestureInput_Access; inputToGameKeyMapping : InputToGameKeyMapping_Access) return GameKeyCompleteMotionGestureInputEvent_Access is
      This : constant GameKeyCompleteMotionGestureInputEvent_Access := new GameKeyCompleteMotionGestureInputEvent;
   begin
      Initialize (This.all, name, motionGestureInput, inputToGameKeyMapping);
      return This;
   end Create;

   function getSourceId (This : in out GameKeyCompleteMotionGestureInputEvent) return Integer is
   begin
        return 0;
   end getSourceId;

   procedure update (This : in out GameKeyCompleteMotionGestureInputEvent) is
   begin
        null;
   end update;

   procedure setGameKeyEvent (This : in out GameKeyCompleteMotionGestureInputEvent; gameKeyEvent : GameKeyEvent_Access) is
   begin
        This.gameKeyEvent := gameKeyEvent;
   end setGameKeyEvent;

   function getGameKeyEvent (This : in out GameKeyCompleteMotionGestureInputEvent) return GameKeyEvent_Access is
   begin
        return This.gameKeyEvent;
   end getGameKeyEvent;

   procedure setGameKey (This : in out GameKeyCompleteMotionGestureInputEvent; gameKey : GameKey_Access) is
   begin
        This.gameKey := gameKey;
   end setGameKey;

   function getGameKey (This : in out GameKeyCompleteMotionGestureInputEvent) return GameKey_Access is
   begin
        return This.gameKey;
   end getGameKey;

   procedure getSourceId (This : in out GameKeyCompleteMotionGestureInputEvent) is
      Java_Result : constant Integer := GameKeyCompleteMotionGestureInputEvent'Class (This).getSourceId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSourceId;

   procedure getGameKeyEvent (This : in out GameKeyCompleteMotionGestureInputEvent) is
      Java_Result : constant GameKeyEvent_Access := GameKeyCompleteMotionGestureInputEvent'Class (This).getGameKeyEvent;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGameKeyEvent;

   procedure getGameKey (This : in out GameKeyCompleteMotionGestureInputEvent) is
      Java_Result : constant GameKey_Access := GameKeyCompleteMotionGestureInputEvent'Class (This).getGameKey;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGameKey;

end org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;


