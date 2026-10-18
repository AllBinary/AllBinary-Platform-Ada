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


with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package; use org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package;

package body org.allbinary.game.input.CompleteMotionGestureInputEventHandler_Package is

   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out CompleteMotionGestureInputEventHandler'Class) is
   begin
      null;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   function getInstance return CompleteMotionGestureInputEventHandler_Access is
   begin
        return CompleteMotionGestureInputEventHandler_Package.SINGLETON;
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
        BasicEventHandler (This).removeAllListeners;
   end removeAllListeners;

   procedure removeListener (This : in out CompleteMotionGestureInputEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.list.remove (Java_Object_Access (eventListenerInterface));
        BasicEventHandler (This).removeListener (eventListenerInterface);
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
        BasicEventHandler (This).fireEvent (eventObject);
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


