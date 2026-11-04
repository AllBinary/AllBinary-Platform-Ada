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

limited with org.allbinary.game.configuration.InGameOptionsForm_Package;
package org.allbinary.game.configuration.InGameOptionsForm_Package_References is
   type InGameOptionsForm_Access is access all org.allbinary.game.configuration.InGameOptionsForm_Package.InGameOptionsForm'Class;
   type InGameOptionsForm_Access_Array is array (Natural range <>) of InGameOptionsForm_Access;
   type InGameOptionsForm_Access_Array_Access is access all InGameOptionsForm_Access_Array;
   type InGameOptionsForm_Access_Array_Access_Array is array (Natural range <>) of InGameOptionsForm_Access_Array_Access;
   type InGameOptionsForm_Access_Array_Access_Array_Access is access all InGameOptionsForm_Access_Array_Access_Array;
end org.allbinary.game.configuration.InGameOptionsForm_Package_References;

with org.allbinary.game.configuration.InGameOptionsForm_Package_References;
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
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.displayable.screen.CommandForm_Package; use org.allbinary.graphics.displayable.screen.CommandForm_Package;

package org.allbinary.game.configuration.InGameOptionsForm_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CommandForm_Package renames Standard.org.allbinary.graphics.displayable.screen.CommandForm_Package;
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
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   use type CommandListener_Access;
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   use type CommandListener_Access_Array;
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   use type CommandListener_Access_Array_Access;
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   use type CommandListener_Access_Array_Access_Array;
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   use type CommandListener_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InGameOptionsForm_Access is org.allbinary.game.configuration.InGameOptionsForm_Package_References.InGameOptionsForm_Access;
   function "=" (Left, Right : InGameOptionsForm_Access) return Boolean renames org.allbinary.game.configuration.InGameOptionsForm_Package_References."=";
   subtype InGameOptionsForm_Access_Array is org.allbinary.game.configuration.InGameOptionsForm_Package_References.InGameOptionsForm_Access_Array;
   function "=" (Left, Right : InGameOptionsForm_Access_Array) return Boolean renames org.allbinary.game.configuration.InGameOptionsForm_Package_References."=";
   subtype InGameOptionsForm_Access_Array_Access is org.allbinary.game.configuration.InGameOptionsForm_Package_References.InGameOptionsForm_Access_Array_Access;
   function "=" (Left, Right : InGameOptionsForm_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.InGameOptionsForm_Package_References."=";
   subtype InGameOptionsForm_Access_Array_Access_Array is org.allbinary.game.configuration.InGameOptionsForm_Package_References.InGameOptionsForm_Access_Array_Access_Array;
   function "=" (Left, Right : InGameOptionsForm_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.InGameOptionsForm_Package_References."=";
   subtype InGameOptionsForm_Access_Array_Access_Array_Access is org.allbinary.game.configuration.InGameOptionsForm_Package_References.InGameOptionsForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InGameOptionsForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.InGameOptionsForm_Package_References."=";

   type InGameOptionsForm is new CommandForm with null record;
   DISPLAY : Command_Access;
   SAVE : Command_Access;
   DEFAULT : Command_Access;

   procedure Initialize (This : in out InGameOptionsForm'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return InGameOptionsForm_Access;
   procedure initCommands (This : in out InGameOptionsForm; cmdListener_Param : access CommandListener_Package.CommandListener'Class);

end org.allbinary.game.configuration.InGameOptionsForm_Package;


