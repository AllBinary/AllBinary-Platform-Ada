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



package body org.allbinary.game.input.event.DownKeyEventHandler_Package is

   procedure Initialize_Fields (This : in out DownKeyEventHandler'Class) is
   begin
      null;
      This.playerInputIdFactory := LocalPlayerInputIdFactory_Package.getInstance;
   end Initialize_Fields;


   function getInstance return DownKeyEventHandler_Access is
   begin
        return DownKeyEventHandler_Package.instance;
   end getInstance;

   function getInstanceForDevice (This : in out DownKeyEventHandler; deviceId : Integer) return DownKeyEventHandlerBase_Access is
      playerInputId : Integer;
   begin
        playerInputId := This.playerInputIdFactory.getPlayerForDevice (deviceId);
        return DownKeyEventHandler_Package.instanceArray (playerInputId);
   end getInstanceForDevice;

   function getInstanceForPlayer (This : in out DownKeyEventHandler; playerInputId : Integer) return DownKeyEventHandlerBase_Access is
   begin
        return DownKeyEventHandler_Package.instanceArray (playerInputId);
   end getInstanceForPlayer;

   procedure Initialize (This : in out DownKeyEventHandler'Class) is
   begin
      DownKeyEventHandlerBase_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DownKeyEventHandler_Access is
      This : constant DownKeyEventHandler_Access := new DownKeyEventHandler;
   begin
      DownKeyEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   procedure removeAllListeners (This : in out DownKeyEventHandler) is
      index : Integer;
   begin
        DownKeyEventHandlerBase (This).removeAllListeners;
        for index in reverse 0 .. (DownKeyEventHandler_Package.instanceArray'Length) - (1) loop
            DownKeyEventHandler_Package.instanceArray (index).removeAllListeners;
        end loop;
   end removeAllListeners;

   procedure removeListenerSingleThreaded (This : in out DownKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      index : Integer;
   begin
        DownKeyEventHandlerBase (This).removeListenerSingleThreaded (eventListenerInterface);
        for index in reverse 0 .. (DownKeyEventHandler_Package.instanceArray'Length) - (1) loop
            DownKeyEventHandler_Package.instanceArray (index).removeListenerSingleThreaded (eventListenerInterface);
        end loop;
   end removeListenerSingleThreaded;

   procedure removeListener (This : in out DownKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      index : Integer;
   begin
        DownKeyEventHandlerBase (This).removeListener (eventListenerInterface);
        for index in reverse 0 .. (DownKeyEventHandler_Package.instanceArray'Length) - (1) loop
            DownKeyEventHandler_Package.instanceArray (index).removeListener (eventListenerInterface);
        end loop;
   end removeListener;

   procedure getInstanceForDevice (This : in out DownKeyEventHandler; deviceId : Integer) is
      Java_Result : constant DownKeyEventHandlerBase_Access := DownKeyEventHandler'Class (This).getInstanceForDevice (deviceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForDevice;

   procedure getInstanceForPlayer (This : in out DownKeyEventHandler; playerInputId : Integer) is
      Java_Result : constant DownKeyEventHandlerBase_Access := DownKeyEventHandler'Class (This).getInstanceForPlayer (playerInputId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForPlayer;

begin
   null;
   instance := DownKeyEventHandler_Package.Create;
   instanceArray := new DownKeyEventHandlerBase_Access_Array'(DownKeyEventHandlerBase_Package.Create, DownKeyEventHandlerBase_Package.Create, DownKeyEventHandlerBase_Package.Create, DownKeyEventHandlerBase_Package.Create, DownKeyEventHandlerBase_Package.Create, DownKeyEventHandlerBase_Package.Create);

end org.allbinary.game.input.event.DownKeyEventHandler_Package;


