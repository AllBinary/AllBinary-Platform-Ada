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
with android.app.PendingIntent_Package; use android.app.PendingIntent_Package;
with android.content.Context_Package; use android.content.Context_Package;
with android.os.Parcelable_Package; use android.os.Parcelable_Package;
with org.allbinary.content.NotificationBuilder_Package; use org.allbinary.content.NotificationBuilder_Package;

package org.allbinary.content.NotificationBuilderAPI23_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package PendingIntent_Package renames Standard.android.app.PendingIntent_Package;
   package Context_Package renames Standard.android.content.Context_Package;
   package Parcelable_Package renames Standard.android.os.Parcelable_Package;

   type NotificationBuilderAPI23 is tagged;
   type NotificationBuilderAPI23_Access is access all NotificationBuilderAPI23'Class;
   type NotificationBuilderAPI23_Access_Array is array (Natural range <>) of NotificationBuilderAPI23_Access;
   type NotificationBuilderAPI23_Access_Array_Access is access all NotificationBuilderAPI23_Access_Array;
   type NotificationBuilderAPI23_Access_Array_Access_Array is array (Natural range <>) of NotificationBuilderAPI23_Access_Array_Access;
   type NotificationBuilderAPI23_Access_Array_Access_Array_Access is access all NotificationBuilderAPI23_Access_Array_Access_Array;

   type NotificationBuilderAPI23 is new NotificationBuilder with null record;

   procedure Initialize (This : in out NotificationBuilderAPI23'Class);
   function Create return NotificationBuilderAPI23_Access;
   function build (This : in out NotificationBuilderAPI23; context_Param : access Context_Package.Context'Class; command_Param : access Command_Package.Command'Class; message : Unbounded_String; integer_Id : Integer; pendingIntent_Param : access PendingIntent_Package.PendingIntent'Class) return Parcelable_Access;
   procedure build (This : in out NotificationBuilderAPI23; context_Param : access Context_Package.Context'Class; command_Param : access Command_Package.Command'Class; message : Unbounded_String; integer_Id : Integer; pendingIntent_Param : access PendingIntent_Package.PendingIntent'Class);

end org.allbinary.content.NotificationBuilderAPI23_Package;


