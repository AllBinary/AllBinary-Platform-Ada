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
with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package; use org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package;

package org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package is

   package Displayable_Package renames Standard.javax.microedition.lcdui.Displayable_Package;
   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;

   type ScreenRepaintProcessorFactory is tagged;
   type ScreenRepaintProcessorFactory_Access is access all ScreenRepaintProcessorFactory'Class;
   type ScreenRepaintProcessorFactory_Access_Array is array (Natural range <>) of ScreenRepaintProcessorFactory_Access;
   type ScreenRepaintProcessorFactory_Access_Array_Access is access all ScreenRepaintProcessorFactory_Access_Array;

   type ScreenRepaintProcessorFactory is new Java_Object with null record;
   instance : ScreenRepaintProcessorFactory_Access;

   procedure Initialize (This : in out ScreenRepaintProcessorFactory'Class);
   function Create return ScreenRepaintProcessorFactory_Access;
   function getInstance return ScreenRepaintProcessorFactory_Access;
   function create (This : in out ScreenRepaintProcessorFactory; displayable_Param : access Displayable_Package.Displayable'Class) return Processor_Access;
   procedure create (This : in out ScreenRepaintProcessorFactory; displayable_Param : access Displayable_Package.Displayable'Class);

end org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package;


