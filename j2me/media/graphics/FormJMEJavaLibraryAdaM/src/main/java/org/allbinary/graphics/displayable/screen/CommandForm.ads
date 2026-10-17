-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
--  with javax.microedition.lcdui.Form_Package; use javax.microedition.lcdui.Form_Package;
--  with javax.microedition.lcdui.NullCommandListener_Package; use javax.microedition.lcdui.NullCommandListener_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.game.displayable.canvas.MenuListener_Package; use org.allbinary.game.displayable.canvas.MenuListener_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.displayable.command.MyCommandInterface_Package; use org.allbinary.graphics.displayable.command.MyCommandInterface_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABStack_Package; use org.allbinary.util.ABStack_Package;

package org.allbinary.graphics.displayable.screen.CommandForm_Package is

   package Processor_Package renames org.allbinary.canvas.Processor_Package;
   package MenuListener_Package renames org.allbinary.game.displayable.canvas.MenuListener_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;
   package MyCommandInterface_Package renames org.allbinary.graphics.displayable.command.MyCommandInterface_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package ABStack_Package renames org.allbinary.util.ABStack_Package;

   type CommandForm is tagged;
   type CommandForm_Access is access all CommandForm'Class;
   type CommandForm_Access_Array is array (Natural range <>) of CommandForm_Access;
   type CommandForm_Access_Array_Access is access all CommandForm_Access_Array;

   type CommandForm is new Form and MyCommandInterface and MenuListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      repaintProcessor : Processor_Access;
      commandStack : ABStack_Access;
   end record;
   NULL_COMMAND_FORM : Java_Object_Access;

   procedure Initialize (This : in out CommandForm'Class; commandListener : CommandListener_Access; formTitle : Unbounded_String; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access);
   function Create (commandListener : CommandListener_Access; formTitle : Unbounded_String; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return CommandForm_Access;
   function getNullCommandForm return CommandForm_Access;
   procedure getNullCommandForm;
   procedure initCommands (This : in out CommandForm; cmdListener : CommandListener_Access);
   procedure open (This : in out CommandForm);
   procedure close (This : in out CommandForm);
   procedure update (This : in out CommandForm);
   function getSourceId (This : in out CommandForm) return Integer;
   procedure getSourceId (This : in out CommandForm);
   procedure addCommand (This : in out CommandForm; command : Command_Access);
   procedure removeAllCommands (This : in out CommandForm);

end org.allbinary.graphics.displayable.screen.CommandForm_Package;


