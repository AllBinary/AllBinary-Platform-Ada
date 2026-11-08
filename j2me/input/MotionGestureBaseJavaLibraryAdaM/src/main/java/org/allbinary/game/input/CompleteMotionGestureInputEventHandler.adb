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


with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package; use org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References;
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package; use org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package;
with org.allbinary.game.input.CompleteMotionGestureInputInterface_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.input.CompleteMotionGestureInputEventHandler_Package is

   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype EventListenerInterface_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access;
   function "=" (Left, Right : EventListenerInterface_Access) return Boolean renames org.allbinary.logic.util.event.EventListenerInterface_Package_References."=";
   subtype EventListenerInterface_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array;
   function "=" (Left, Right : EventListenerInterface_Access_Array) return Boolean renames org.allbinary.logic.util.event.EventListenerInterface_Package_References."=";
   subtype EventListenerInterface_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : EventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.EventListenerInterface_Package_References."=";
   subtype EventListenerInterface_Access_Array_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : EventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.EventListenerInterface_Package_References."=";
   subtype EventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.EventListenerInterface_Package_References."=";
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
   subtype CompleteMotionGestureInputEventListener_Access is org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References.CompleteMotionGestureInputEventListener_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEventListener_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References."=";
   subtype CompleteMotionGestureInputEventListener_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References.CompleteMotionGestureInputEventListener_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureInputEventListener_Access_Array) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References."=";
   subtype CompleteMotionGestureInputEventListener_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References.CompleteMotionGestureInputEventListener_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEventListener_Access_Array_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References."=";
   subtype CompleteMotionGestureInputEventListener_Access_Array_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References.CompleteMotionGestureInputEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureInputEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References."=";
   subtype CompleteMotionGestureInputEventListener_Access_Array_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References.CompleteMotionGestureInputEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References."=";
   procedure Initialize_Fields (This : in out CompleteMotionGestureInputEventHandler'Class) is
   begin
      null;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   function getInstance return CompleteMotionGestureInputEventHandler_Access is
   begin
        return CompleteMotionGestureInputEventHandler_Access (CompleteMotionGestureInputEventHandler_Package.SINGLETON);
   end getInstance;

   procedure Initialize (This : in out CompleteMotionGestureInputEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CompleteMotionGestureInputEventHandler_Access is
      This : constant CompleteMotionGestureInputEventHandler_Access := new CompleteMotionGestureInputEventHandler;
   begin
      CompleteMotionGestureInputEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out CompleteMotionGestureInputEventHandler; completeMotionGestureInputEventListener_Param : access CompleteMotionGestureInputEventListener_Package.CompleteMotionGestureInputEventListener'Class) is
      completeMotionGestureInputEventListener : constant CompleteMotionGestureInputEventListener_Access := CompleteMotionGestureInputEventListener_Access (completeMotionGestureInputEventListener_Param);
   begin
        if not (This.list.contains (Java_Object_Access (completeMotionGestureInputEventListener))) then
            This.list.add (Java_Object_Access (completeMotionGestureInputEventListener));
        end if;
   end addListener;

   procedure removeAllListeners (This : in out CompleteMotionGestureInputEventHandler) is
   begin
        This.list.clear;
        BasicEventHandler_Package.BasicEventHandler (This).removeAllListeners;
   end removeAllListeners;

   procedure removeListener (This : in out CompleteMotionGestureInputEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.list.remove (EventListenerInterface_Package.Java_Object_Access_From_EventListenerInterface (eventListenerInterface));
        BasicEventHandler_Package.BasicEventHandler (This).removeListener (eventListenerInterface);
   end removeListener;

   --  throws Exception
   procedure fireEvent (This : in out CompleteMotionGestureInputEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      completeMotionGestureInputEventListener : CompleteMotionGestureInputEventListener_Access;
      index : Integer;
   begin
        index := This.list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            begin
                completeMotionGestureInputEventListener := CompleteMotionGestureInputEventListener_Access (This.list.objectArray (index));
                completeMotionGestureInputEventListener.onCompleteMotionGestureInputEvent (CompleteMotionGestureInputEvent_Access (eventObject));
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, CompleteMotionGestureInputEventHandler_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
        end loop;
        BasicEventHandler_Package.BasicEventHandler (This).fireEvent (eventObject);
   end fireEvent;

   --  throws Exception
   procedure process (This : in out CompleteMotionGestureInputEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      completeMotionGestureInputEventListenerInterface : CompleteMotionGestureInputEventListenerInterface_Access;
   begin
        completeMotionGestureInputEventListenerInterface := CompleteMotionGestureInputEventListenerInterface_Access (eventListenerInterface);
        completeMotionGestureInputEventListenerInterface.onCompleteMotionGestureInputEvent (CompleteMotionGestureInputEvent_Access (eventObject));
   end process;

begin
   null;
   SINGLETON := CompleteMotionGestureInputEventHandler_Package.Create;

end org.allbinary.game.input.CompleteMotionGestureInputEventHandler_Package;


