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


package body org.allbinary.content.NotificationBuilderAPI23_Package is

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
      Initialize (This.all);
      return This;
   end Create;


   function build (This : in out NotificationBuilderAPI23; context : Context_Access; command : Command_Access; message : Unbounded_String; integer_Id : Integer; pendingIntent : PendingIntent_Access) return Parcelable_Access is
      notification : Notification_Access;
   begin
        notification := Builder_Package.Create (context).setSmallIcon (integer_Id.intValue).setTicker (message).setWhen (Java_Current_Time_Millis).setContentTitle (command.getLabel).setContentText (message).setContentIntent (pendingIntent).build;
        return notification;
   end build;

   procedure build (This : in out NotificationBuilderAPI23; context : Context_Access; command : Command_Access; message : Unbounded_String; integer_Id : Integer; pendingIntent : PendingIntent_Access) is
      Java_Result : constant Parcelable_Access := NotificationBuilderAPI23'Class (This).build (context, command, message, integer_Id, pendingIntent);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end build;

end org.allbinary.content.NotificationBuilderAPI23_Package;


