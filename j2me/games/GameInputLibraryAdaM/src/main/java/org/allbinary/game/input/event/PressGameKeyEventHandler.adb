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


package body org.allbinary.game.input.event.PressGameKeyEventHandler_Package is

   procedure Initialize_Fields (This : in out PressGameKeyEventHandler'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   function getInstance return PressGameKeyEventHandler_Access is
   begin
        return PressGameKeyEventHandler_Package.instance;
   end getInstance;

   procedure Initialize (This : in out PressGameKeyEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PressGameKeyEventHandler_Access is
      This : constant PressGameKeyEventHandler_Access := new PressGameKeyEventHandler;
   begin
      PressGameKeyEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out PressGameKeyEventHandler; playerGameInput_Param : access PlayerGameInput_Package.PlayerGameInput'Class) is
      playerGameInput : constant PlayerGameInput_Access := PlayerGameInput_Access (playerGameInput_Param);
   begin
        if not (This.list.contains (playerGameInput)) then
            This.list.add (playerGameInput);
        end if;
   end addListener;

   procedure removeAllListeners (This : in out PressGameKeyEventHandler) is
   begin
        This.list.clear;
        BasicEventHandler (This).removeAllListeners;
   end removeAllListeners;

   procedure removeListener (This : in out PressGameKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.list.remove (eventListenerInterface);
        BasicEventHandler (This).removeListener (eventListenerInterface);
   end removeListener;

   --  throws Exception
   procedure fireEvent (This : in out PressGameKeyEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      playerGameInput : PlayerGameInput_Access;
      index : Integer;
   begin
        index := This.list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            begin
                playerGameInput := PlayerGameInput_Access (This.list.objectArray (index));
                playerGameInput.onPressGameKeyEvent (GameKeyEvent_Access (eventObject));
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PressGameKeyEventHandler_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
        end loop;
        BasicEventHandler (This).fireEvent (eventObject);
   end fireEvent;

   --  throws Exception
   procedure process (This : in out PressGameKeyEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      pressGameKeyEventListenerInterface : PressGameKeyEventListenerInterface_Access;
   begin
        pressGameKeyEventListenerInterface := (PressGameKeyEventListenerInterface_Access (eventListenerInterface));
        pressGameKeyEventListenerInterface.onPressGameKeyEvent (GameKeyEvent_Access (eventObject));
   end process;

begin
   null;
   instance := PressGameKeyEventHandler_Package.Create;

end org.allbinary.game.input.event.PressGameKeyEventHandler_Package;


