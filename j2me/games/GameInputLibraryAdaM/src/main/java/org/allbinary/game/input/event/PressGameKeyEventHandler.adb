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
      Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out PressGameKeyEventHandler; playerGameInput : PlayerGameInput_Access) is
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

   procedure removeListener (This : in out PressGameKeyEventHandler; eventListenerInterface : EventListenerInterface_Access) is
   begin
        This.list.remove (eventListenerInterface);
        BasicEventHandler (This).removeListener (eventListenerInterface);
   end removeListener;

   --  throws Exception
   procedure fireEvent (This : in out PressGameKeyEventHandler; eventObject : AllBinaryEventObject_Access) is
      playerGameInput : PlayerGameInput_Access;
      index : Integer;
   begin
        index := This.list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            begin
                playerGameInput := PlayerGameInput_Access (This.list.objectArray (index));
                playerGameInput.onPressGameKeyEvent (GameKeyEvent_Access (eventObject));
            exception
                when e : others =>
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, EventStrings_Package.getInstance.FIRE_EVENT, e);
            end;
        end loop;
        BasicEventHandler (This).fireEvent (eventObject);
   end fireEvent;

   --  throws Exception
   procedure process (This : in out PressGameKeyEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access) is
      pressGameKeyEventListenerInterface : PressGameKeyEventListenerInterface_Access;
   begin
        pressGameKeyEventListenerInterface := (PressGameKeyEventListenerInterface_Access (eventListenerInterface));
        pressGameKeyEventListenerInterface.onPressGameKeyEvent (GameKeyEvent_Access (eventObject));
   end process;

   procedure getInstance is
      Java_Result : constant PressGameKeyEventHandler_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := PressGameKeyEventHandler_Package.Create;

end org.allbinary.game.input.event.PressGameKeyEventHandler_Package;


