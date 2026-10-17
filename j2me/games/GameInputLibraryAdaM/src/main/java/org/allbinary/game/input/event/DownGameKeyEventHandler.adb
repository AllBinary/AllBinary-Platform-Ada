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


package body org.allbinary.game.input.event.DownGameKeyEventHandler_Package is

   procedure Initialize_Fields (This : in out DownGameKeyEventHandler'Class) is
   begin
      null;
      This.playerInputIdFactory := LocalPlayerInputIdFactory_Package.getInstance;
   end Initialize_Fields;


   function getInstance return DownGameKeyEventHandler_Access is
   begin
        return DownGameKeyEventHandler_Package.instance;
   end getInstance;

   function getInstanceForDevice (This : in out DownGameKeyEventHandler; deviceId : Integer) return DownGameKeyEventHandlerBase_Access is
      playerInputId : Integer;
   begin
        playerInputId := This.playerInputIdFactory.getPlayerForDevice (deviceId);
        return DownGameKeyEventHandler_Package.instanceArray (playerInputId);
   end getInstanceForDevice;

   function getInstanceForPlayer (This : in out DownGameKeyEventHandler; playerInputId : Integer) return DownGameKeyEventHandlerBase_Access is
   begin
        return DownGameKeyEventHandler_Package.instanceArray (playerInputId);
   end getInstanceForPlayer;

   procedure Initialize (This : in out DownGameKeyEventHandler'Class) is
   begin
      DownGameKeyEventHandlerBase_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DownGameKeyEventHandler_Access is
      This : constant DownGameKeyEventHandler_Access := new DownGameKeyEventHandler;
   begin
      DownGameKeyEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   procedure removeAllListeners (This : in out DownGameKeyEventHandler) is
      index : Integer;
   begin
        DownGameKeyEventHandlerBase (This).removeAllListeners;
        for index in reverse 0 .. (DownGameKeyEventHandler_Package.instanceArray'Length) - (1) loop
            DownGameKeyEventHandler_Package.instanceArray (index).removeAllListeners;
        end loop;
   end removeAllListeners;

   procedure removeListenerSingleThreaded (This : in out DownGameKeyEventHandler; eventListenerInterface : EventListenerInterface_Access) is
      index : Integer;
   begin
        DownGameKeyEventHandlerBase (This).removeListenerSingleThreaded (eventListenerInterface);
        for index in reverse 0 .. (DownGameKeyEventHandler_Package.instanceArray'Length) - (1) loop
            DownGameKeyEventHandler_Package.instanceArray (index).removeListenerSingleThreaded (eventListenerInterface);
        end loop;
   end removeListenerSingleThreaded;

   procedure removeListener (This : in out DownGameKeyEventHandler; eventListenerInterface : EventListenerInterface_Access) is
      index : Integer;
   begin
        DownGameKeyEventHandlerBase (This).removeListener (eventListenerInterface);
        for index in reverse 0 .. (DownGameKeyEventHandler_Package.instanceArray'Length) - (1) loop
            DownGameKeyEventHandler_Package.instanceArray (index).removeListener (eventListenerInterface);
        end loop;
   end removeListener;

   procedure getInstanceForDevice (This : in out DownGameKeyEventHandler; deviceId : Integer) is
      Java_Result : constant DownGameKeyEventHandlerBase_Access := DownGameKeyEventHandler'Class (This).getInstanceForDevice (deviceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForDevice;

   procedure getInstanceForPlayer (This : in out DownGameKeyEventHandler; playerInputId : Integer) is
      Java_Result : constant DownGameKeyEventHandlerBase_Access := DownGameKeyEventHandler'Class (This).getInstanceForPlayer (playerInputId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForPlayer;

begin
   null;
   instance := DownGameKeyEventHandler_Package.Create;
   instanceArray := new DownGameKeyEventHandlerBase_Access_Array'(DownGameKeyEventHandlerBase_Package.Create, DownGameKeyEventHandlerBase_Package.Create, DownGameKeyEventHandlerBase_Package.Create, DownGameKeyEventHandlerBase_Package.Create, DownGameKeyEventHandlerBase_Package.Create, DownGameKeyEventHandlerBase_Package.Create);

end org.allbinary.game.input.event.DownGameKeyEventHandler_Package;


