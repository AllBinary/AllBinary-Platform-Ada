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


package body org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package is

   procedure Initialize_Fields (This : in out NoGameNotificationHudSingleton'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.gameNotificationHud := GameNotificationHud_Package.NULL_GAME_NOTIFICATION;
   end Initialize_Fields;


   function getInstance return NoGameNotificationHudSingleton_Access is
   begin
        return NoGameNotificationHudSingleton_Package.instance;
   end getInstance;

   procedure Initialize (This : in out NoGameNotificationHudSingleton'Class) is
      basicHudFactory : BasicHudFactory_Access;
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        begin
            basicHudFactory := BasicHudFactory_Package.getInstance;
            --  Java nested class NoGameGameNotificationHud: move it to its own package
            This.gameNotificationHud := NoGameGameNotificationHud_Package.Create;
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


