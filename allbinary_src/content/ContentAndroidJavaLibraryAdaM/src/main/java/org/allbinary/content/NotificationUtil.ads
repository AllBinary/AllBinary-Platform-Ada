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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with android.app.Notification_Package; use android.app.Notification_Package;
with android.app.NotificationManager_Package; use android.app.NotificationManager_Package;
with android.app.PendingIntent_Package; use android.app.PendingIntent_Package;
with android.content.Context_Package; use android.content.Context_Package;
with android.content.Intent_Package; use android.content.Intent_Package;
with org.allbinary.android.AndroidInfoFactory_Package; use org.allbinary.android.AndroidInfoFactory_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.content.NotificationBuilder_Package; use org.allbinary.content.NotificationBuilder_Package;
with org.allbinary.content.NotificationBuilderAPI23_Package; use org.allbinary.content.NotificationBuilderAPI23_Package;
with org.allbinary.content.CommandUriAction_Package; use org.allbinary.content.CommandUriAction_Package;

package org.allbinary.content.NotificationUtil_Package is

   package Notification_Package renames Standard.android.app.Notification_Package;
   package NotificationManager_Package renames Standard.android.app.NotificationManager_Package;
   package PendingIntent_Package renames Standard.android.app.PendingIntent_Package;
   package Context_Package renames Standard.android.content.Context_Package;
   package Intent_Package renames Standard.android.content.Intent_Package;
   package AndroidInfoFactory_Package renames Standard.org.allbinary.android.AndroidInfoFactory_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type NotificationUtil is tagged;
   type NotificationUtil_Access is access all NotificationUtil'Class;
   type NotificationUtil_Access_Array is array (Natural range <>) of NotificationUtil_Access;
   type NotificationUtil_Access_Array_Access is access all NotificationUtil_Access_Array;

   type NotificationUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      notificationManager : NotificationManager_Access;
      notificationBuilder : NotificationBuilder_Access;
   end record;
   SINGLETON : NotificationUtil_Access;

   procedure Initialize (This : in out NotificationUtil'Class);
   function Create return NotificationUtil_Access;
   function getInstance return NotificationUtil_Access;
   procedure notify (This : in out NotificationUtil; command_Param : access Command'Class; resource : Unbounded_String; message : Unbounded_String);

end org.allbinary.content.NotificationUtil_Package;


