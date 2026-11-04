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

limited with org.allbinary.content.CommandUriAction_Package;
package org.allbinary.content.CommandUriAction_Package_References is
   type CommandUriAction_Access is access all org.allbinary.content.CommandUriAction_Package.CommandUriAction'Class;
   type CommandUriAction_Access_Array is array (Natural range <>) of CommandUriAction_Access;
   type CommandUriAction_Access_Array_Access is access all CommandUriAction_Access_Array;
   type CommandUriAction_Access_Array_Access_Array is array (Natural range <>) of CommandUriAction_Access_Array_Access;
   type CommandUriAction_Access_Array_Access_Array_Access is access all CommandUriAction_Access_Array_Access_Array;
end org.allbinary.content.CommandUriAction_Package_References;

with org.allbinary.content.CommandUriAction_Package_References;
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

package org.allbinary.content.CommandUriAction_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype CommandUriAction_Access is org.allbinary.content.CommandUriAction_Package_References.CommandUriAction_Access;
   function "=" (Left, Right : CommandUriAction_Access) return Boolean renames org.allbinary.content.CommandUriAction_Package_References."=";
   subtype CommandUriAction_Access_Array is org.allbinary.content.CommandUriAction_Package_References.CommandUriAction_Access_Array;
   function "=" (Left, Right : CommandUriAction_Access_Array) return Boolean renames org.allbinary.content.CommandUriAction_Package_References."=";
   subtype CommandUriAction_Access_Array_Access is org.allbinary.content.CommandUriAction_Package_References.CommandUriAction_Access_Array_Access;
   function "=" (Left, Right : CommandUriAction_Access_Array_Access) return Boolean renames org.allbinary.content.CommandUriAction_Package_References."=";
   subtype CommandUriAction_Access_Array_Access_Array is org.allbinary.content.CommandUriAction_Package_References.CommandUriAction_Access_Array_Access_Array;
   function "=" (Left, Right : CommandUriAction_Access_Array_Access_Array) return Boolean renames org.allbinary.content.CommandUriAction_Package_References."=";
   subtype CommandUriAction_Access_Array_Access_Array_Access is org.allbinary.content.CommandUriAction_Package_References.CommandUriAction_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandUriAction_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.content.CommandUriAction_Package_References."=";

   type CommandUriAction is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : CommandUriAction_Access;

   procedure Initialize (This : in out CommandUriAction'Class);
   function Create return CommandUriAction_Access;
   function getInstance return CommandUriAction_Access;
   procedure add (This : in out CommandUriAction; command_Param : access Command_Package.Command'Class; url : Unbounded_String);
   procedure process (This : in out CommandUriAction; command_Param : access Command_Package.Command'Class);

end org.allbinary.content.CommandUriAction_Package;


