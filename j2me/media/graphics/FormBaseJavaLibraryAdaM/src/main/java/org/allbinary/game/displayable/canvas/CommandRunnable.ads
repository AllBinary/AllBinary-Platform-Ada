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
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.displayable.canvas.Runnable_Package; use org.allbinary.game.displayable.canvas.Runnable_Package;
with org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package; use org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package;

package org.allbinary.game.displayable.canvas.CommandRunnable_Package is

   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type CommandRunnable is tagged;
   type CommandRunnable_Access is access all CommandRunnable'Class;
   type CommandRunnable_Access_Array is array (Natural range <>) of CommandRunnable_Access;
   type CommandRunnable_Access_Array_Access is access all CommandRunnable_Access_Array;

   type CommandRunnable is new Runnable with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      commandFormInputProcessor : CommandFormInputProcessor_Access;
      command : Command_Access;
   end record;

   procedure Initialize (This : in out CommandRunnable'Class; commandFormInputProcessor : CommandFormInputProcessor_Access; command : Command_Access);
   function Create (commandFormInputProcessor : CommandFormInputProcessor_Access; command : Command_Access) return CommandRunnable_Access;
   procedure run (This : in out CommandRunnable);

end org.allbinary.game.displayable.canvas.CommandRunnable_Package;


