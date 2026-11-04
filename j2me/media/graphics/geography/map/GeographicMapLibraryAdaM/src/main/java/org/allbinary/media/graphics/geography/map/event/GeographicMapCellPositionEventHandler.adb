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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.layer.geographic.map.MiniMapLayer_Package; use org.allbinary.game.layer.geographic.map.MiniMapLayer_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package; use org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package; use org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;
with org.allbinary.game.layer.geographic.map.MiniMapLayer_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package;

package body org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
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
   subtype MiniMapLayer_Access is org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References.MiniMapLayer_Access;
   function "=" (Left, Right : MiniMapLayer_Access) return Boolean renames org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References."=";
   subtype MiniMapLayer_Access_Array is org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References.MiniMapLayer_Access_Array;
   function "=" (Left, Right : MiniMapLayer_Access_Array) return Boolean renames org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References."=";
   subtype MiniMapLayer_Access_Array_Access is org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References.MiniMapLayer_Access_Array_Access;
   function "=" (Left, Right : MiniMapLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References."=";
   subtype MiniMapLayer_Access_Array_Access_Array is org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References.MiniMapLayer_Access_Array_Access_Array;
   function "=" (Left, Right : MiniMapLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References."=";
   subtype MiniMapLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References.MiniMapLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MiniMapLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References."=";
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
   procedure Initialize_Fields (This : in out GeographicMapCellPositionEventHandler'Class) is
   begin
      null;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   function getInstance return GeographicMapCellPositionEventHandler_Access is
   begin
        return GeographicMapCellPositionEventHandler_Access (GeographicMapCellPositionEventHandler_Package.instance);
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
        This.list.remove (EventListenerInterface_Package.Java_Object_Access_From_EventListenerInterface (eventListenerInterface));
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


