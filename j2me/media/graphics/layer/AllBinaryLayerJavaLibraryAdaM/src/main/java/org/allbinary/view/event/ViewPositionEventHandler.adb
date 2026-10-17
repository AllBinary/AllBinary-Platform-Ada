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


package body org.allbinary.view.event.ViewPositionEventHandler_Package is

   procedure Initialize_Fields (This : in out ViewPositionEventHandler'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   function getInstance return ViewPositionEventHandler_Access is
   begin
        return ViewPositionEventHandler_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out ViewPositionEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ViewPositionEventHandler_Access is
      This : constant ViewPositionEventHandler_Access := new ViewPositionEventHandler;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out ViewPositionEventHandler; layerInterface : AllBinaryLayer_Access) is
   begin
        if not (This.list.contains (layerInterface)) then
            This.list.add (layerInterface);
        end if;
   end addListener;

   procedure removeAllListeners (This : in out ViewPositionEventHandler) is
   begin
        This.list.clear;
        BasicEventHandler (This).removeAllListeners;
   end removeAllListeners;

   procedure removeListener (This : in out ViewPositionEventHandler; eventListenerInterface : EventListenerInterface_Access) is
   begin
        This.list.remove (eventListenerInterface);
        BasicEventHandler (This).removeListener (eventListenerInterface);
   end removeListener;

   --  throws Exception
   procedure fireEvent (This : in out ViewPositionEventHandler; eventObject : AllBinaryEventObject_Access) is
      layerInterface : AllBinaryLayer_Access;
      index : Integer;
   begin
        index := This.list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            begin
                layerInterface := AllBinaryLayer_Access (This.list.objectArray (index));
                layerInterface.onChangeEvent (ViewPositionEvent_Access (eventObject));
            exception
                when e : others =>
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, EventStrings_Package.getInstance.FIRE_EVENT, e);
            end;
        end loop;
        BasicEventHandler (This).fireEvent (eventObject);
   end fireEvent;

   --  throws Exception
   procedure process (This : in out ViewPositionEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access) is
      viewPositionEventListenerInterface : ViewPositionEventListenerInterface_Access;
   begin
        viewPositionEventListenerInterface := (ViewPositionEventListenerInterface_Access (eventListenerInterface));
        viewPositionEventListenerInterface.onChangeEvent (ViewPositionEvent_Access (eventObject));
   end process;

   procedure getInstance is
      Java_Result : constant ViewPositionEventHandler_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   SINGLETON := ViewPositionEventHandler_Package.Create;

end org.allbinary.view.event.ViewPositionEventHandler_Package;


