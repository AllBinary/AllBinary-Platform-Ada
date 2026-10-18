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
with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;

package org.allbinary.graphics.displayable.command.MyCommandInterface_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;

   type MyCommandInterface is interface;
   type MyCommandInterface_Access is access all MyCommandInterface'Class;
   type MyCommandInterface_Access_Array is array (Natural range <>) of MyCommandInterface_Access;
   type MyCommandInterface_Access_Array_Access is access all MyCommandInterface_Access_Array;
   type MyCommandInterface_Access_Array_Access_Array is array (Natural range <>) of MyCommandInterface_Access_Array_Access;
   type MyCommandInterface_Access_Array_Access_Array_Access is access all MyCommandInterface_Access_Array_Access_Array;
   procedure addCommand (This : in out MyCommandInterface; command_Param : access Command_Package.Command'Class) is abstract;
   procedure removeAllCommands (This : in out MyCommandInterface) is abstract;

end org.allbinary.graphics.displayable.command.MyCommandInterface_Package;


