--
-- AllBinary Open License Version 1
-- Copyright (c) 2022 AllBinary
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
with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;

package org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;

   type AboutCommandProcessor is tagged;
   type AboutCommandProcessor_Access is access all AboutCommandProcessor'Class;
   type AboutCommandProcessor_Access_Array is array (Natural range <>) of AboutCommandProcessor_Access;
   type AboutCommandProcessor_Access_Array_Access is access all AboutCommandProcessor_Access_Array;

   type AboutCommandProcessor is new Java_Object with null record;
   instance : AboutCommandProcessor_Access;

   procedure Initialize (This : in out AboutCommandProcessor'Class);
   function Create return AboutCommandProcessor_Access;
   function getInstance return AboutCommandProcessor_Access;
   procedure process (This : in out AboutCommandProcessor; midletCommandListener_Param : access CommandListener_Package.CommandListener'Class; command_Param : access Command_Package.Command'Class; canvas_Param : access Canvas_Package.Canvas'Class);

end org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package;


