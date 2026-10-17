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
      NotificationBuilder_Package.Initialize (This.all);
      return This;
   end Create;


   function build (This : in out NotificationBuilder; context_Param : access Context'Class; command_Param : access Command'Class; message : Unbounded_String; integer_Id : Integer; pendingIntent_Param : access PendingIntent'Class) return Parcelable_Access is
      context : Context_Access := Context_Access (context_Param);
      command : Command_Access := Command_Access (command_Param);
      pendingIntent : PendingIntent_Access := PendingIntent_Access (pendingIntent_Param);
   begin
        return NullParcelable_Package.NULL_PARCELABLE;
   end build;

   procedure build (This : in out NotificationBuilder; context_Param : access Context'Class; command_Param : access Command'Class; message : Unbounded_String; integer_Id : Integer; pendingIntent_Param : access PendingIntent'Class) is
      Java_Result : constant Parcelable_Access := NotificationBuilder'Class (This).build (context_Param, command_Param, message, integer_Id, pendingIntent_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end build;

begin
   null;
   NULL_NOTIFICATION_BUILDER := NotificationBuilder_Package.Create;

end org.allbinary.content.NotificationBuilder_Package;


