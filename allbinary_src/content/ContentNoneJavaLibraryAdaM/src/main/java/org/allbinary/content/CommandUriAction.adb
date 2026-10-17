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


package body org.allbinary.content.CommandUriAction_Package is

   procedure Initialize_Fields (This : in out CommandUriAction'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out CommandUriAction'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CommandUriAction_Access is
      This : constant CommandUriAction_Access := new CommandUriAction;
   begin
      CommandUriAction_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CommandUriAction_Access is
   begin
        return CommandUriAction_Package.instance;
   end getInstance;

   procedure add (This : in out CommandUriAction; command : Command_Access; url : Unbounded_String) is
   begin
        null;
   end add;

   procedure process (This : in out CommandUriAction; command : Command_Access) is
   begin
        null;
   end process;

begin
   null;
   instance := CommandUriAction_Package.Create;

end org.allbinary.content.CommandUriAction_Package;


