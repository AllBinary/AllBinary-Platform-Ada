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
      This.commonStrings := CommonStrings_Package.getInstance;
      This.hashtable := StdUtil_Package.getInstance.createHashtable;
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

   procedure add (This : in out CommandUriAction; command_Param : access Command_Package.Command'Class; url : Unbounded_String) is
      command : constant Command_Access := Command_Access (command_Param);
   begin
        This.hashtable.put (command, url);
   end add;

   procedure process (This : in out CommandUriAction; command_Param : access Command_Package.Command'Class) is
      command : constant Command_Access := Command_Access (command_Param);
   begin
        begin
            null;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, CommandUriAction_Access'(This'Unchecked_Access), This.commonStrings.PROCESS, e);
                end;
        end;
   end process;

   function getIntent (This : in out CommandUriAction; command_Param : access Command_Package.Command'Class) return Intent_Access is
      command : constant Command_Access := Command_Access (command_Param);
      url : Unbounded_String;
   begin
        url := Unbounded_String (This.hashtable.get (command));
        return This.intent;
   end getIntent;

   procedure getIntent (This : in out CommandUriAction; command_Param : access Command_Package.Command'Class) is
      Java_Result : constant Intent_Access := CommandUriAction'Class (This).getIntent (command_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIntent;

begin
   null;
   instance := CommandUriAction_Package.Create;

end org.allbinary.content.CommandUriAction_Package;


