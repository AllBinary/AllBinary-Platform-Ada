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
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.input.event.DownKeyEventListenerInterface_Package; use org.allbinary.game.input.event.DownKeyEventListenerInterface_Package;

package body org.allbinary.game.input.event.DownKeyEventHandlerBase_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out DownKeyEventHandlerBase'Class) is
   begin
      null;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   procedure Initialize (This : in out DownKeyEventHandlerBase'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DownKeyEventHandlerBase_Access is
      This : constant DownKeyEventHandlerBase_Access := new DownKeyEventHandlerBase;
   begin
      DownKeyEventHandlerBase_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out DownKeyEventHandlerBase; playerGameInput_Param : access PlayerGameInput_Package.PlayerGameInput'Class) is
      playerGameInput : constant PlayerGameInput_Access := PlayerGameInput_Access (playerGameInput_Param);
   begin
        if not (This.list.contains (Java_Object_Access (playerGameInput))) then
            This.list.add (Java_Object_Access (playerGameInput));
        end if;
   end addListener;

   procedure removeAllListeners (This : in out DownKeyEventHandlerBase) is
   begin
        This.list.clear;
        BasicEventHandler (This).removeAllListeners;
   end removeAllListeners;

   procedure removeListenerSingleThreaded (This : in out DownKeyEventHandlerBase; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.list.remove (Java_Object_Access (eventListenerInterface));
        BasicEventHandler (This).removeListenerSingleThreaded (eventListenerInterface);
   end removeListenerSingleThreaded;

   procedure removeListener (This : in out DownKeyEventHandlerBase; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.list.remove (Java_Object_Access (eventListenerInterface));
        BasicEventHandler (This).removeListener (eventListenerInterface);
   end removeListener;

   --  throws Exception
   procedure fireEventI (This : in out DownKeyEventHandlerBase; eventObject : Integer) is
      playerGameInput : PlayerGameInput_Access;
      index : Integer;
      eventListenerInterface : EventListenerInterface_Access;
   begin
        index := This.list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            begin
                playerGameInput := PlayerGameInput_Access (This.list.objectArray (index));
                playerGameInput.onDownKey (eventObject);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, DownKeyEventHandlerBase_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
        end loop;
        index := 0;
        eventListenerInterface := null;
        while (index) < (This.eventListenerInterfaceList.size) loop
            begin
                eventListenerInterface := EventListenerInterface_Access (This.eventListenerInterfaceList.get (index));
                DownKeyEventHandlerBase'Class (This).processI (eventObject, eventListenerInterface);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, DownKeyEventHandlerBase_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
            index := index + 1;
        end loop;
   end fireEventI;

   --  throws Exception
   procedure fireEventForGameKeyEvent (This : in out DownKeyEventHandlerBase; eventObject_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      eventObject : constant GameKeyEvent_Access := GameKeyEvent_Access (eventObject_Param);
      size : Integer;
      playerGameInput : PlayerGameInput_Access;
      index : Integer;
      eventListenerInterface : EventListenerInterface_Access;
   begin
        size := This.list.size;
        index := size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            begin
                playerGameInput := PlayerGameInput_Access (This.list.objectArray (index));
                playerGameInput.onDownKeyEvent (eventObject);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, DownKeyEventHandlerBase_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
        end loop;
        index := 0;
        eventListenerInterface := null;
        while (index) < (This.eventListenerInterfaceList.size) loop
            begin
                eventListenerInterface := EventListenerInterface_Access (This.eventListenerInterfaceList.get (index));
                DownKeyEventHandlerBase'Class (This).processEvent (eventObject, eventListenerInterface);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, DownKeyEventHandlerBase_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
            index := index + 1;
        end loop;
   end fireEventForGameKeyEvent;

   --  throws Exception
   procedure processI (This : in out DownKeyEventHandlerBase; eventObject : Integer; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      downKeyEventListenerInterface : DownKeyEventListenerInterface_Access;
   begin
        downKeyEventListenerInterface := DownKeyEventListenerInterface_Access (eventListenerInterface);
        downKeyEventListenerInterface.onDownKey (eventObject);
   end processI;

   --  throws Exception
   procedure processEvent (This : in out DownKeyEventHandlerBase; eventObject_Param : access GameKeyEvent_Package.GameKeyEvent'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventObject : constant GameKeyEvent_Access := GameKeyEvent_Access (eventObject_Param);
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      downKeyEventListenerInterface : DownKeyEventListenerInterface_Access;
   begin
        downKeyEventListenerInterface := DownKeyEventListenerInterface_Access (eventListenerInterface);
        downKeyEventListenerInterface.onDownKeyEvent (eventObject);
   end processEvent;

   function toString (This : in out DownKeyEventHandlerBase) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      eventListenerInterface : EventListenerInterface_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (BasicEventHandler (This).toString);
        stringBuffer.append (DownKeyEventHandlerBase_Package.TOTAL_LISTENERS);
        stringBuffer.appendint (This.list.size);
        eventListenerInterface := null;
        for index in 0 .. (This.list.size) - 1 loop
            begin
                eventListenerInterface := EventListenerInterface_Access (This.list.get (index));
                stringBuffer.append (DownKeyEventHandlerBase_Package.LISTENER_LABEL);
                stringBuffer.append (Java_Object'Class (eventListenerInterface.all).toString);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, DownKeyEventHandlerBase_Access'(This'Unchecked_Access), This.commonStrings.TOSTRING, e);
                    end;
            end;
        end loop;
        return stringBuffer.toString;
   end toString;

begin
   null;
   TOTAL_LISTENERS := To_Unbounded_String (" Total PlayerGameInput Listeners: ");
   LISTENER_LABEL := To_Unbounded_String (" PlayerGameInput Listener: ");

end org.allbinary.game.input.event.DownKeyEventHandlerBase_Package;


