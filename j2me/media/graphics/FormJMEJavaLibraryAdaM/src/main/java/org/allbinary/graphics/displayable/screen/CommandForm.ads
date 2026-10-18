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
with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.Form_Package; use javax.microedition.lcdui.Form_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.game.displayable.canvas.MenuListener_Package; use org.allbinary.game.displayable.canvas.MenuListener_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.command.MyCommandInterface_Package; use org.allbinary.graphics.displayable.command.MyCommandInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABStack_Package; use org.allbinary.util.ABStack_Package;

package org.allbinary.graphics.displayable.screen.CommandForm_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Form_Package renames Standard.javax.microedition.lcdui.Form_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package MenuListener_Package renames Standard.org.allbinary.game.displayable.canvas.MenuListener_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package MyCommandInterface_Package renames Standard.org.allbinary.graphics.displayable.command.MyCommandInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABStack_Package renames Standard.org.allbinary.util.ABStack_Package;

   type CommandForm is tagged;
   type CommandForm_Access is access all CommandForm'Class;
   type CommandForm_Access_Array is array (Natural range <>) of CommandForm_Access;
   type CommandForm_Access_Array_Access is access all CommandForm_Access_Array;
   type CommandForm_Access_Array_Access_Array is array (Natural range <>) of CommandForm_Access_Array_Access;
   type CommandForm_Access_Array_Access_Array_Access is access all CommandForm_Access_Array_Access_Array;

   type CommandForm is new Form and MyCommandInterface and MenuListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      repaintProcessor : Processor_Access;
      commandStack : ABStack_Access;
   end record;
   NULL_COMMAND_FORM : Java_Object_Access;

   procedure Initialize (This : in out CommandForm'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; formTitle : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; formTitle : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return CommandForm_Access;
   function getNullCommandForm return CommandForm_Access;
   procedure initCommands (This : in out CommandForm; cmdListener_Param : access CommandListener_Package.CommandListener'Class);
   procedure open (This : in out CommandForm);
   procedure close (This : in out CommandForm);
   procedure update (This : in out CommandForm);
   function getSourceId (This : in out CommandForm) return Integer;
   procedure addCommand (This : in out CommandForm; command_Param : access Command_Package.Command'Class);
   procedure removeAllCommands (This : in out CommandForm);

end org.allbinary.graphics.displayable.screen.CommandForm_Package;


