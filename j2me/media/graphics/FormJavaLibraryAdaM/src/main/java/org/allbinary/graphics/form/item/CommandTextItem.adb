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


package body org.allbinary.graphics.form.item.CommandTextItem_Package is

   procedure Initialize_Fields (This : in out CommandTextItem'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CommandTextItem'Class; command : Command_Access; layout : Integer; altText : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
   begin
        ABTextItem_Package.Initialize (This, command.getLabel, layout, altText, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        This.command := command;
   end Initialize;

   function Create (command : Command_Access; layout : Integer; altText : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return CommandTextItem_Access is
      This : constant CommandTextItem_Access := new CommandTextItem;
   begin
      Initialize (This.all, command, layout, altText, backgroundBasicColor, foregroundBasicColor);
      return This;
   end Create;

   function isFocusable (This : in out CommandTextItem) return Boolean is
   begin
        return True;
   end isFocusable;

   function getCommand (This : in out CommandTextItem) return Command_Access is
   begin
        return This.command;
   end getCommand;

   procedure isFocusable (This : in out CommandTextItem) is
      Java_Result : constant Boolean := CommandTextItem'Class (This).isFocusable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isFocusable;

   procedure getCommand (This : in out CommandTextItem) is
      Java_Result : constant Command_Access := CommandTextItem'Class (This).getCommand;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCommand;

end org.allbinary.graphics.form.item.CommandTextItem_Package;


