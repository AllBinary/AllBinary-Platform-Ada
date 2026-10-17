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
--  with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package; use org.allbinary.graphics.displayable.screen.ScreenRepaintUtil_Package;

package org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;

   type ScreenRepaintProcessor is tagged;
   type ScreenRepaintProcessor_Access is access all ScreenRepaintProcessor'Class;
   type ScreenRepaintProcessor_Access_Array is array (Natural range <>) of ScreenRepaintProcessor_Access;
   type ScreenRepaintProcessor_Access_Array_Access is access all ScreenRepaintProcessor_Access_Array;

   type ScreenRepaintProcessor is new Processor with record
      displayable : Displayable_Access;
   end record;

   procedure Initialize (This : in out ScreenRepaintProcessor'Class; displayable_Param : access Displayable'Class);
   function Create (displayable_Param : access Displayable'Class) return ScreenRepaintProcessor_Access;
   procedure process (This : in out ScreenRepaintProcessor);

end org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package;


