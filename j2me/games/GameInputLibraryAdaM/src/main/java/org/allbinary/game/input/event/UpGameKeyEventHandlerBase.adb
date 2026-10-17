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


package body org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package is

   procedure Initialize_Fields (This : in out UpGameKeyEventHandlerBase'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out UpGameKeyEventHandlerBase'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UpGameKeyEventHandlerBase_Access is
      This : constant UpGameKeyEventHandlerBase_Access := new UpGameKeyEventHandlerBase;
   begin
      UpGameKeyEventHandlerBase_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out UpGameKeyEventHandlerBase; playerGameInput : PlayerGameInput_Access) is
   begin
        if not (This.list.contains (playerGameInput)) then
            This.list.add (playerGameInput);
        end if;
   end addListener;

   procedure removeAllListeners (This : in out UpGameKeyEventHandlerBase) is
   begin
        This.list.clear;
        BasicEventHandler (This).removeAllListeners;
   end removeAllListeners;

   procedure removeListenerSingleThreaded (This : in out UpGameKeyEventHandlerBase; eventListenerInterface : EventListenerInterface_Access) is
   begin
        This.list.remove (eventListenerInterface);
        BasicEventHandler (This).removeListenerSingleThreaded (eventListenerInterface);
   end removeListenerSingleThreaded;

   procedure removeListener (This : in out UpGameKeyEventHandlerBase; eventListenerInterface : EventListenerInterface_Access) is
   begin
        This.list.remove (eventListenerInterface);
        BasicEventHandler (This).removeListener (eventListenerInterface);
   end removeListener;

   --  throws Exception
   procedure fireEvent (This : in out UpGameKeyEventHandlerBase; eventObject : AllBinaryEventObject_Access) is
      playerGameInput : PlayerGameInput_Access;
      index : Integer;
   begin
        index := This.list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            begin
                playerGameInput := PlayerGameInput_Access (This.list.objectArray (index));
                playerGameInput.onUpGameKeyEvent (GameKeyEvent_Access (eventObject));
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
        end loop;
        BasicEventHandler (This).fireEvent (eventObject);
   end fireEvent;

   --  throws Exception
   procedure process (This : in out UpGameKeyEventHandlerBase; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access) is
      upGameKeyEventListenerInterface : UpGameKeyEventListenerInterface_Access;
   begin
        upGameKeyEventListenerInterface := UpGameKeyEventListenerInterface_Access (eventListenerInterface);
        upGameKeyEventListenerInterface.onUpGameKeyEvent (GameKeyEvent_Access (eventObject));
   end process;

   function toString (This : in out UpGameKeyEventHandlerBase) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      size : Integer;
      eventListenerInterface : EventListenerInterface_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        size := This.list.size;
        stringBuffer.append (BasicEventHandler (This).toString);
        stringBuffer.append (UpGameKeyEventHandlerBase_Package.TOTAL_LISTENERS);
        stringBuffer.appendint (size);
        for index in 0 .. (size) - 1 loop
            begin
                eventListenerInterface := EventListenerInterface_Access (This.list.get (index));
                stringBuffer.append (UpGameKeyEventHandlerBase_Package.LISTENER_LABEL);
                stringBuffer.append (eventListenerInterface.toString);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.TOSTRING, e);
                    end;
            end;
        end loop;
        return stringBuffer.toString;
   end toString;

begin
   null;
   TOTAL_LISTENERS := To_Unbounded_String (" Total PlayerGameInput Listeners: ");
   LISTENER_LABEL := To_Unbounded_String (" PlayerGameInput Listener: ");

end org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package;


