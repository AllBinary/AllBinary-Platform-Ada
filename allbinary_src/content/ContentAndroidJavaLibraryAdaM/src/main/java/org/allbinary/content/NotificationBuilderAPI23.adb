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


with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with android.app.Notification_Package; use android.app.Notification_Package;
with android.app.Notification.Builder_Package; use android.app.Notification.Builder_Package;
with android.app.PendingIntent_Package; use android.app.PendingIntent_Package;
with android.content.Context_Package; use android.content.Context_Package;
with android.os.Parcelable_Package; use android.os.Parcelable_Package;
with org.allbinary.content.NotificationBuilder_Package;

package body org.allbinary.content.NotificationBuilderAPI23_Package is

   package Notification_Package renames Standard.android.app.Notification_Package;
   package Builder_Package renames Standard.android.app.Notification.Builder_Package;
   subtype Command_Access is javax.microedition.lcdui.Command_Package_References.Command_Access;
   function "=" (Left, Right : Command_Access) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array;
   function "=" (Left, Right : Command_Access_Array) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access;
   function "=" (Left, Right : Command_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array;
   function "=" (Left, Right : Command_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Command_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype PendingIntent_Access is android.app.PendingIntent_Package_References.PendingIntent_Access;
   function "=" (Left, Right : PendingIntent_Access) return Boolean renames android.app.PendingIntent_Package_References."=";
   subtype PendingIntent_Access_Array is android.app.PendingIntent_Package_References.PendingIntent_Access_Array;
   function "=" (Left, Right : PendingIntent_Access_Array) return Boolean renames android.app.PendingIntent_Package_References."=";
   subtype PendingIntent_Access_Array_Access is android.app.PendingIntent_Package_References.PendingIntent_Access_Array_Access;
   function "=" (Left, Right : PendingIntent_Access_Array_Access) return Boolean renames android.app.PendingIntent_Package_References."=";
   subtype PendingIntent_Access_Array_Access_Array is android.app.PendingIntent_Package_References.PendingIntent_Access_Array_Access_Array;
   function "=" (Left, Right : PendingIntent_Access_Array_Access_Array) return Boolean renames android.app.PendingIntent_Package_References."=";
   subtype PendingIntent_Access_Array_Access_Array_Access is android.app.PendingIntent_Package_References.PendingIntent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PendingIntent_Access_Array_Access_Array_Access) return Boolean renames android.app.PendingIntent_Package_References."=";
   subtype Context_Access is android.content.Context_Package_References.Context_Access;
   function "=" (Left, Right : Context_Access) return Boolean renames android.content.Context_Package_References."=";
   subtype Context_Access_Array is android.content.Context_Package_References.Context_Access_Array;
   function "=" (Left, Right : Context_Access_Array) return Boolean renames android.content.Context_Package_References."=";
   subtype Context_Access_Array_Access is android.content.Context_Package_References.Context_Access_Array_Access;
   function "=" (Left, Right : Context_Access_Array_Access) return Boolean renames android.content.Context_Package_References."=";
   subtype Context_Access_Array_Access_Array is android.content.Context_Package_References.Context_Access_Array_Access_Array;
   function "=" (Left, Right : Context_Access_Array_Access_Array) return Boolean renames android.content.Context_Package_References."=";
   subtype Context_Access_Array_Access_Array_Access is android.content.Context_Package_References.Context_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Context_Access_Array_Access_Array_Access) return Boolean renames android.content.Context_Package_References."=";
   subtype Parcelable_Access is android.os.Parcelable_Package_References.Parcelable_Access;
   function "=" (Left, Right : Parcelable_Access) return Boolean renames android.os.Parcelable_Package_References."=";
   subtype Parcelable_Access_Array is android.os.Parcelable_Package_References.Parcelable_Access_Array;
   function "=" (Left, Right : Parcelable_Access_Array) return Boolean renames android.os.Parcelable_Package_References."=";
   subtype Parcelable_Access_Array_Access is android.os.Parcelable_Package_References.Parcelable_Access_Array_Access;
   function "=" (Left, Right : Parcelable_Access_Array_Access) return Boolean renames android.os.Parcelable_Package_References."=";
   subtype Parcelable_Access_Array_Access_Array is android.os.Parcelable_Package_References.Parcelable_Access_Array_Access_Array;
   function "=" (Left, Right : Parcelable_Access_Array_Access_Array) return Boolean renames android.os.Parcelable_Package_References."=";
   subtype Parcelable_Access_Array_Access_Array_Access is android.os.Parcelable_Package_References.Parcelable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Parcelable_Access_Array_Access_Array_Access) return Boolean renames android.os.Parcelable_Package_References."=";
   procedure Initialize_Fields (This : in out NotificationBuilderAPI23'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NotificationBuilderAPI23'Class) is
   begin
      NotificationBuilder_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NotificationBuilderAPI23_Access is
      This : constant NotificationBuilderAPI23_Access := new NotificationBuilderAPI23;
   begin
      NotificationBuilderAPI23_Package.Initialize (This.all);
      return This;
   end Create;


   function build (This : in out NotificationBuilderAPI23; context_Param : access Context_Package.Context'Class; command_Param : access Command_Package.Command'Class; message : Unbounded_String; integer_Id : Integer; pendingIntent_Param : access PendingIntent_Package.PendingIntent'Class) return Parcelable_Access is
      context : constant Context_Access := Context_Access (context_Param);
      command : constant Command_Access := Command_Access (command_Param);
      pendingIntent : constant PendingIntent_Access := PendingIntent_Access (pendingIntent_Param);
      notification : Notification_Access;
   begin
        notification := Builder_Package.Create (context).setSmallIcon (Integer (integer_Id)).setTicker (message).setWhen (Java_Current_Time_Millis).setContentTitle (command.getLabel).setContentText (message).setContentIntent (pendingIntent).build;
        return Parcelable_Access (notification);
   end build;

   procedure build (This : in out NotificationBuilderAPI23; context_Param : access Context_Package.Context'Class; command_Param : access Command_Package.Command'Class; message : Unbounded_String; integer_Id : Integer; pendingIntent_Param : access PendingIntent_Package.PendingIntent'Class) is
      Java_Result : constant Parcelable_Access := NotificationBuilderAPI23'Class (This).build (context_Param => context_Param, command_Param => command_Param, message => message, integer_Id => integer_Id, pendingIntent_Param => pendingIntent_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end build;

end org.allbinary.content.NotificationBuilderAPI23_Package;


