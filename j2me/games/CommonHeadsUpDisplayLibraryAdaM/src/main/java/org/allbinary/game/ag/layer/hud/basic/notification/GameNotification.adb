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


package body org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package is

   procedure Initialize_Fields (This : in out GameNotification'Class) is
   begin
      null;
      This.stringList := BasicArrayListD_Package.Create;
      This.timeList := BasicArrayListD_Package.Create;
      This.colorList := BasicArrayListD_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out GameNotification'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameNotification_Access is
      This : constant GameNotification_Access := new GameNotification;
   begin
      GameNotification_Package.Initialize (This.all);
      return This;
   end Create;


   procedure add (This : in out GameNotification; string_Id : Unbounded_String; seconds : Integer; basicColor_Param : access BasicColor'Class) is
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        if not (This.stringList.contains (string_Id)) then
            This.stringList.add (string_Id);
            This.timeList.add (seconds);
            This.colorList.add (basicColor);
        end if;
   end add;

   procedure clear (This : in out GameNotification) is
   begin
        This.stringList.clear;
        This.timeList.clear;
        This.colorList.clear;
   end clear;

   function getSize (This : in out GameNotification) return Integer is
   begin
        return This.stringList.size;
   end getSize;

begin
   null;
   NULL_GAME_NOTIFICATION_EVENT := GameNotificationEvent_Package.Create (NullUtil_Package.getInstance.NULL_OBJECT, StringUtil_Package.getInstance.EMPTY_STRING, 0, BasicColorFactory_Package.getInstance.RED, BooleanFactory_Package.getInstance.FALSE);

end org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package;


