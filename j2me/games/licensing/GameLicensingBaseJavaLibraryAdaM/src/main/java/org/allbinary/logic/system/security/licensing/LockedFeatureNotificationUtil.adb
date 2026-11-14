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


with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package; use org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References;
with org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package; use org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.media.audio.ErrorSound_Package; use org.allbinary.media.audio.ErrorSound_Package;
with org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package; use org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package;
with org.allbinary.logic.system.security.licensing.LicenseStrings_Package; use org.allbinary.logic.system.security.licensing.LicenseStrings_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.audio.CompositeSound_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.system.security.licensing.LicenseStrings_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with javax.microedition.media.Player_Package;
with javax.microedition.media.PlayerListener_Package;
with org.allbinary.media.audio.PlayerQueue_Package;
with org.allbinary.media.audio.Sound_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package is

   package GameNotificationEventHandler_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package ErrorSound_Package renames Standard.org.allbinary.media.audio.ErrorSound_Package;
   package PrimaryPlayerQueueFactory_Package renames Standard.org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package;
   subtype GameNotificationEvent_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access;
   function "=" (Left, Right : GameNotificationEvent_Access) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References."=";
   subtype GameNotificationEvent_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array;
   function "=" (Left, Right : GameNotificationEvent_Access_Array) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References."=";
   subtype GameNotificationEvent_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access;
   function "=" (Left, Right : GameNotificationEvent_Access_Array_Access) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References."=";
   subtype GameNotificationEvent_Access_Array_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameNotificationEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References."=";
   subtype GameNotificationEvent_Access_Array_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameNotificationEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   procedure Initialize_Fields (This : in out LockedFeatureNotificationUtil'Class) is
   begin
      null;
      This.gameNotificationEvent := GameNotificationEvent_Package.Create (LockedFeatureNotificationUtil_Access'(This'Unchecked_Access), LicenseStrings_Package.getInstance.LOCKED, SmallIntegerSingletonFactory_Package.getInstance.getAt (3), BasicColorFactory_Package.getInstance.RED, BooleanFactory_Package.getInstance.FALSE);
   end Initialize_Fields;

   procedure Initialize (This : in out LockedFeatureNotificationUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LockedFeatureNotificationUtil_Access is
      This : constant LockedFeatureNotificationUtil_Access := new LockedFeatureNotificationUtil;
   begin
      LockedFeatureNotificationUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LockedFeatureNotificationUtil_Access is
   begin
        return LockedFeatureNotificationUtil_Package.instance;
   end getInstance;

   --  throws Exception
   procedure fire (This : in out LockedFeatureNotificationUtil) is
   begin
        PrimaryPlayerQueueFactory_Package.getInstance.add (ErrorSound_Package.getInstance);
        GameNotificationEventHandler_Package.getInstance.fireEvent (This.gameNotificationEvent);
   end fire;

   --  throws Exception
   procedure fireWithColor (This : in out LockedFeatureNotificationUtil; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        PrimaryPlayerQueueFactory_Package.getInstance.add (ErrorSound_Package.getInstance);
        This.gameNotificationEvent.setBasicColorP (basicColor);
        GameNotificationEventHandler_Package.getInstance.fireEvent (This.gameNotificationEvent);
   end fireWithColor;

begin
   null;
   instance := LockedFeatureNotificationUtil_Package.Create;

end org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package;


