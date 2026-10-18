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
with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with android.app.NotificationManager_Package; use android.app.NotificationManager_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.content.NotificationBuilder_Package; use org.allbinary.content.NotificationBuilder_Package;

package org.allbinary.content.NotificationUtil_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package NotificationManager_Package renames Standard.android.app.NotificationManager_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type NotificationUtil is tagged;
   type NotificationUtil_Access is access all NotificationUtil'Class;
   type NotificationUtil_Access_Array is array (Natural range <>) of NotificationUtil_Access;
   type NotificationUtil_Access_Array_Access is access all NotificationUtil_Access_Array;
   type NotificationUtil_Access_Array_Access_Array is array (Natural range <>) of NotificationUtil_Access_Array_Access;
   type NotificationUtil_Access_Array_Access_Array_Access is access all NotificationUtil_Access_Array_Access_Array;

   type NotificationUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      notificationManager : NotificationManager_Access;
      notificationBuilder : NotificationBuilder_Access;
   end record;
   SINGLETON : NotificationUtil_Access;

   procedure Initialize (This : in out NotificationUtil'Class);
   function Create return NotificationUtil_Access;
   function getInstance return NotificationUtil_Access;
   procedure notify (This : in out NotificationUtil; command_Param : access Command_Package.Command'Class; resource : Unbounded_String; message : Unbounded_String);

end org.allbinary.content.NotificationUtil_Package;


