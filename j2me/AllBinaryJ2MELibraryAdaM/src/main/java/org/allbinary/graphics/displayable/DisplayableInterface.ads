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
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;

package org.allbinary.graphics.displayable.DisplayableInterface_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;

   type DisplayableInterface is interface;
   type DisplayableInterface_Access is access all DisplayableInterface'Class;
   type DisplayableInterface_Access_Array is array (Natural range <>) of DisplayableInterface_Access;
   type DisplayableInterface_Access_Array_Access is access all DisplayableInterface_Access_Array;
   type DisplayableInterface_Access_Array_Access_Array is array (Natural range <>) of DisplayableInterface_Access_Array_Access;
   type DisplayableInterface_Access_Array_Access_Array_Access is access all DisplayableInterface_Access_Array_Access_Array;
   procedure addCommand (This : in out DisplayableInterface; cmd_Param : access Command_Package.Command'Class) is abstract;
   function getHeight (This : in out DisplayableInterface) return Integer is abstract;
   function getWidth (This : in out DisplayableInterface) return Integer is abstract;
   procedure removeCommand (This : in out DisplayableInterface; cmd_Param : access Command_Package.Command'Class) is abstract;
   procedure setCommandListener (This : in out DisplayableInterface; l_Param : access CommandListener_Package.CommandListener'Class) is abstract;

end org.allbinary.graphics.displayable.DisplayableInterface_Package;


