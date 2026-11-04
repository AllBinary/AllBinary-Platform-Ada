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

limited with org.allbinary.game.displayable.canvas.CommandRunnable_Package;
package org.allbinary.game.displayable.canvas.CommandRunnable_Package_References is
   type CommandRunnable_Access is access all org.allbinary.game.displayable.canvas.CommandRunnable_Package.CommandRunnable'Class;
   type CommandRunnable_Access_Array is array (Natural range <>) of CommandRunnable_Access;
   type CommandRunnable_Access_Array_Access is access all CommandRunnable_Access_Array;
   type CommandRunnable_Access_Array_Access_Array is array (Natural range <>) of CommandRunnable_Access_Array_Access;
   type CommandRunnable_Access_Array_Access_Array_Access is access all CommandRunnable_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.CommandRunnable_Package_References;

with org.allbinary.game.displayable.canvas.CommandRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;
limited with org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package;
with org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References;

package org.allbinary.game.displayable.canvas.CommandRunnable_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   subtype Command_Access is javax.microedition.lcdui.Command_Package_References.Command_Access;
   use type Command_Access;
   subtype Command_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array;
   use type Command_Access_Array;
   subtype Command_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access;
   use type Command_Access_Array_Access;
   subtype Command_Access_Array_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array;
   use type Command_Access_Array_Access_Array;
   subtype Command_Access_Array_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array_Access;
   use type Command_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype CommandFormInputProcessor_Access is org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References.CommandFormInputProcessor_Access;
   use type CommandFormInputProcessor_Access;
   subtype CommandFormInputProcessor_Access_Array is org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References.CommandFormInputProcessor_Access_Array;
   use type CommandFormInputProcessor_Access_Array;
   subtype CommandFormInputProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References.CommandFormInputProcessor_Access_Array_Access;
   use type CommandFormInputProcessor_Access_Array_Access;
   subtype CommandFormInputProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References.CommandFormInputProcessor_Access_Array_Access_Array;
   use type CommandFormInputProcessor_Access_Array_Access_Array;
   subtype CommandFormInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References.CommandFormInputProcessor_Access_Array_Access_Array_Access;
   use type CommandFormInputProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CommandRunnable_Access is org.allbinary.game.displayable.canvas.CommandRunnable_Package_References.CommandRunnable_Access;
   function "=" (Left, Right : CommandRunnable_Access) return Boolean renames org.allbinary.game.displayable.canvas.CommandRunnable_Package_References."=";
   subtype CommandRunnable_Access_Array is org.allbinary.game.displayable.canvas.CommandRunnable_Package_References.CommandRunnable_Access_Array;
   function "=" (Left, Right : CommandRunnable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.CommandRunnable_Package_References."=";
   subtype CommandRunnable_Access_Array_Access is org.allbinary.game.displayable.canvas.CommandRunnable_Package_References.CommandRunnable_Access_Array_Access;
   function "=" (Left, Right : CommandRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.CommandRunnable_Package_References."=";
   subtype CommandRunnable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.CommandRunnable_Package_References.CommandRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : CommandRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.CommandRunnable_Package_References."=";
   subtype CommandRunnable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.CommandRunnable_Package_References.CommandRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.CommandRunnable_Package_References."=";

   type CommandRunnable is new Java_Object and Runnable with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      commandFormInputProcessor : CommandFormInputProcessor_Access;
      command : Command_Access;
   end record;

   procedure Initialize (This : in out CommandRunnable'Class; commandFormInputProcessor_Param : access CommandFormInputProcessor_Package.CommandFormInputProcessor'Class; command_Param : access Command_Package.Command'Class);
   function Create (commandFormInputProcessor_Param : access CommandFormInputProcessor_Package.CommandFormInputProcessor'Class; command_Param : access Command_Package.Command'Class) return CommandRunnable_Access;
   procedure run (This : in out CommandRunnable);

end org.allbinary.game.displayable.canvas.CommandRunnable_Package;


