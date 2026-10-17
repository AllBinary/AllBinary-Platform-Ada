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


package body org.allbinary.content.NotificationUtil_Package is

   procedure Initialize_Fields (This : in out NotificationUtil'Class) is
   begin
      null;
      This.notificationManager := NotificationManager_Access (ResourceUtil_Package.getInstance.getContext.getSystemService (Context_Package.NOTIFICATION_SERVICE));
   end Initialize_Fields;

   procedure Initialize (This : in out NotificationUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NotificationUtil_Access is
      This : constant NotificationUtil_Access := new NotificationUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return NotificationUtil_Access is
   begin
        return NotificationUtil_Package.SINGLETON;
   end getInstance;

   procedure notify (This : in out NotificationUtil; command : Command_Access; resource : Unbounded_String; message : Unbounded_String) is
      context : Context_Access;
      intent : Intent_Access;
      integer_Id : Integer;
      notification : Notification_Access;
      pendingIntent : PendingIntent_Access;
   begin
        context := ResourceUtil_Package.getInstance.getContext;
        intent := CommandUriAction_Package.getInstance.getIntent (command);
        integer_Id := ResourceUtil_Package.getInstance.getResourceId (resource);
        notification := Notification_Package.Create (integer_Id.intValue, message, Java_Current_Time_Millis);
        pendingIntent := PendingIntent_Package.getActivity (context, 0, intent, 0);
        notification.setLatestEventInfo (context, command.getLabel, message, pendingIntent);
        This.notificationManager.notify (TsUtil_Package.getInstance.hashCode (command), notification);
   end notify;

   procedure getInstance is
      Java_Result : constant NotificationUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   SINGLETON := NotificationUtil_Package.Create;

end org.allbinary.content.NotificationUtil_Package;


