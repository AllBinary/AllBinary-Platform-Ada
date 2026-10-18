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


package body org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package is

   procedure Initialize_Fields (This : in out GameNotificationEventHandler'Class) is
   begin
      null;
      This.enabled := True;
   end Initialize_Fields;


   procedure Initialize (This : in out GameNotificationEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameNotificationEventHandler_Access is
      This : constant GameNotificationEventHandler_Access := new GameNotificationEventHandler;
   begin
      GameNotificationEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   procedure removeAllListeners (This : in out GameNotificationEventHandler) is
      eventListenerInterface : EventListenerInterface_Access;
      list : BasicArrayList_Access;
   begin
        eventListenerInterface := NullEventListener_Package.NULL_EVENT_LISTENER;
        list := This.eventListenerInterfaceList;
        if (list.size) > (0) then
            eventListenerInterface := EventListenerInterface_Access (list.objectArray (0));
        end if;
        BasicEventHandler (This).removeAllListeners;
        if (eventListenerInterface) /= (NullEventListener_Package.NULL_EVENT_LISTENER) then
            GameNotificationEventHandler'Class (This).addListenerInterface (eventListenerInterface);
        end if;
   end removeAllListeners;

   function getInstance return GameNotificationEventHandler_Access is
   begin
        return GameNotificationEventHandler_Package.instance;
   end getInstance;

   --  throws Exception
   procedure process (This : in out GameNotificationEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      gameNotificationListenerInterface : GameNotificationListenerInterface_Access;
   begin
        if not (This.enabled) then
            return;
        end if;
        gameNotificationListenerInterface := GameNotificationListenerInterface_Access (eventListenerInterface);
        gameNotificationListenerInterface.onGameNotificationEvent (GameNotificationEvent_Access (eventObject));
   end process;

begin
   null;
   instance := GameNotificationEventHandler_Package.Create;

end org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;


