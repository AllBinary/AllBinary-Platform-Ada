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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out GameKeyCompleteMotionGestureInputEventFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.eventList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;

   procedure Initialize (This : in out GameKeyCompleteMotionGestureInputEventFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameKeyCompleteMotionGestureInputEventFactory_Access is
      This : constant GameKeyCompleteMotionGestureInputEventFactory_Access := new GameKeyCompleteMotionGestureInputEventFactory;
   begin
      GameKeyCompleteMotionGestureInputEventFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameKeyCompleteMotionGestureInputEventFactory_Access is
   begin
        return GameKeyCompleteMotionGestureInputEventFactory_Package.SINGLETON;
   end getInstance;

   procedure add (This : in out GameKeyCompleteMotionGestureInputEventFactory; gameKeyCompleteMotionGestureInputEvent_Param : access GameKeyCompleteMotionGestureInputEvent_Package.GameKeyCompleteMotionGestureInputEvent'Class) is
      gameKeyCompleteMotionGestureInputEvent : constant GameKeyCompleteMotionGestureInputEvent_Access := GameKeyCompleteMotionGestureInputEvent_Access (gameKeyCompleteMotionGestureInputEvent_Param);
   begin
        This.eventList.add (Java_Object_Access (gameKeyCompleteMotionGestureInputEvent));
   end add;

   procedure updateAll (This : in out GameKeyCompleteMotionGestureInputEventFactory) is
      gameKeyCompleteMotionGestureInputEvent : GameKeyCompleteMotionGestureInputEvent_Access;
      index : Integer;
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START_LABEL).appendint (This.eventList.size).toString, GameKeyCompleteMotionGestureInputEventFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("updateAll"));
        for index in reverse 0 .. (This.eventList.size) - (1) loop
            gameKeyCompleteMotionGestureInputEvent := GameKeyCompleteMotionGestureInputEvent_Access (This.eventList.objectArray (index));
            gameKeyCompleteMotionGestureInputEvent.update;
        end loop;
   end updateAll;

begin
   null;
   SINGLETON := GameKeyCompleteMotionGestureInputEventFactory_Package.Create;

end org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package;


