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

limited with org.allbinary.content.NotificationBuilder_Package;
package org.allbinary.content.NotificationBuilder_Package_References is
   type NotificationBuilder_Access is access all org.allbinary.content.NotificationBuilder_Package.NotificationBuilder'Class;
   type NotificationBuilder_Access_Array is array (Natural range <>) of NotificationBuilder_Access;
   type NotificationBuilder_Access_Array_Access is access all NotificationBuilder_Access_Array;
   type NotificationBuilder_Access_Array_Access_Array is array (Natural range <>) of NotificationBuilder_Access_Array_Access;
   type NotificationBuilder_Access_Array_Access_Array_Access is access all NotificationBuilder_Access_Array_Access_Array;
end org.allbinary.content.NotificationBuilder_Package_References;

with org.allbinary.content.NotificationBuilder_Package_References;
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
limited with android.app.PendingIntent_Package;
with android.app.PendingIntent_Package_References;
limited with android.content.Context_Package;
with android.content.Context_Package_References;
limited with android.os.Parcelable_Package;
with android.os.Parcelable_Package_References;

package org.allbinary.content.NotificationBuilder_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package PendingIntent_Package renames Standard.android.app.PendingIntent_Package;
   package Context_Package renames Standard.android.content.Context_Package;
   package Parcelable_Package renames Standard.android.os.Parcelable_Package;
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
   subtype PendingIntent_Access is android.app.PendingIntent_Package_References.PendingIntent_Access;
   use type PendingIntent_Access;
   subtype PendingIntent_Access_Array is android.app.PendingIntent_Package_References.PendingIntent_Access_Array;
   use type PendingIntent_Access_Array;
   subtype PendingIntent_Access_Array_Access is android.app.PendingIntent_Package_References.PendingIntent_Access_Array_Access;
   use type PendingIntent_Access_Array_Access;
   subtype PendingIntent_Access_Array_Access_Array is android.app.PendingIntent_Package_References.PendingIntent_Access_Array_Access_Array;
   use type PendingIntent_Access_Array_Access_Array;
   subtype PendingIntent_Access_Array_Access_Array_Access is android.app.PendingIntent_Package_References.PendingIntent_Access_Array_Access_Array_Access;
   use type PendingIntent_Access_Array_Access_Array_Access;
   subtype Context_Access is android.content.Context_Package_References.Context_Access;
   use type Context_Access;
   subtype Context_Access_Array is android.content.Context_Package_References.Context_Access_Array;
   use type Context_Access_Array;
   subtype Context_Access_Array_Access is android.content.Context_Package_References.Context_Access_Array_Access;
   use type Context_Access_Array_Access;
   subtype Context_Access_Array_Access_Array is android.content.Context_Package_References.Context_Access_Array_Access_Array;
   use type Context_Access_Array_Access_Array;
   subtype Context_Access_Array_Access_Array_Access is android.content.Context_Package_References.Context_Access_Array_Access_Array_Access;
   use type Context_Access_Array_Access_Array_Access;
   subtype Parcelable_Access is android.os.Parcelable_Package_References.Parcelable_Access;
   use type Parcelable_Access;
   subtype Parcelable_Access_Array is android.os.Parcelable_Package_References.Parcelable_Access_Array;
   use type Parcelable_Access_Array;
   subtype Parcelable_Access_Array_Access is android.os.Parcelable_Package_References.Parcelable_Access_Array_Access;
   use type Parcelable_Access_Array_Access;
   subtype Parcelable_Access_Array_Access_Array is android.os.Parcelable_Package_References.Parcelable_Access_Array_Access_Array;
   use type Parcelable_Access_Array_Access_Array;
   subtype Parcelable_Access_Array_Access_Array_Access is android.os.Parcelable_Package_References.Parcelable_Access_Array_Access_Array_Access;
   use type Parcelable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NotificationBuilder_Access is org.allbinary.content.NotificationBuilder_Package_References.NotificationBuilder_Access;
   function "=" (Left, Right : NotificationBuilder_Access) return Boolean renames org.allbinary.content.NotificationBuilder_Package_References."=";
   subtype NotificationBuilder_Access_Array is org.allbinary.content.NotificationBuilder_Package_References.NotificationBuilder_Access_Array;
   function "=" (Left, Right : NotificationBuilder_Access_Array) return Boolean renames org.allbinary.content.NotificationBuilder_Package_References."=";
   subtype NotificationBuilder_Access_Array_Access is org.allbinary.content.NotificationBuilder_Package_References.NotificationBuilder_Access_Array_Access;
   function "=" (Left, Right : NotificationBuilder_Access_Array_Access) return Boolean renames org.allbinary.content.NotificationBuilder_Package_References."=";
   subtype NotificationBuilder_Access_Array_Access_Array is org.allbinary.content.NotificationBuilder_Package_References.NotificationBuilder_Access_Array_Access_Array;
   function "=" (Left, Right : NotificationBuilder_Access_Array_Access_Array) return Boolean renames org.allbinary.content.NotificationBuilder_Package_References."=";
   subtype NotificationBuilder_Access_Array_Access_Array_Access is org.allbinary.content.NotificationBuilder_Package_References.NotificationBuilder_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NotificationBuilder_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.content.NotificationBuilder_Package_References."=";

   type NotificationBuilder is new Java_Object with null record;
   NULL_NOTIFICATION_BUILDER : NotificationBuilder_Access;

   procedure Initialize (This : in out NotificationBuilder'Class);
   function Create return NotificationBuilder_Access;
   function build (This : in out NotificationBuilder; context_Param : access Context_Package.Context'Class; command_Param : access Command_Package.Command'Class; message : Unbounded_String; integer_Id : Integer; pendingIntent_Param : access PendingIntent_Package.PendingIntent'Class) return Parcelable_Access;
   procedure build (This : in out NotificationBuilder; context_Param : access Context_Package.Context'Class; command_Param : access Command_Package.Command'Class; message : Unbounded_String; integer_Id : Integer; pendingIntent_Param : access PendingIntent_Package.PendingIntent'Class);

end org.allbinary.content.NotificationBuilder_Package;


