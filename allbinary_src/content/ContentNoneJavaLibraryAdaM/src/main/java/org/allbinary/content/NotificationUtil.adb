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
   end Initialize_Fields;

   procedure Initialize (This : in out NotificationUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NotificationUtil_Access is
      This : constant NotificationUtil_Access := new NotificationUtil;
   begin
      NotificationUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return NotificationUtil_Access is
   begin
        return NotificationUtil_Package.SINGLETON;
   end getInstance;

   procedure notify (This : in out NotificationUtil; command_Param : access Command'Class; resource : Unbounded_String; message : Unbounded_String) is
      command : Command_Access := Command_Access (command_Param);
   begin
        null;
   end notify;

begin
   null;
   SINGLETON := NotificationUtil_Package.Create;

end org.allbinary.content.NotificationUtil_Package;


