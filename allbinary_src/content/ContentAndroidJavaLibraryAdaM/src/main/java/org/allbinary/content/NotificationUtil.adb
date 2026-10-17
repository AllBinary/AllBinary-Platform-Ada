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
      This.logUtil := LogUtil_Package.getInstance;
      This.notificationManager := NotificationManager_Access (ResourceUtil_Package.getInstance.getContext.getSystemService (Context_Package.NOTIFICATION_SERVICE));
      This.notificationBuilder := null;
   end Initialize_Fields;


   function getInstance return NotificationUtil_Access is
   begin
        return NotificationUtil_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out NotificationUtil'Class) is
      SDK_VERSION : Integer;
   begin
      Initialize_Fields (This);
        SDK_VERSION := AndroidInfoFactory_Package.getInstance.getVersion;
        if (SDK_VERSION) > (22) then
            This.notificationBuilder := NotificationBuilderAPI23_Package.Create;
        else
            This.notificationBuilder := NotificationBuilder_Package.NULL_NOTIFICATION_BUILDER;
        end if;
   end Initialize;

   function Create return NotificationUtil_Access is
      This : constant NotificationUtil_Access := new NotificationUtil;
   begin
      NotificationUtil_Package.Initialize (This.all);
      return This;
   end Create;

   procedure notify (This : in out NotificationUtil; command : Command_Access; resource : Unbounded_String; message : Unbounded_String) is
      context : Context_Access;
      intent : Intent_Access;
      integer_Id : Integer;
      FLAG_IMMUTABLE : Integer;
      SDK_VERSION : Integer;
      pendingIntent : PendingIntent_Access;
      commonStrings : CommonStrings_Access;
   begin
        context := ResourceUtil_Package.getInstance.getContext;
        intent := CommandUriAction_Package.getInstance.getIntent (command);
        integer_Id := ResourceUtil_Package.getInstance.getResourceId (resource);
        FLAG_IMMUTABLE := Java_Shift_Left (1, 26);
        SDK_VERSION := AndroidInfoFactory_Package.getInstance.getVersion;
        pendingIntent := PendingIntent_Package.getActivity (context, 0, intent, (if (SDK_VERSION) > (22) then FLAG_IMMUTABLE else 0));
        if (This.notificationBuilder) = (null) then
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.NOT_IMPLEMENTED);
            return;
        end if;
        This.notificationBuilder.build (context, command, message, integer_Id, pendingIntent);
   end notify;

begin
   null;
   SINGLETON := NotificationUtil_Package.Create;

end org.allbinary.content.NotificationUtil_Package;


