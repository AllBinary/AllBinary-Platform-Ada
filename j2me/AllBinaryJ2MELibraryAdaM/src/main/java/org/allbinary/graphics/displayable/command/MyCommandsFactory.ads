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
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.graphics.displayable.command.MyCommandsFactory_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type MyCommandsFactory is tagged;
   type MyCommandsFactory_Access is access all MyCommandsFactory'Class;
   type MyCommandsFactory_Access_Array is array (Natural range <>) of MyCommandsFactory_Access;
   type MyCommandsFactory_Access_Array_Access is access all MyCommandsFactory_Access_Array;

   type MyCommandsFactory is new Java_Object with record
      NO_COMMAND : Command_Access;
      GAUGE_CHANGE : Command_Access;
      SET_DISPLAYABLE : Command_Access;
      PAUSE_COMMAND : Command_Access;
      RESUME_COMMAND : Command_Access;
   end record;
   instance : MyCommandsFactory_Access;

   procedure Initialize (This : in out MyCommandsFactory'Class);
   function Create return MyCommandsFactory_Access;
   function getInstance return MyCommandsFactory_Access;

end org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;


