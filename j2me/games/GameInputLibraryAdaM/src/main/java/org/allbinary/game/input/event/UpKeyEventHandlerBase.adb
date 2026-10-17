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


package body org.allbinary.game.input.event.UpKeyEventHandlerBase_Package is

   procedure Initialize_Fields (This : in out UpKeyEventHandlerBase'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out UpKeyEventHandlerBase'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UpKeyEventHandlerBase_Access is
      This : constant UpKeyEventHandlerBase_Access := new UpKeyEventHandlerBase;
   begin
      UpKeyEventHandlerBase_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out UpKeyEventHandlerBase; playerGameInput_Param : access PlayerGameInput_Package.PlayerGameInput'Class) is
      playerGameInput : constant PlayerGameInput_Access := PlayerGameInput_Access (playerGameInput_Param);
   begin
        if not (This.list.contains (playerGameInput)) then
            This.list.add (playerGameInput);
        end if;
   end addListener;

   procedure removeAllListeners (This : in out UpKeyEventHandlerBase) is
   begin
        This.list.clear;
        BasicEventHandler (This).removeAllListeners;
   end removeAllListeners;

   procedure removeListenerSingleThreaded (This : in out UpKeyEventHandlerBase; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.list.remove (eventListenerInterface);
        BasicEventHandler (This).removeListenerSingleThreaded (eventListenerInterface);
   end removeListenerSingleThreaded;

   procedure removeListener (This : in out UpKeyEventHandlerBase; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.list.remove (eventListenerInterface);
        BasicEventHandler (This).removeListener (eventListenerInterface);
   end removeListener;

   --  throws Exception
   procedure fireEventForInteger (This : in out UpKeyEventHandlerBase; eventObject : Integer) is
      playerGameInput : PlayerGameInput_Access;
      index : Integer;
      eventListenerInterface : EventListenerInterface_Access;
   begin
        index := This.list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            begin
                playerGameInput := PlayerGameInput_Access (This.list.objectArray (index));
                playerGameInput.onUpKeyEvent (eventObject);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, UpKeyEventHandlerBase_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
        end loop;
        index := 0;
        eventListenerInterface := null;
        while (index) < (This.eventListenerInterfaceList.size) loop
            begin
                eventListenerInterface := EventListenerInterface_Access (This.eventListenerInterfaceList.get (index));
                This.processForInteger (eventObject, eventListenerInterface);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, UpKeyEventHandlerBase_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
            index := index + 1;
        end loop;
   end fireEventForInteger;

   --  throws Exception
   procedure processForInteger (This : in out UpKeyEventHandlerBase; eventObject : Integer; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      upKeyEventListenerInterface : UpKeyEventListenerInterface_Access;
   begin
        upKeyEventListenerInterface := UpKeyEventListenerInterface_Access (eventListenerInterface);
        upKeyEventListenerInterface.onUpKeyEvent (eventObject);
   end processForInteger;

   function toString (This : in out UpKeyEventHandlerBase) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      eventListenerInterface : EventListenerInterface_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (BasicEventHandler (This).toString);
        stringBuffer.append (UpKeyEventHandlerBase_Package.TOTAL_LISTENERS);
        stringBuffer.appendint (This.list.size);
        for index in 0 .. (This.list.size) - 1 loop
            begin
                eventListenerInterface := EventListenerInterface_Access (This.list.get (index));
                stringBuffer.append (UpKeyEventHandlerBase_Package.LISTENER_LABEL);
                stringBuffer.append (eventListenerInterface.toString);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, UpKeyEventHandlerBase_Access'(This'Unchecked_Access), This.commonStrings.TOSTRING, e);
                    end;
            end;
        end loop;
        return stringBuffer.toString;
   end toString;

begin
   null;
   TOTAL_LISTENERS := To_Unbounded_String (" Total PlayerGameInput Listeners: ");
   LISTENER_LABEL := To_Unbounded_String (" PlayerGameInput Listener: ");

end org.allbinary.game.input.event.UpKeyEventHandlerBase_Package;


