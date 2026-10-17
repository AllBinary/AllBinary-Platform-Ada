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


   procedure Initialize (This : in out CommandTextItem'Class; command_Param : access Command_Package.Command'Class; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      command : constant Command_Access := Command_Access (command_Param);
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        ABTextItem_Package.Initialize (This, command.getLabel, layout, altText, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        This.command := command;
   end Initialize;

   function Create (command_Param : access Command_Package.Command'Class; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return CommandTextItem_Access is
      This : constant CommandTextItem_Access := new CommandTextItem;
   begin
      CommandTextItem_Package.Initialize (This.all, command_Param, layout, altText, backgroundBasicColor_Param, foregroundBasicColor_Param);
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

end org.allbinary.graphics.form.item.CommandTextItem_Package;


