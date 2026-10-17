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


package body org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package is

   procedure Initialize_Fields (This : in out GameNotificationHud'Class) is
   begin
      null;
      This.METHOD_NAME := To_Unbounded_String ("onGameNotificationEvent");
      This.lastGameNotificationEvent := GameNotification_Package.NULL_GAME_NOTIFICATION_EVENT;
   end Initialize_Fields;


   procedure Initialize (This : in out GameNotificationHud'Class; location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        BasicHud_Package.Initialize (This, location, direction, bufferZone, basicColor);
        Initialize_Fields (This);
   end Initialize;

   function Create (location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return GameNotificationHud_Access is
      This : constant GameNotificationHud_Access := new GameNotificationHud;
   begin
      GameNotificationHud_Package.Initialize (This.all, location, direction, bufferZone, basicColor_Param);
      return This;
   end Create;

   procedure onEvent (This : in out GameNotificationHud; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, GameNotificationHud_Access'(This'Unchecked_Access));
   end onEvent;

   --  throws Exception
   procedure onGameNotificationEvent (This : in out GameNotificationHud; gameNotificationEvent_Param : access GameNotificationEvent_Package.GameNotificationEvent'Class) is
      gameNotificationEvent : constant GameNotificationEvent_Access := GameNotificationEvent_Access (gameNotificationEvent_Param);
   begin
        if (This.lastGameNotificationEvent) /= (gameNotificationEvent) then
            This.lastGameNotificationEvent := gameNotificationEvent;
            This.logUtil.putF (gameNotificationEvent.getString, GameNotificationHud_Access'(This'Unchecked_Access), This.METHOD_NAME);
        end if;
        This.add (gameNotificationEvent.getString, gameNotificationEvent.getSeconds, gameNotificationEvent.getBasicColorP, gameNotificationEvent.getPermanent);
   end onGameNotificationEvent;

   procedure add (This : in out GameNotificationHud; string_Id : Unbounded_String; seconds : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; permanent : Boolean) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        null;
   end add;

   --  throws Exception
   procedure processTick (This : in out GameNotificationHud) is
   begin
        null;
   end processTick;

   procedure paint (This : in out GameNotificationHud; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paint;

   procedure clear (This : in out GameNotificationHud) is
   begin
        null;
   end clear;

begin
   null;
   NULL_GAME_NOTIFICATION := GameNotificationHud_Package.Create (BasicHudFactory_Package.getInstance.TOPCENTER, BasicHudFactory_Package.getInstance.HORIZONTAL, 0, BasicColorFactory_Package.getInstance.RED);

end org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;


