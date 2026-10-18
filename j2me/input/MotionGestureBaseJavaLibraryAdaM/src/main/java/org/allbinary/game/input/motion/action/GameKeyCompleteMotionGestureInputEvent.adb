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
      This.gameKeyEventFactory := GameKeyEventFactory_Package.getInstance;
      This.SOURCE_ID := This.gameKeyEventFactory.MOTION_GESTURE_SOURCE_ID;
      This.gameKey := GameKey_Package.NULL_GAME_KEY;
      This.gameKeyEvent := GameKeyEvent_Package.NONE;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameKeyCompleteMotionGestureInputEvent'Class; name : Unbounded_String; motionGestureInput_Param : access MotionGestureInput_Package.MotionGestureInput'Class; inputToGameKeyMapping_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class) is
      motionGestureInput : constant MotionGestureInput_Access := MotionGestureInput_Access (motionGestureInput_Param);
      inputToGameKeyMapping : constant InputToGameKeyMapping_Access := InputToGameKeyMapping_Access (inputToGameKeyMapping_Param);
   begin
        CompleteMotionGestureInputEvent_Package.Initialize (This, name, motionGestureInput);
        Initialize_Fields (This);
        This.inputToGameKeyMapping := inputToGameKeyMapping;
        GameKeyCompleteMotionGestureInputEventFactory_Package.getInstance.add (GameKeyCompleteMotionGestureInputEvent_Access'(This'Unchecked_Access));
        GameKeyCompleteMotionGestureInputEvent'Class (This).update;
   end Initialize;

   function Create (name : Unbounded_String; motionGestureInput_Param : access MotionGestureInput_Package.MotionGestureInput'Class; inputToGameKeyMapping_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class) return GameKeyCompleteMotionGestureInputEvent_Access is
      This : constant GameKeyCompleteMotionGestureInputEvent_Access := new GameKeyCompleteMotionGestureInputEvent;
   begin
      GameKeyCompleteMotionGestureInputEvent_Package.Initialize (This.all, name, motionGestureInput_Param, inputToGameKeyMapping_Param);
      return This;
   end Create;

   function getSourceId (This : in out GameKeyCompleteMotionGestureInputEvent) return Integer is
   begin
        return This.SOURCE_ID;
   end getSourceId;

   procedure update (This : in out GameKeyCompleteMotionGestureInputEvent) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            GameKeyCompleteMotionGestureInputEvent'Class (This).setGameKey (This.inputToGameKeyMapping.getInstance (GameKeyCompleteMotionGestureInputEvent'Class (This).getMotionGestureInput.getId));
            GameKeyCompleteMotionGestureInputEvent'Class (This).setGameKeyEvent (This.gameKeyEventFactory.getInstanceForInput (GameKeyCompleteMotionGestureInputEvent_Access'(This'Unchecked_Access), GameKeyCompleteMotionGestureInputEvent'Class (This).getGameKey));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, GameKeyCompleteMotionGestureInputEvent_Access'(This'Unchecked_Access), commonStrings.UPDATE, e);
                end;
        end;
   end update;

   procedure setGameKeyEvent (This : in out GameKeyCompleteMotionGestureInputEvent; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        This.gameKeyEvent := gameKeyEvent;
   end setGameKeyEvent;

   function getGameKeyEvent (This : in out GameKeyCompleteMotionGestureInputEvent) return GameKeyEvent_Access is
   begin
        return This.gameKeyEvent;
   end getGameKeyEvent;

   procedure setGameKey (This : in out GameKeyCompleteMotionGestureInputEvent; gameKey_Param : access GameKey_Package.GameKey'Class) is
      gameKey : constant GameKey_Access := GameKey_Access (gameKey_Param);
   begin
        This.gameKey := gameKey;
   end setGameKey;

   function getGameKey (This : in out GameKeyCompleteMotionGestureInputEvent) return GameKey_Access is
   begin
        return This.gameKey;
   end getGameKey;

end org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;


