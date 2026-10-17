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
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.content.Context_Package; use org.allbinary.content.Context_Package;
with org.allbinary.content.NotificationManager_Package; use org.allbinary.content.NotificationManager_Package;
with org.allbinary.content.CommandUriAction_Package; use org.allbinary.content.CommandUriAction_Package;
with org.allbinary.content.Intent_Package; use org.allbinary.content.Intent_Package;
with org.allbinary.content.Notification_Package; use org.allbinary.content.Notification_Package;
with org.allbinary.content.PendingIntent_Package; use org.allbinary.content.PendingIntent_Package;

package org.allbinary.content.NotificationUtil_Package is

   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;

   type NotificationUtil is tagged;
   type NotificationUtil_Access is access all NotificationUtil'Class;
   type NotificationUtil_Access_Array is array (Natural range <>) of NotificationUtil_Access;
   type NotificationUtil_Access_Array_Access is access all NotificationUtil_Access_Array;

   type NotificationUtil is new Java_Object with record
      notificationManager : NotificationManager_Access;
   end record;
   SINGLETON : NotificationUtil_Access;

   procedure Initialize (This : in out NotificationUtil'Class);
   function Create return NotificationUtil_Access;
   function getInstance return NotificationUtil_Access;
   procedure notify (This : in out NotificationUtil; command : Command_Access; resource : Unbounded_String; message : Unbounded_String);

end org.allbinary.content.NotificationUtil_Package;


