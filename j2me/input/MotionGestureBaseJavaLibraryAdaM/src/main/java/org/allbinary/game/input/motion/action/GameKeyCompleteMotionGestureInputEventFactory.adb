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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.CompleteMotionGestureInputInterface_Package;
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package;

package body org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype GameKeyCompleteMotionGestureInputEvent_Access is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References.GameKeyCompleteMotionGestureInputEvent_Access;
   function "=" (Left, Right : GameKeyCompleteMotionGestureInputEvent_Access) return Boolean renames org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References."=";
   subtype GameKeyCompleteMotionGestureInputEvent_Access_Array is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References.GameKeyCompleteMotionGestureInputEvent_Access_Array;
   function "=" (Left, Right : GameKeyCompleteMotionGestureInputEvent_Access_Array) return Boolean renames org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References."=";
   subtype GameKeyCompleteMotionGestureInputEvent_Access_Array_Access is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References.GameKeyCompleteMotionGestureInputEvent_Access_Array_Access;
   function "=" (Left, Right : GameKeyCompleteMotionGestureInputEvent_Access_Array_Access) return Boolean renames org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References."=";
   subtype GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References.GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References."=";
   subtype GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References.GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References."=";
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
        return GameKeyCompleteMotionGestureInputEventFactory_Access (GameKeyCompleteMotionGestureInputEventFactory_Package.SINGLETON);
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


