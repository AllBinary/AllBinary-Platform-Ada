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


package body org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package is

   procedure Initialize_Fields (This : in out GameKeyCompleteMotionGestureInputEventFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.eventList := BasicArrayListD_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out GameKeyCompleteMotionGestureInputEventFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameKeyCompleteMotionGestureInputEventFactory_Access is
      This : constant GameKeyCompleteMotionGestureInputEventFactory_Access := new GameKeyCompleteMotionGestureInputEventFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameKeyCompleteMotionGestureInputEventFactory_Access is
   begin
        return GameKeyCompleteMotionGestureInputEventFactory_Package.SINGLETON;
   end getInstance;

   procedure add (This : in out GameKeyCompleteMotionGestureInputEventFactory; gameKeyCompleteMotionGestureInputEvent : GameKeyCompleteMotionGestureInputEvent_Access) is
   begin
        This.eventList.add (gameKeyCompleteMotionGestureInputEvent);
   end add;

   procedure updateAll (This : in out GameKeyCompleteMotionGestureInputEventFactory) is
      gameKeyCompleteMotionGestureInputEvent : GameKeyCompleteMotionGestureInputEvent_Access;
      index : Integer;
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START_LABEL).appendint (This.eventList.size).toString, This'Unchecked_Access, To_Unbounded_String ("updateAll"));
        for index in reverse 0 .. (This.eventList.size) - (1) loop
            gameKeyCompleteMotionGestureInputEvent := GameKeyCompleteMotionGestureInputEvent_Access (This.eventList.objectArray (index));
            gameKeyCompleteMotionGestureInputEvent.update;
        end loop;
   end updateAll;

   procedure getInstance is
      Java_Result : constant GameKeyCompleteMotionGestureInputEventFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   SINGLETON := GameKeyCompleteMotionGestureInputEventFactory_Package.Create;

end org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package;


