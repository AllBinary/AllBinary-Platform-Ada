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


with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package is

   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out GameNotification'Class) is
   begin
      null;
      This.stringList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.timeList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.colorList := BasicArrayList_Access (BasicArrayListD_Package.Create);
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


   procedure add (This : in out GameNotification; string_Id : Unbounded_String; seconds : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        if not (This.stringList.contains (string_Id)) then
            This.stringList.add (string_Id);
            This.timeList.add (seconds);
            This.colorList.add (Java_Object_Access (basicColor));
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


