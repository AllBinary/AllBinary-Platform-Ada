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


package body org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package is

   procedure Initialize_Fields (This : in out GeographicMapCellPositionEventHandler'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   function getInstance return GeographicMapCellPositionEventHandler_Access is
   begin
        return GeographicMapCellPositionEventHandler_Package.instance;
   end getInstance;

   procedure Initialize (This : in out GeographicMapCellPositionEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GeographicMapCellPositionEventHandler_Access is
      This : constant GeographicMapCellPositionEventHandler_Access := new GeographicMapCellPositionEventHandler;
   begin
      GeographicMapCellPositionEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out GeographicMapCellPositionEventHandler; miniMapLayer : MiniMapLayer_Access) is
   begin
        if not (This.list.contains (miniMapLayer)) then
            This.list.add (miniMapLayer);
        end if;
   end addListener;

   procedure removeAllListeners (This : in out GeographicMapCellPositionEventHandler) is
   begin
        This.list.clear;
        BasicEventHandler (This).removeAllListeners;
   end removeAllListeners;

   procedure removeListener (This : in out GeographicMapCellPositionEventHandler; eventListenerInterface : EventListenerInterface_Access) is
   begin
        This.list.remove (eventListenerInterface);
        BasicEventHandler (This).removeListener (eventListenerInterface);
   end removeListener;

   --  throws Exception
   procedure fireEvent (This : in out GeographicMapCellPositionEventHandler; eventObject : AllBinaryEventObject_Access) is
      miniMapLayer : MiniMapLayer_Access;
      index : Integer;
   begin
        index := This.list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            begin
                miniMapLayer := MiniMapLayer_Access (This.list.get (index));
                miniMapLayer.onGeographicMapCellPositionEvent (GeographicMapCellPositionEvent_Access (eventObject));
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
   procedure fireRemoveEvent (This : in out GeographicMapCellPositionEventHandler; eventObject : AllBinaryEventObject_Access) is
      list : BasicArrayList_Access;
      miniMapLayer : MiniMapLayer_Access;
      index : Integer;
      eventListenerInterface : EventListenerInterface_Access;
      geographicMapCellPositionEventListenerInterface : GeographicMapCellPositionEventListenerInterface_Access;
      size : Integer;
   begin
        list := This.eventListenerInterfaceList;
        index := This.list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            begin
                miniMapLayer := MiniMapLayer_Access (This.list.get (index));
                miniMapLayer.onRemoveGeographicMapCellPositionEvent (GeographicMapCellPositionEvent_Access (eventObject));
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
        end loop;
        eventListenerInterface := null;
        geographicMapCellPositionEventListenerInterface := null;
        size := list.size;
        for index in 0 .. (size) - 1 loop
            begin
                eventListenerInterface := EventListenerInterface_Access (list.get (index));
                geographicMapCellPositionEventListenerInterface := (GeographicMapCellPositionEventListenerInterface_Access (eventListenerInterface));
                geographicMapCellPositionEventListenerInterface.onRemoveGeographicMapCellPositionEvent (GeographicMapCellPositionEvent_Access (eventObject));
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
        end loop;
   end fireRemoveEvent;

   --  throws Exception
   procedure process (This : in out GeographicMapCellPositionEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access) is
      geographicMapCellPositionEventListenerInterface : GeographicMapCellPositionEventListenerInterface_Access;
   begin
        geographicMapCellPositionEventListenerInterface := (GeographicMapCellPositionEventListenerInterface_Access (eventListenerInterface));
        geographicMapCellPositionEventListenerInterface.onGeographicMapCellPositionEvent (GeographicMapCellPositionEvent_Access (eventObject));
   end process;

begin
   null;
   instance := GeographicMapCellPositionEventHandler_Package.Create;

end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package;


