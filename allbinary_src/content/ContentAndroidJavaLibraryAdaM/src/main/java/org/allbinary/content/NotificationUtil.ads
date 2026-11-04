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

limited with org.allbinary.content.NotificationUtil_Package;
package org.allbinary.content.NotificationUtil_Package_References is
   type NotificationUtil_Access is access all org.allbinary.content.NotificationUtil_Package.NotificationUtil'Class;
   type NotificationUtil_Access_Array is array (Natural range <>) of NotificationUtil_Access;
   type NotificationUtil_Access_Array_Access is access all NotificationUtil_Access_Array;
   type NotificationUtil_Access_Array_Access_Array is array (Natural range <>) of NotificationUtil_Access_Array_Access;
   type NotificationUtil_Access_Array_Access_Array_Access is access all NotificationUtil_Access_Array_Access_Array;
end org.allbinary.content.NotificationUtil_Package_References;

with org.allbinary.content.NotificationUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
limited with android.app.NotificationManager_Package;
with android.app.NotificationManager_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.content.NotificationBuilder_Package;
with org.allbinary.content.NotificationBuilder_Package_References;

package org.allbinary.content.NotificationUtil_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package NotificationManager_Package renames Standard.android.app.NotificationManager_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype Command_Access is javax.microedition.lcdui.Command_Package_References.Command_Access;
   use type Command_Access;
   subtype Command_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array;
   use type Command_Access_Array;
   subtype Command_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access;
   use type Command_Access_Array_Access;
   subtype Command_Access_Array_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array;
   use type Command_Access_Array_Access_Array;
   subtype Command_Access_Array_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array_Access;
   use type Command_Access_Array_Access_Array_Access;
   subtype NotificationManager_Access is android.app.NotificationManager_Package_References.NotificationManager_Access;
   use type NotificationManager_Access;
   subtype NotificationManager_Access_Array is android.app.NotificationManager_Package_References.NotificationManager_Access_Array;
   use type NotificationManager_Access_Array;
   subtype NotificationManager_Access_Array_Access is android.app.NotificationManager_Package_References.NotificationManager_Access_Array_Access;
   use type NotificationManager_Access_Array_Access;
   subtype NotificationManager_Access_Array_Access_Array is android.app.NotificationManager_Package_References.NotificationManager_Access_Array_Access_Array;
   use type NotificationManager_Access_Array_Access_Array;
   subtype NotificationManager_Access_Array_Access_Array_Access is android.app.NotificationManager_Package_References.NotificationManager_Access_Array_Access_Array_Access;
   use type NotificationManager_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype NotificationBuilder_Access is org.allbinary.content.NotificationBuilder_Package_References.NotificationBuilder_Access;
   use type NotificationBuilder_Access;
   subtype NotificationBuilder_Access_Array is org.allbinary.content.NotificationBuilder_Package_References.NotificationBuilder_Access_Array;
   use type NotificationBuilder_Access_Array;
   subtype NotificationBuilder_Access_Array_Access is org.allbinary.content.NotificationBuilder_Package_References.NotificationBuilder_Access_Array_Access;
   use type NotificationBuilder_Access_Array_Access;
   subtype NotificationBuilder_Access_Array_Access_Array is org.allbinary.content.NotificationBuilder_Package_References.NotificationBuilder_Access_Array_Access_Array;
   use type NotificationBuilder_Access_Array_Access_Array;
   subtype NotificationBuilder_Access_Array_Access_Array_Access is org.allbinary.content.NotificationBuilder_Package_References.NotificationBuilder_Access_Array_Access_Array_Access;
   use type NotificationBuilder_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NotificationUtil_Access is org.allbinary.content.NotificationUtil_Package_References.NotificationUtil_Access;
   function "=" (Left, Right : NotificationUtil_Access) return Boolean renames org.allbinary.content.NotificationUtil_Package_References."=";
   subtype NotificationUtil_Access_Array is org.allbinary.content.NotificationUtil_Package_References.NotificationUtil_Access_Array;
   function "=" (Left, Right : NotificationUtil_Access_Array) return Boolean renames org.allbinary.content.NotificationUtil_Package_References."=";
   subtype NotificationUtil_Access_Array_Access is org.allbinary.content.NotificationUtil_Package_References.NotificationUtil_Access_Array_Access;
   function "=" (Left, Right : NotificationUtil_Access_Array_Access) return Boolean renames org.allbinary.content.NotificationUtil_Package_References."=";
   subtype NotificationUtil_Access_Array_Access_Array is org.allbinary.content.NotificationUtil_Package_References.NotificationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : NotificationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.content.NotificationUtil_Package_References."=";
   subtype NotificationUtil_Access_Array_Access_Array_Access is org.allbinary.content.NotificationUtil_Package_References.NotificationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NotificationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.content.NotificationUtil_Package_References."=";

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


