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


with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.terrain.TerrainEventListener_Package; use org.allbinary.game.terrain.TerrainEventListener_Package;
with org.allbinary.game.terrain.TerrainEventListener_Package_References;
with org.allbinary.game.terrain.TerrainEvent_Package; use org.allbinary.game.terrain.TerrainEvent_Package;
with org.allbinary.game.terrain.TerrainEventListenerInterface_Package; use org.allbinary.game.terrain.TerrainEventListenerInterface_Package;
with org.allbinary.game.terrain.BasicTerrainInfo_Package;
with org.allbinary.game.terrain.TerrainEvent_Package;
with org.allbinary.game.terrain.TerrainEventListener_Package;
with org.allbinary.game.terrain.TerrainEventListenerInterface_Package;

package body org.allbinary.game.terrain.TerrainEventHandler_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
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
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
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
   subtype TerrainEventListener_Access is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access;
   function "=" (Left, Right : TerrainEventListener_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
   subtype TerrainEventListener_Access_Array is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array;
   function "=" (Left, Right : TerrainEventListener_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
   subtype TerrainEventListener_Access_Array_Access is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array_Access;
   function "=" (Left, Right : TerrainEventListener_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
   subtype TerrainEventListener_Access_Array_Access_Array is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : TerrainEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
   subtype TerrainEventListener_Access_Array_Access_Array_Access is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TerrainEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
   procedure Initialize_Fields (This : in out TerrainEventHandler'Class) is
   begin
      null;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   procedure init is
   begin
        TerrainEventHandler_Package.hashtable := StdUtil_Package.getInstance.createHashtable;
   end init;

   function getInstance (anyType_Param : access Java_Object'Class) return TerrainEventHandler_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      eventHandlerCanBeNull : Java_Object_Access;
   begin
        eventHandlerCanBeNull := TerrainEventHandler_Package.hashtable.get (anyType);
        if (eventHandlerCanBeNull) = (null) then
            eventHandlerCanBeNull := Java_Object_Access (TerrainEventHandler_Package.Create);
            TerrainEventHandler_Package.hashtable.put (anyType, eventHandlerCanBeNull);
        end if;
        return TerrainEventHandler_Access (eventHandlerCanBeNull);
   end getInstance;

   procedure Initialize (This : in out TerrainEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TerrainEventHandler_Access is
      This : constant TerrainEventHandler_Access := new TerrainEventHandler;
   begin
      TerrainEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addListener (This : in out TerrainEventHandler; terrainEventListener_Param : access TerrainEventListener_Package.TerrainEventListener'Class) is
      terrainEventListener : constant TerrainEventListener_Access := TerrainEventListener_Access (terrainEventListener_Param);
   begin
        if not (This.list.contains (Java_Object_Access (terrainEventListener))) then
            This.list.add (Java_Object_Access (terrainEventListener));
        end if;
   end addListener;

   procedure removeAllListeners (This : in out TerrainEventHandler) is
   begin
        This.list.clear;
        BasicEventHandler_Package.BasicEventHandler (This).removeAllListeners;
   end removeAllListeners;

   procedure removeListener (This : in out TerrainEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.list.remove (EventListenerInterface_Package.Java_Object_Access_From_EventListenerInterface (eventListenerInterface));
        BasicEventHandler_Package.BasicEventHandler (This).removeListener (eventListenerInterface);
   end removeListener;

   --  throws Exception
   procedure fireEvent (This : in out TerrainEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      terrainEventListener : TerrainEventListener_Access;
      index : Integer;
   begin
        index := This.list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            begin
                terrainEventListener := TerrainEventListener_Access (This.list.get (index));
                terrainEventListener.onTerrainEvent (TerrainEvent_Access (eventObject));
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, TerrainEventHandler_Access'(This'Unchecked_Access), EventStrings_Package.getInstance.FIRE_EVENT, e);
                    end;
            end;
        end loop;
        BasicEventHandler_Package.BasicEventHandler (This).fireEvent (eventObject);
   end fireEvent;

   --  throws Exception
   procedure process (This : in out TerrainEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      terrainEventListenerInterface : TerrainEventListenerInterface_Access;
   begin
        terrainEventListenerInterface := TerrainEventListenerInterface_Access (eventListenerInterface);
        terrainEventListenerInterface.onTerrainEvent (TerrainEvent_Access (eventObject));
   end process;

   procedure getInstance (anyType_Param : access Java_Object'Class) is
      Java_Result : constant TerrainEventHandler_Access := getInstance (anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   function getInstance (Value : Unbounded_String) return TerrainEventHandler_Access is
   begin
      return getInstance (Java_Box (Value));
   end getInstance;

   procedure getInstance (Value : Unbounded_String) is
      Java_Result : constant TerrainEventHandler_Access := getInstance (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   hashtable := ABHashtable_Access (StdUtil_Package.getInstance.NULL_TABLE);

end org.allbinary.game.terrain.TerrainEventHandler_Package;


