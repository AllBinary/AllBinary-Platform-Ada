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


package body org.allbinary.game.input.TextNotificationUtil_Package is

   procedure Initialize_Fields (This : in out TextNotificationUtil'Class) is
   begin
      null;
      This.TWO := SmallIntegerSingletonFactory_Package.getInstance.getAt (2);
      This.FALSE := BooleanFactory_Package.getInstance.FALSE;
      This.gameNotificationEventHandler := GameNotificationEventHandler_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out TextNotificationUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TextNotificationUtil_Access is
      This : constant TextNotificationUtil_Access := new TextNotificationUtil;
   begin
      TextNotificationUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return TextNotificationUtil_Access is
   begin
        return TextNotificationUtil_Package.instance;
   end getInstance;

   --  throws Exception
   procedure fireError (This : in out TextNotificationUtil; message : Unbounded_String) is
   begin
        PrimaryPlayerQueueFactory_Package.getInstance.add (ErrorSound_Package.getInstance);
        This.fire (message);
   end fireError;

   --  throws Exception
   procedure fireNew (This : in out TextNotificationUtil; message : Unbounded_String) is
   begin
        PrimaryPlayerQueueFactory_Package.getInstance.add (SelectSound_Package.getInstance);
        This.fire (message);
   end fireNew;

   --  throws Exception
   procedure fireSuccess (This : in out TextNotificationUtil; message : Unbounded_String) is
   begin
        PrimaryPlayerQueueFactory_Package.getInstance.add (SelectSound_Package.getInstance);
        This.fire (message);
   end fireSuccess;

   --  throws Exception
   procedure fire (This : in out TextNotificationUtil; message : Unbounded_String) is
      gameNotificationEvent : GameNotificationEvent_Access;
   begin
        gameNotificationEvent := GameNotificationEvent_Package.Create (This'Unchecked_Access, message, This.TWO, BasicColorFactory_Package.getInstance.RED, This.FALSE);
        This.gameNotificationEventHandler.fireEvent (gameNotificationEvent);
   end fire;

begin
   null;
   instance := TextNotificationUtil_Package.Create;

end org.allbinary.game.input.TextNotificationUtil_Package;


