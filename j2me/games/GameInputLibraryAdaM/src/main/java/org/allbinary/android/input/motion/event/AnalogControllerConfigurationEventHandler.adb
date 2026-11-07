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
with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package; use org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package;
with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References;
with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent_Package; use org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent_Package;
with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent_Package;
with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package is

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
   subtype AnalogControllerConfigurationEventListenerInterface_Access is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References.AnalogControllerConfigurationEventListenerInterface_Access;
   function "=" (Left, Right : AnalogControllerConfigurationEventListenerInterface_Access) return Boolean renames org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References."=";
   subtype AnalogControllerConfigurationEventListenerInterface_Access_Array is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References.AnalogControllerConfigurationEventListenerInterface_Access_Array;
   function "=" (Left, Right : AnalogControllerConfigurationEventListenerInterface_Access_Array) return Boolean renames org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References."=";
   subtype AnalogControllerConfigurationEventListenerInterface_Access_Array_Access is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References.AnalogControllerConfigurationEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : AnalogControllerConfigurationEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References."=";
   subtype AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References.AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References."=";
   subtype AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References.AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References."=";
   procedure Initialize_Fields (This : in out AnalogControllerConfigurationEventHandler'Class) is
   begin
      null;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   function getInstance return AnalogControllerConfigurationEventHandler_Access is
   begin
        return AnalogControllerConfigurationEventHandler_Access (AnalogControllerConfigurationEventHandler_Package.instance);
   end getInstance;

   procedure Initialize (This : in out AnalogControllerConfigurationEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AnalogControllerConfigurationEventHandler_Access is
      This : constant AnalogControllerConfigurationEventHandler_Access := new AnalogControllerConfigurationEventHandler;
   begin
      AnalogControllerConfigurationEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out AnalogControllerConfigurationEventHandler; analogControllerConfigurationEventListenerInterface_Param : access AnalogControllerConfigurationEventListenerInterface_Package.AnalogControllerConfigurationEventListenerInterface'Class) is
      analogControllerConfigurationEventListenerInterface : constant AnalogControllerConfigurationEventListenerInterface_Access := AnalogControllerConfigurationEventListenerInterface_Access (analogControllerConfigurationEventListenerInterface_Param);
   begin
        if not (This.list.contains (AnalogControllerConfigurationEventListenerInterface_Package.Java_Object_Access_From_AnalogControllerConfigurationEventListenerInterface (analogControllerConfigurationEventListenerInterface))) then
            This.list.add (AnalogControllerConfigurationEventListenerInterface_Package.Java_Object_Access_From_AnalogControllerConfigurationEventListenerInterface (analogControllerConfigurationEventListenerInterface));
        end if;
   end addListener;

   procedure removeAllListeners (This : in out AnalogControllerConfigurationEventHandler) is
   begin
        This.list.clear;
        BasicEventHandler_Package.BasicEventHandler (This).removeAllListeners;
   end removeAllListeners;

   procedure removeListener (This : in out AnalogControllerConfigurationEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.list.remove (EventListenerInterface_Package.Java_Object_Access_From_EventListenerInterface (eventListenerInterface));
        BasicEventHandler_Package.BasicEventHandler (This).removeListener (eventListenerInterface);
   end removeListener;

   --  throws Exception
   procedure fireEvent (This : in out AnalogControllerConfigurationEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      playerGameInput : AnalogControllerConfigurationEventListenerInterface_Access;
      index : Integer;
   begin
        index := This.list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            begin
                playerGameInput := AnalogControllerConfigurationEventListenerInterface_Access (This.list.objectArray (index));
                playerGameInput.onAnalogControllerConfigurationEvent (AnalogControllerConfigurationEvent_Access (eventObject));
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, AnalogControllerConfigurationEventHandler_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
        end loop;
        BasicEventHandler_Package.BasicEventHandler (This).fireEvent (eventObject);
   end fireEvent;

   --  throws Exception
   procedure process (This : in out AnalogControllerConfigurationEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      analogControllerConfigurationEventListenerInterface : AnalogControllerConfigurationEventListenerInterface_Access;
   begin
        analogControllerConfigurationEventListenerInterface := (AnalogControllerConfigurationEventListenerInterface_Access (eventListenerInterface));
        analogControllerConfigurationEventListenerInterface.onAnalogControllerConfigurationEvent (AnalogControllerConfigurationEvent_Access (eventObject));
   end process;

begin
   null;
   instance := AnalogControllerConfigurationEventHandler_Package.Create;

end org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package;


