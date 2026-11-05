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
with javax.microedition.lcdui.Command_Package_References;
with android.app.Notification_Package; use android.app.Notification_Package;
with android.app.NotificationManager_Package; use android.app.NotificationManager_Package;
with android.app.NotificationManager_Package_References;
with android.app.PendingIntent_Package; use android.app.PendingIntent_Package;
with android.content.Context_Package; use android.content.Context_Package;
with android.content.Intent_Package; use android.content.Intent_Package;
with org.allbinary.android.AndroidInfoFactory_Package; use org.allbinary.android.AndroidInfoFactory_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.content.NotificationBuilder_Package; use org.allbinary.content.NotificationBuilder_Package;
with org.allbinary.content.NotificationBuilder_Package_References;
with org.allbinary.content.NotificationBuilderAPI23_Package; use org.allbinary.content.NotificationBuilderAPI23_Package;
with org.allbinary.content.CommandUriAction_Package; use org.allbinary.content.CommandUriAction_Package;
with org.allbinary.content.CommandUriAction_Package;
with org.allbinary.content.NotificationBuilder_Package;
with org.allbinary.content.NotificationBuilderAPI23_Package;
with org.allbinary.content.NotificationBuilder_Package_References;

package body org.allbinary.content.NotificationUtil_Package is

   package PendingIntent_Package renames Standard.android.app.PendingIntent_Package;
   package Context_Package renames Standard.android.content.Context_Package;
   package Intent_Package renames Standard.android.content.Intent_Package;
   package AndroidInfoFactory_Package renames Standard.org.allbinary.android.AndroidInfoFactory_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype NotificationManager_Access is android.app.NotificationManager_Package_References.NotificationManager_Access;
   function "=" (Left, Right : NotificationManager_Access) return Boolean renames android.app.NotificationManager_Package_References."=";
   subtype NotificationManager_Access_Array is android.app.NotificationManager_Package_References.NotificationManager_Access_Array;
   function "=" (Left, Right : NotificationManager_Access_Array) return Boolean renames android.app.NotificationManager_Package_References."=";
   subtype NotificationManager_Access_Array_Access is android.app.NotificationManager_Package_References.NotificationManager_Access_Array_Access;
   function "=" (Left, Right : NotificationManager_Access_Array_Access) return Boolean renames android.app.NotificationManager_Package_References."=";
   subtype NotificationManager_Access_Array_Access_Array is android.app.NotificationManager_Package_References.NotificationManager_Access_Array_Access_Array;
   function "=" (Left, Right : NotificationManager_Access_Array_Access_Array) return Boolean renames android.app.NotificationManager_Package_References."=";
   subtype NotificationManager_Access_Array_Access_Array_Access is android.app.NotificationManager_Package_References.NotificationManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NotificationManager_Access_Array_Access_Array_Access) return Boolean renames android.app.NotificationManager_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
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
   procedure Initialize_Fields (This : in out NotificationUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.notificationManager := NotificationManager_Access (ResourceUtil_Package.getInstance.getContext.getSystemService (Context_Package.NOTIFICATION_SERVICE));
      This.notificationBuilder := null;
   end Initialize_Fields;


   function getInstance return NotificationUtil_Access is
   begin
        return NotificationUtil_Access (NotificationUtil_Package.SINGLETON);
   end getInstance;

   procedure Initialize (This : in out NotificationUtil'Class) is
      SDK_VERSION : Integer;
   begin
      Initialize_Fields (This);
        SDK_VERSION := AndroidInfoFactory_Package.getInstance.getVersion;
        if (SDK_VERSION) > (22) then
            This.notificationBuilder := NotificationBuilder_Access (NotificationBuilderAPI23_Package.Create);
        else
            This.notificationBuilder := NotificationBuilder_Access (NotificationBuilder_Package.NULL_NOTIFICATION_BUILDER);
        end if;
   end Initialize;

   function Create return NotificationUtil_Access is
      This : constant NotificationUtil_Access := new NotificationUtil;
   begin
      NotificationUtil_Package.Initialize (This.all);
      return This;
   end Create;

   procedure notify (This : in out NotificationUtil; command_Param : access Command_Package.Command'Class; resource : Unbounded_String; message : Unbounded_String) is
      command : constant Command_Access := Command_Access (command_Param);
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
        if org.allbinary.content.NotificationBuilder_Package_References."=" (This.notificationBuilder, null) then
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.EXCEPTION_Id, NotificationUtil_Access'(This'Unchecked_Access), commonStrings.NOT_IMPLEMENTED);
            return;
        end if;
        This.notificationBuilder.build (context, command, message, integer_Id, pendingIntent);
   end notify;

begin
   null;
   SINGLETON := NotificationUtil_Package.Create;

end org.allbinary.content.NotificationUtil_Package;


