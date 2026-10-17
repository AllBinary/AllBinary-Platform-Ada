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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.content.CommandUriAction_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type CommandUriAction is tagged;
   type CommandUriAction_Access is access all CommandUriAction'Class;
   type CommandUriAction_Access_Array is array (Natural range <>) of CommandUriAction_Access;
   type CommandUriAction_Access_Array_Access is access all CommandUriAction_Access_Array;

   type CommandUriAction is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : CommandUriAction_Access;

   procedure Initialize (This : in out CommandUriAction'Class);
   function Create return CommandUriAction_Access;
   function getInstance return CommandUriAction_Access;
   procedure add (This : in out CommandUriAction; command_Param : access Command'Class; url : Unbounded_String);
   procedure process (This : in out CommandUriAction; command_Param : access Command'Class);

end org.allbinary.content.CommandUriAction_Package;


