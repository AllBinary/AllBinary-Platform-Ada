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


package body org.allbinary.layer.event.LayerManagerEventHandler_Package is

   procedure Initialize_Fields (This : in out LayerManagerEventHandler'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
      This.CREATE := To_Unbounded_String ("Create");
      This.DELETE := To_Unbounded_String ("Delete");
   end Initialize_Fields;


   function getInstance return LayerManagerEventHandler_Access is
   begin
        return LayerManagerEventHandler_Package.instance;
   end getInstance;

   procedure Initialize (This : in out LayerManagerEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LayerManagerEventHandler_Access is
      This : constant LayerManagerEventHandler_Access := new LayerManagerEventHandler;
   begin
      LayerManagerEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out LayerManagerEventHandler; layerManagerEventListener_Param : access LayerManagerEventListener'Class) is
      layerManagerEventListener : LayerManagerEventListener_Access := LayerManagerEventListener_Access (layerManagerEventListener_Param);
   begin
        if not (This.list.contains (layerManagerEventListener)) then
            This.list.add (layerManagerEventListener);
        end if;
   end addListener;

   procedure removeAllListeners (This : in out LayerManagerEventHandler) is
   begin
        This.list.clear;
        BasicEventHandler (This).removeAllListeners;
   end removeAllListeners;

   procedure removeListener (This : in out LayerManagerEventHandler; eventListenerInterface_Param : access EventListenerInterface'Class) is
      eventListenerInterface : EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.list.remove (eventListenerInterface);
        BasicEventHandler (This).removeListener (eventListenerInterface);
   end removeListener;

   --  throws Exception
   procedure fireEvent (This : in out LayerManagerEventHandler; eventObject_Param : access AllBinaryEventObject'Class) is
      eventObject : AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      layerManagerEventListener : LayerManagerEventListener_Access;
      index : Integer;
   begin
        index := This.list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            begin
                layerManagerEventListener := LayerManagerEventListener_Access (This.list.objectArray (index));
                layerManagerEventListener.onCreateLayerManagerEvent (LayerManagerEvent_Access (eventObject));
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, LayerManagerEventHandler_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
        end loop;
        BasicEventHandler (This).fireEvent (eventObject);
   end fireEvent;

   --  throws Exception
   procedure fireDeleteEvent (This : in out LayerManagerEventHandler; eventObject_Param : access AllBinaryEventObject'Class) is
      eventObject : AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      layerManagerEventListener : LayerManagerEventListener_Access;
      index : Integer;
      eventListenerInterfaceList : BasicArrayList_Access;
      eventListenerInterface : EventListenerInterface_Access;
      layerManagerEventListenerInterface : LayerManagerEventListenerInterface_Access;
   begin
        index := This.list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            begin
                layerManagerEventListener := LayerManagerEventListener_Access (This.list.objectArray (index));
                layerManagerEventListener.onDeleteLayerManagerEvent (LayerManagerEvent_Access (eventObject));
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, LayerManagerEventHandler_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
        end loop;
        eventListenerInterfaceList := This.eventListenerInterfaceList;
        eventListenerInterface := null;
        layerManagerEventListenerInterface := null;
        index := 0;
        while (index) < (eventListenerInterfaceList.size) loop
            begin
                eventListenerInterface := EventListenerInterface_Access (eventListenerInterfaceList.objectArray (index));
                layerManagerEventListenerInterface := (LayerManagerEventListenerInterface_Access (eventListenerInterface));
                layerManagerEventListenerInterface.onDeleteLayerManagerEvent (LayerManagerEvent_Access (eventObject));
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, LayerManagerEventHandler_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
            index := index + 1;
        end loop;
   end fireDeleteEvent;

   --  throws Exception
   procedure process (This : in out LayerManagerEventHandler; eventObject_Param : access AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface'Class) is
      eventObject : AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      layerManagerEventListenerInterface : LayerManagerEventListenerInterface_Access;
   begin
        layerManagerEventListenerInterface := (LayerManagerEventListenerInterface_Access (eventListenerInterface));
        layerManagerEventListenerInterface.onCreateLayerManagerEvent (LayerManagerEvent_Access (eventObject));
   end process;

begin
   null;
   instance := LayerManagerEventHandler_Package.Create;

end org.allbinary.layer.event.LayerManagerEventHandler_Package;


