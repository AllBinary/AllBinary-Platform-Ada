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


package body org.allbinary.game.input.event.GameKeyEventHandler_Package is

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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameKeyEventHandler_Access is
   begin
        return GameKeyEventHandler_Package.instance;
   end getInstance;

   procedure removeAllListeners (This : in out GameKeyEventHandler) is
   begin
        This.pressGameKeyEventHandler.removeAllListeners;
        This.upGameKeyEventHandler.removeAllListeners;
        This.downGameKeyEventHandler.removeAllListeners;
   end removeAllListeners;

   procedure addListenerForPlayer (This : in out GameKeyEventHandler; eventListenerInterface : EventListenerInterface_Access; playerInputId : Integer) is
   begin
        This.logUtil.putF (eventListenerInterface.toString, This'Unchecked_Access, This.commonStrings.ADD_LISTENER);
        This.pressGameKeyEventHandler.addListenerSingleThreaded (eventListenerInterface);
        This.upGameKeyEventHandler.getInstanceForPlayer (playerInputId).addListenerSingleThreaded (eventListenerInterface);
        This.downGameKeyEventHandler.getInstanceForPlayer (playerInputId).addListenerSingleThreaded (eventListenerInterface);
   end addListenerForPlayer;

   procedure addListener (This : in out GameKeyEventHandler; eventListenerInterface : EventListenerInterface_Access) is
   begin
        This.logUtil.putF (eventListenerInterface.toString, This'Unchecked_Access, This.commonStrings.ADD_LISTENER);
        This.pressGameKeyEventHandler.addListenerSingleThreaded (eventListenerInterface);
        This.upGameKeyEventHandler.addListenerSingleThreaded (eventListenerInterface);
        This.downGameKeyEventHandler.addListenerSingleThreaded (eventListenerInterface);
   end addListener;

   procedure removeListener (This : in out GameKeyEventHandler; eventListenerInterface : EventListenerInterface_Access) is
   begin
        This.logUtil.putF (eventListenerInterface.toString, This'Unchecked_Access, This.commonStrings.REMOVE_LISTENER);
        This.pressGameKeyEventHandler.removeListenerSingleThreaded (eventListenerInterface);
        This.upGameKeyEventHandler.removeListenerSingleThreaded (eventListenerInterface);
        This.downGameKeyEventHandler.removeListenerSingleThreaded (eventListenerInterface);
   end removeListener;

   procedure getInstance is
      Java_Result : constant GameKeyEventHandler_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := GameKeyEventHandler_Package.Create;

end org.allbinary.game.input.event.GameKeyEventHandler_Package;


