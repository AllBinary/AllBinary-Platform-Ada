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

with AllBinary_Java;
limited with org.allbinary.content.NotificationBuilderAPI23_Package;
package org.allbinary.content.NotificationBuilderAPI23_Package_References is
   type NotificationBuilderAPI23_Access is access all org.allbinary.content.NotificationBuilderAPI23_Package.NotificationBuilderAPI23'Class;
   type NotificationBuilderAPI23_Access_Array is array (Natural range <>) of NotificationBuilderAPI23_Access;
   type NotificationBuilderAPI23_Access_Array_Access is access all NotificationBuilderAPI23_Access_Array;
   type NotificationBuilderAPI23_Access_Array_Access_Array is array (Natural range <>) of NotificationBuilderAPI23_Access_Array_Access;
   type NotificationBuilderAPI23_Access_Array_Access_Array_Access is access all NotificationBuilderAPI23_Access_Array_Access_Array;
   type NotificationBuilderAPI23_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NotificationBuilderAPI23_Access_Array_Access;
   end record;
   function Java_Box (Value : NotificationBuilderAPI23_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NotificationBuilderAPI23_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NotificationBuilderAPI23_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NotificationBuilderAPI23_Access_Array_Access is (if Value /= null and then Value.all in NotificationBuilderAPI23_Access_Array_Object'Class then NotificationBuilderAPI23_Access_Array_Object'Class (Value.all).Value else null);
   type NotificationBuilderAPI23_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NotificationBuilderAPI23_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NotificationBuilderAPI23_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NotificationBuilderAPI23_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NotificationBuilderAPI23_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NotificationBuilderAPI23_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NotificationBuilderAPI23_Access_Array_Access_Array_Object'Class then NotificationBuilderAPI23_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.content.NotificationBuilderAPI23_Package_References;

with org.allbinary.content.NotificationBuilderAPI23_Package_References;
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
with org.allbinary.content.NotificationBuilder_Package; use org.allbinary.content.NotificationBuilder_Package;

package org.allbinary.content.NotificationBuilderAPI23_Package is

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


   subtype NotificationBuilderAPI23_Access is org.allbinary.content.NotificationBuilderAPI23_Package_References.NotificationBuilderAPI23_Access;
   function "=" (Left, Right : NotificationBuilderAPI23_Access) return Boolean renames org.allbinary.content.NotificationBuilderAPI23_Package_References."=";
   subtype NotificationBuilderAPI23_Access_Array is org.allbinary.content.NotificationBuilderAPI23_Package_References.NotificationBuilderAPI23_Access_Array;
   function "=" (Left, Right : NotificationBuilderAPI23_Access_Array) return Boolean renames org.allbinary.content.NotificationBuilderAPI23_Package_References."=";
   subtype NotificationBuilderAPI23_Access_Array_Access is org.allbinary.content.NotificationBuilderAPI23_Package_References.NotificationBuilderAPI23_Access_Array_Access;
   function "=" (Left, Right : NotificationBuilderAPI23_Access_Array_Access) return Boolean renames org.allbinary.content.NotificationBuilderAPI23_Package_References."=";
   function Java_Box (Value : NotificationBuilderAPI23_Access_Array_Access) return Java_Object_Access renames org.allbinary.content.NotificationBuilderAPI23_Package_References.Java_Box;
   function Java_Unbox_NotificationBuilderAPI23_Access_Array (Value : access Java_Object'Class) return NotificationBuilderAPI23_Access_Array_Access renames org.allbinary.content.NotificationBuilderAPI23_Package_References.Java_Unbox_NotificationBuilderAPI23_Access_Array;
   subtype NotificationBuilderAPI23_Access_Array_Access_Array is org.allbinary.content.NotificationBuilderAPI23_Package_References.NotificationBuilderAPI23_Access_Array_Access_Array;
   function "=" (Left, Right : NotificationBuilderAPI23_Access_Array_Access_Array) return Boolean renames org.allbinary.content.NotificationBuilderAPI23_Package_References."=";
   subtype NotificationBuilderAPI23_Access_Array_Access_Array_Access is org.allbinary.content.NotificationBuilderAPI23_Package_References.NotificationBuilderAPI23_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NotificationBuilderAPI23_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.content.NotificationBuilderAPI23_Package_References."=";
   function Java_Box (Value : NotificationBuilderAPI23_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.content.NotificationBuilderAPI23_Package_References.Java_Box;
   function Java_Unbox_NotificationBuilderAPI23_Access_Array_Access_Array (Value : access Java_Object'Class) return NotificationBuilderAPI23_Access_Array_Access_Array_Access renames org.allbinary.content.NotificationBuilderAPI23_Package_References.Java_Unbox_NotificationBuilderAPI23_Access_Array_Access_Array;

   type NotificationBuilderAPI23 is new NotificationBuilder with null record;

   procedure Initialize (This : in out NotificationBuilderAPI23'Class);
   function Create return NotificationBuilderAPI23_Access;
   function build (This : in out NotificationBuilderAPI23; context_Param : access Context_Package.Context'Class; command_Param : access Command_Package.Command'Class; message : Unbounded_String; integer_Id : Integer; pendingIntent_Param : access PendingIntent_Package.PendingIntent'Class) return Parcelable_Access;
   procedure build (This : in out NotificationBuilderAPI23; context_Param : access Context_Package.Context'Class; command_Param : access Command_Package.Command'Class; message : Unbounded_String; integer_Id : Integer; pendingIntent_Param : access PendingIntent_Package.PendingIntent'Class);

end org.allbinary.content.NotificationBuilderAPI23_Package;


