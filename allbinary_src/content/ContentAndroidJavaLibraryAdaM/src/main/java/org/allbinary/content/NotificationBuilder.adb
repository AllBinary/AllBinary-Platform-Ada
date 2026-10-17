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


package body org.allbinary.content.NotificationBuilder_Package is

   procedure Initialize_Fields (This : in out NotificationBuilder'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NotificationBuilder'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NotificationBuilder_Access is
      This : constant NotificationBuilder_Access := new NotificationBuilder;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function build (This : in out NotificationBuilder; context : Context_Access; command : Command_Access; message : Unbounded_String; integer_Id : Integer; pendingIntent : PendingIntent_Access) return Parcelable_Access is
   begin
        return NullParcelable_Package.NULL_PARCELABLE;
   end build;

   procedure build (This : in out NotificationBuilder; context : Context_Access; command : Command_Access; message : Unbounded_String; integer_Id : Integer; pendingIntent : PendingIntent_Access) is
      Java_Result : constant Parcelable_Access := NotificationBuilder'Class (This).build (context, command, message, integer_Id, pendingIntent);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end build;

begin
   null;
   NULL_NOTIFICATION_BUILDER := NotificationBuilder_Package.Create;

end org.allbinary.content.NotificationBuilder_Package;


