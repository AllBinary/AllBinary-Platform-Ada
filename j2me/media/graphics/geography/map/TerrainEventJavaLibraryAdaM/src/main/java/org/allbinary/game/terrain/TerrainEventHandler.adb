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


package body org.allbinary.game.terrain.TerrainEventHandler_Package is

   procedure Initialize_Fields (This : in out TerrainEventHandler'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
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
            eventHandlerCanBeNull := TerrainEventHandler_Package.Create;
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
        if not (This.list.contains (terrainEventListener)) then
            This.list.add (terrainEventListener);
        end if;
   end addListener;

   procedure removeAllListeners (This : in out TerrainEventHandler) is
   begin
        This.list.clear;
        BasicEventHandler (This).removeAllListeners;
   end removeAllListeners;

   procedure removeListener (This : in out TerrainEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.list.remove (eventListenerInterface);
        BasicEventHandler (This).removeListener (eventListenerInterface);
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
        BasicEventHandler (This).fireEvent (eventObject);
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
      Java_Result : constant TerrainEventHandler_Access := getInstance (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   hashtable := StdUtil_Package.getInstance.NULL_TABLE;

end org.allbinary.game.terrain.TerrainEventHandler_Package;


