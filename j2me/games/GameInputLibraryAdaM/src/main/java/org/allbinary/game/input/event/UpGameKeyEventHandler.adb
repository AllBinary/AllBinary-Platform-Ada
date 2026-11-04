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
with org.allbinary.game.input.LocalPlayerInputIdFactory_Package_References;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with org.allbinary.game.input.event.DownGameKeyEventListenerInterface_Package;
with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventListenerInterface_Package;
with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package;
with org.allbinary.game.input.event.UpGameKeyEventListenerInterface_Package;

package body org.allbinary.game.input.event.UpGameKeyEventHandler_Package is

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
   procedure Initialize_Fields (This : in out UpGameKeyEventHandler'Class) is
   begin
      null;
      This.playerInputIdFactory := LocalPlayerInputIdFactory_Package.getInstance;
   end Initialize_Fields;


   function getInstance return UpGameKeyEventHandler_Access is
   begin
        return UpGameKeyEventHandler_Access (UpGameKeyEventHandler_Package.instance);
   end getInstance;

   function getInstanceForDevice (This : in out UpGameKeyEventHandler; deviceId : Integer) return UpGameKeyEventHandlerBase_Access is
      playerInputId : Integer;
   begin
        playerInputId := This.playerInputIdFactory.getPlayerForDevice (deviceId);
        return UpGameKeyEventHandler_Package.instanceArray (playerInputId);
   end getInstanceForDevice;

   function getInstanceForPlayer (This : in out UpGameKeyEventHandler; playerInputId : Integer) return UpGameKeyEventHandlerBase_Access is
   begin
        return UpGameKeyEventHandler_Package.instanceArray (playerInputId);
   end getInstanceForPlayer;

   procedure Initialize (This : in out UpGameKeyEventHandler'Class) is
   begin
      UpGameKeyEventHandlerBase_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UpGameKeyEventHandler_Access is
      This : constant UpGameKeyEventHandler_Access := new UpGameKeyEventHandler;
   begin
      UpGameKeyEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   procedure removeAllListeners (This : in out UpGameKeyEventHandler) is
      index : Integer;
   begin
        UpGameKeyEventHandlerBase_Package.UpGameKeyEventHandlerBase (This).removeAllListeners;
        for index in reverse 0 .. (UpGameKeyEventHandler_Package.instanceArray'Length) - (1) loop
            UpGameKeyEventHandler_Package.instanceArray (index).removeAllListeners;
        end loop;
   end removeAllListeners;

   procedure removeListenerSingleThreaded (This : in out UpGameKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      index : Integer;
   begin
        UpGameKeyEventHandlerBase_Package.UpGameKeyEventHandlerBase (This).removeListenerSingleThreaded (eventListenerInterface);
        for index in reverse 0 .. (UpGameKeyEventHandler_Package.instanceArray'Length) - (1) loop
            UpGameKeyEventHandler_Package.instanceArray (index).removeListenerSingleThreaded (eventListenerInterface);
        end loop;
   end removeListenerSingleThreaded;

   procedure removeListener (This : in out UpGameKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      index : Integer;
   begin
        UpGameKeyEventHandlerBase_Package.UpGameKeyEventHandlerBase (This).removeListener (eventListenerInterface);
        for index in reverse 0 .. (UpGameKeyEventHandler_Package.instanceArray'Length) - (1) loop
            UpGameKeyEventHandler_Package.instanceArray (index).removeListener (eventListenerInterface);
        end loop;
   end removeListener;

   procedure getInstanceForDevice (This : in out UpGameKeyEventHandler; deviceId : Integer) is
      Java_Result : constant UpGameKeyEventHandlerBase_Access := UpGameKeyEventHandler'Class (This).getInstanceForDevice (deviceId => deviceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForDevice;

   procedure getInstanceForPlayer (This : in out UpGameKeyEventHandler; playerInputId : Integer) is
      Java_Result : constant UpGameKeyEventHandlerBase_Access := UpGameKeyEventHandler'Class (This).getInstanceForPlayer (playerInputId => playerInputId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForPlayer;

begin
   null;
   instance := UpGameKeyEventHandler_Package.Create;
   instanceArray := new UpGameKeyEventHandlerBase_Access_Array'(UpGameKeyEventHandlerBase_Package.Create, UpGameKeyEventHandlerBase_Package.Create, UpGameKeyEventHandlerBase_Package.Create, UpGameKeyEventHandlerBase_Package.Create, UpGameKeyEventHandlerBase_Package.Create, UpGameKeyEventHandlerBase_Package.Create);

end org.allbinary.game.input.event.UpGameKeyEventHandler_Package;


