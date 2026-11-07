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


with org.allbinary.game.graphics.hud.BasicHudFactory_Package; use org.allbinary.game.graphics.hud.BasicHudFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package; use org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References;
with org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package; use org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package is

   package BasicHudFactory_Package renames Standard.org.allbinary.game.graphics.hud.BasicHudFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype GameNotificationHud_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access;
   function "=" (Left, Right : GameNotificationHud_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   subtype GameNotificationHud_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array;
   function "=" (Left, Right : GameNotificationHud_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   subtype GameNotificationHud_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array_Access;
   function "=" (Left, Right : GameNotificationHud_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   subtype GameNotificationHud_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array_Access_Array;
   function "=" (Left, Right : GameNotificationHud_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   subtype GameNotificationHud_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameNotificationHud_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   procedure Initialize_Fields (This : in out NoGameNotificationHudSingleton'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.gameNotificationHud := GameNotificationHud_Access (GameNotificationHud_Package.NULL_GAME_NOTIFICATION);
   end Initialize_Fields;


   function getInstance return NoGameNotificationHudSingleton_Access is
   begin
        return NoGameNotificationHudSingleton_Access (NoGameNotificationHudSingleton_Package.instance);
   end getInstance;

   procedure Initialize (This : in out NoGameNotificationHudSingleton'Class) is
      basicHudFactory : BasicHudFactory_Access;
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        begin
            basicHudFactory := BasicHudFactory_Package.getInstance;
            --  Java nested class NoGameGameNotificationHud: move it to its own package
            This.gameNotificationHud := GameNotificationHud_Access (NoGameGameNotificationHud_Package.Create);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, NoGameNotificationHudSingleton_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR, e);
                end;
        end;
   end Initialize;

   function Create return NoGameNotificationHudSingleton_Access is
      This : constant NoGameNotificationHudSingleton_Access := new NoGameNotificationHudSingleton;
   begin
      NoGameNotificationHudSingleton_Package.Initialize (This.all);
      return This;
   end Create;

   function getGameNotificationHud (This : in out NoGameNotificationHudSingleton) return GameNotificationHud_Access is
   begin
        return This.gameNotificationHud;
   end getGameNotificationHud;

begin
   null;
   instance := NoGameNotificationHudSingleton_Package.Create;

end org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package;


