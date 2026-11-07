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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.game.input.event.PressGameKeyEventHandler_Package; use org.allbinary.game.input.event.PressGameKeyEventHandler_Package;
with org.allbinary.game.input.event.PressGameKeyEventHandler_Package_References;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package; use org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package; use org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package;
with org.allbinary.game.input.event.DownGameKeyEventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventListenerInterface_Package;
with org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.event.PressGameKeyEventHandler_Package;
with org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package;
with org.allbinary.game.input.event.UpGameKeyEventListenerInterface_Package;

package body org.allbinary.game.input.event.GameKeyEventHandler_Package is

   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype PressGameKeyEventHandler_Access is org.allbinary.game.input.event.PressGameKeyEventHandler_Package_References.PressGameKeyEventHandler_Access;
   function "=" (Left, Right : PressGameKeyEventHandler_Access) return Boolean renames org.allbinary.game.input.event.PressGameKeyEventHandler_Package_References."=";
   subtype PressGameKeyEventHandler_Access_Array is org.allbinary.game.input.event.PressGameKeyEventHandler_Package_References.PressGameKeyEventHandler_Access_Array;
   function "=" (Left, Right : PressGameKeyEventHandler_Access_Array) return Boolean renames org.allbinary.game.input.event.PressGameKeyEventHandler_Package_References."=";
   subtype PressGameKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.PressGameKeyEventHandler_Package_References.PressGameKeyEventHandler_Access_Array_Access;
   function "=" (Left, Right : PressGameKeyEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.PressGameKeyEventHandler_Package_References."=";
   subtype PressGameKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.PressGameKeyEventHandler_Package_References.PressGameKeyEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : PressGameKeyEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.PressGameKeyEventHandler_Package_References."=";
   subtype PressGameKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.PressGameKeyEventHandler_Package_References.PressGameKeyEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PressGameKeyEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.PressGameKeyEventHandler_Package_References."=";
   subtype UpGameKeyEventHandler_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access;
   function "=" (Left, Right : UpGameKeyEventHandler_Access) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References."=";
   subtype UpGameKeyEventHandler_Access_Array is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array;
   function "=" (Left, Right : UpGameKeyEventHandler_Access_Array) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References."=";
   subtype UpGameKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access;
   function "=" (Left, Right : UpGameKeyEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References."=";
   subtype UpGameKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : UpGameKeyEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References."=";
   subtype UpGameKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UpGameKeyEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References."=";
   subtype DownGameKeyEventHandler_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access;
   function "=" (Left, Right : DownGameKeyEventHandler_Access) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
   subtype DownGameKeyEventHandler_Access_Array is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array;
   function "=" (Left, Right : DownGameKeyEventHandler_Access_Array) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
   subtype DownGameKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access;
   function "=" (Left, Right : DownGameKeyEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
   subtype DownGameKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : DownGameKeyEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
   subtype DownGameKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownGameKeyEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References."=";
   procedure Initialize_Fields (This : in out GameKeyEventHandler'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.pressGameKeyEventHandler := PressGameKeyEventHandler_Package.getInstance;
      This.upGameKeyEventHandler := UpGameKeyEventHandler_Package.getInstance;
      This.downGameKeyEventHandler := DownGameKeyEventHandler_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out GameKeyEventHandler'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameKeyEventHandler_Access is
      This : constant GameKeyEventHandler_Access := new GameKeyEventHandler;
   begin
      GameKeyEventHandler_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameKeyEventHandler_Access is
   begin
        return GameKeyEventHandler_Access (GameKeyEventHandler_Package.instance);
   end getInstance;

   procedure removeAllListeners (This : in out GameKeyEventHandler) is
   begin
        This.pressGameKeyEventHandler.removeAllListeners;
        This.upGameKeyEventHandler.removeAllListeners;
        This.downGameKeyEventHandler.removeAllListeners;
   end removeAllListeners;

   procedure addListenerForPlayer (This : in out GameKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class; playerInputId : Integer) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.logUtil.putF (Java_Object'Class (eventListenerInterface.all).toString, GameKeyEventHandler_Access'(This'Unchecked_Access), This.commonStrings.ADD_LISTENER);
        This.pressGameKeyEventHandler.addListenerSingleThreaded (eventListenerInterface);
        This.upGameKeyEventHandler.getInstanceForPlayer (playerInputId).addListenerSingleThreaded (eventListenerInterface);
        This.downGameKeyEventHandler.getInstanceForPlayer (playerInputId).addListenerSingleThreaded (eventListenerInterface);
   end addListenerForPlayer;

   procedure addListener (This : in out GameKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.logUtil.putF (Java_Object'Class (eventListenerInterface.all).toString, GameKeyEventHandler_Access'(This'Unchecked_Access), This.commonStrings.ADD_LISTENER);
        This.pressGameKeyEventHandler.addListenerSingleThreaded (eventListenerInterface);
        This.upGameKeyEventHandler.addListenerSingleThreaded (eventListenerInterface);
        This.downGameKeyEventHandler.addListenerSingleThreaded (eventListenerInterface);
   end addListener;

   procedure removeListener (This : in out GameKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
   begin
        This.logUtil.putF (Java_Object'Class (eventListenerInterface.all).toString, GameKeyEventHandler_Access'(This'Unchecked_Access), This.commonStrings.REMOVE_LISTENER);
        This.pressGameKeyEventHandler.removeListenerSingleThreaded (eventListenerInterface);
        This.upGameKeyEventHandler.removeListenerSingleThreaded (eventListenerInterface);
        This.downGameKeyEventHandler.removeListenerSingleThreaded (eventListenerInterface);
   end removeListener;

begin
   null;
   instance := GameKeyEventHandler_Package.Create;

end org.allbinary.game.input.event.GameKeyEventHandler_Package;


