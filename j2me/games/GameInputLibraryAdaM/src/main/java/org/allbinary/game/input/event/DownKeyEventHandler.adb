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


with org.allbinary.game.input.LocalPlayerInputIdFactory_Package; use org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.game.input.event.DownGameKeyEventListenerInterface_Package;
with org.allbinary.game.input.event.DownKeyEventHandlerBase_Package;
with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventListenerInterface_Package;
with org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package;
with org.allbinary.game.input.event.UpGameKeyEventListenerInterface_Package;

package body org.allbinary.game.input.event.DownKeyEventHandler_Package is

   subtype LocalPlayerInputIdFactory_Access is org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.LocalPlayerInputIdFactory_Access;
   function "=" (Left, Right : LocalPlayerInputIdFactory_Access) return Boolean renames org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References."=";
   subtype LocalPlayerInputIdFactory_Access_Array is org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.LocalPlayerInputIdFactory_Access_Array;
   function "=" (Left, Right : LocalPlayerInputIdFactory_Access_Array) return Boolean renames org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References."=";
   subtype LocalPlayerInputIdFactory_Access_Array_Access is org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.LocalPlayerInputIdFactory_Access_Array_Access;
   function "=" (Left, Right : LocalPlayerInputIdFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References."=";
   subtype LocalPlayerInputIdFactory_Access_Array_Access_Array is org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.LocalPlayerInputIdFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LocalPlayerInputIdFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References."=";
   subtype LocalPlayerInputIdFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References.LocalPlayerInputIdFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LocalPlayerInputIdFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References."=";
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
   procedure Initialize_Fields (This : in out DownKeyEventHandler'Class) is
   begin
      null;
      This.playerInputIdFactory := LocalPlayerInputIdFactory_Package.getInstance;
   end Initialize_Fields;


   function getInstance return DownKeyEventHandler_Access is
   begin
        return DownKeyEventHandler_Access (DownKeyEventHandler_Package.instance);
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
      Java_Result : constant DownKeyEventHandlerBase_Access := DownKeyEventHandler'Class (This).getInstanceForDevice (deviceId => deviceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForDevice;

   procedure getInstanceForPlayer (This : in out DownKeyEventHandler; playerInputId : Integer) is
      Java_Result : constant DownKeyEventHandlerBase_Access := DownKeyEventHandler'Class (This).getInstanceForPlayer (playerInputId => playerInputId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForPlayer;

begin
   null;
   instance := DownKeyEventHandler_Package.Create;
   instanceArray := new DownKeyEventHandlerBase_Access_Array'(DownKeyEventHandlerBase_Package.Create, DownKeyEventHandlerBase_Package.Create, DownKeyEventHandlerBase_Package.Create, DownKeyEventHandlerBase_Package.Create, DownKeyEventHandlerBase_Package.Create, DownKeyEventHandlerBase_Package.Create);

end org.allbinary.game.input.event.DownKeyEventHandler_Package;


