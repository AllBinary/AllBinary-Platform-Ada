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
with org.allbinary.android.NullParcelable_Package; use org.allbinary.android.NullParcelable_Package;
--  with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with android.app.PendingIntent_Package; use android.app.PendingIntent_Package;
with android.content.Context_Package; use android.content.Context_Package;
with android.os.Parcelable_Package; use android.os.Parcelable_Package;

package org.allbinary.content.NotificationBuilder_Package is

   package NullParcelable_Package renames org.allbinary.android.NullParcelable_Package;
   package PendingIntent_Package renames android.app.PendingIntent_Package;
   package Context_Package renames android.content.Context_Package;
   package Parcelable_Package renames android.os.Parcelable_Package;

   type NotificationBuilder is tagged;
   type NotificationBuilder_Access is access all NotificationBuilder'Class;
   type NotificationBuilder_Access_Array is array (Natural range <>) of NotificationBuilder_Access;
   type NotificationBuilder_Access_Array_Access is access all NotificationBuilder_Access_Array;

   type NotificationBuilder is new Java_Object with null record;
   NULL_NOTIFICATION_BUILDER : NotificationBuilder_Access;

   procedure Initialize (This : in out NotificationBuilder'Class);
   function Create return NotificationBuilder_Access;
   function build (This : in out NotificationBuilder; context : Context_Access; command : Command_Access; message : Unbounded_String; integer_Id : Integer; pendingIntent : PendingIntent_Access) return Parcelable_Access;
   procedure build (This : in out NotificationBuilder; context : Context_Access; command : Command_Access; message : Unbounded_String; integer_Id : Integer; pendingIntent : PendingIntent_Access);

end org.allbinary.content.NotificationBuilder_Package;


