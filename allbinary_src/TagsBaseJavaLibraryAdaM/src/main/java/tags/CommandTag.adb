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


package body tags.CommandTag_Package is

   procedure Initialize_Fields (This : in out CommandTag'Class) is
   begin
      null;
      This.tagStrings := TagStrings_Package.getInstance;
      This.command := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out CommandTag'Class) is
   begin
      CustomTagSupport_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CommandTag_Access is
      This : constant CommandTag_Access := new CommandTag;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure setCommand (This : in out CommandTag; command : Unbounded_String) is
   begin
        This.command := command;
   end setCommand;

   function getCommand (This : in out CommandTag) return Unbounded_String is
   begin
        return This.command;
   end getCommand;

   procedure getCommand (This : in out CommandTag) is
      Java_Result : constant Unbounded_String := CommandTag'Class (This).getCommand;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCommand;

end tags.CommandTag_Package;


