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


with android.net.Uri_Package; use android.net.Uri_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.content.CommandUriAction_Package is

   package Uri_Package renames Standard.android.net.Uri_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out CommandUriAction'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
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
        This.hashtable.put (command, Java_Box (url));
   end add;

   procedure process (This : in out CommandUriAction; command_Param : access Command_Package.Command'Class) is
      command : constant Command_Access := Command_Access (command_Param);
      intent : Intent_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            intent := CommandUriAction'Class (This).getIntent (command);
            ResourceUtil_Package.getInstance.getContext.startActivity (intent);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, CommandUriAction_Access'(This'Unchecked_Access), commonStrings.PROCESS, e);
                end;
        end;
   end process;

   function getIntent (This : in out CommandUriAction; command_Param : access Command_Package.Command'Class) return Intent_Access is
      command : constant Command_Access := Command_Access (command_Param);
      url : Unbounded_String;
      uri : Uri_Access;
      intent : Intent_Access;
   begin
        url := Java_Unbox (This.hashtable.get (command));
        uri := Uri_Package.parse (url);
        intent := Intent_Package.Create (Intent_Package.ACTION_VIEW, uri);
        return intent;
   end getIntent;

   procedure getIntent (This : in out CommandUriAction; command_Param : access Command_Package.Command'Class) is
      Java_Result : constant Intent_Access := CommandUriAction'Class (This).getIntent (command_Param => command_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIntent;

begin
   null;
   instance := CommandUriAction_Package.Create;

end org.allbinary.content.CommandUriAction_Package;


