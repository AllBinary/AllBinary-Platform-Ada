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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package; use org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package; use org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package;

package body org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   procedure Initialize_Fields (This : in out GeographicMapCellPositionEventHandler'Class) is
   begin
      null;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
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

   procedure addListener (This : in out GeographicMapCellPositionEventHandler; miniMapLayer_Param : access MiniMapLayer_Package.MiniMapLayer'Class) is
      miniMapLayer : constant MiniMapLayer_Access := MiniMapLayer_Access (miniMapLayer_Param);
   begin
        if not (This.list.contains (Java_Object_Access (miniMapLayer))) then
            This.list.add (Java_Object_Access (miniMapLayer));
        end if;
   end addListener;

   procedure removeAllListeners (This : in out GeographicMapCellPositionEventHandler) is
   begin
        This.list.clear;
        BasicEventHandler (This).removeAllListeners;
   end removeAllListeners;

   procedure removeListener (This : in out GeographicMapCellPositionEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.list.remove (Java_Object_Access (eventListenerInterface));
        BasicEventHandler (This).removeListener (eventListenerInterface);
   end removeListener;

   --  throws Exception
   procedure fireEvent (This : in out GeographicMapCellPositionEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
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
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, GeographicMapCellPositionEventHandler_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
        end loop;
        BasicEventHandler (This).fireEvent (eventObject);
   end fireEvent;

   --  throws Exception
   procedure fireRemoveEvent (This : in out GeographicMapCellPositionEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
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
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, GeographicMapCellPositionEventHandler_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
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
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, GeographicMapCellPositionEventHandler_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
        end loop;
   end fireRemoveEvent;

   --  throws Exception
   procedure process (This : in out GeographicMapCellPositionEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      geographicMapCellPositionEventListenerInterface : GeographicMapCellPositionEventListenerInterface_Access;
   begin
        geographicMapCellPositionEventListenerInterface := (GeographicMapCellPositionEventListenerInterface_Access (eventListenerInterface));
        geographicMapCellPositionEventListenerInterface.onGeographicMapCellPositionEvent (GeographicMapCellPositionEvent_Access (eventObject));
   end process;

begin
   null;
   instance := GeographicMapCellPositionEventHandler_Package.Create;

end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package;


