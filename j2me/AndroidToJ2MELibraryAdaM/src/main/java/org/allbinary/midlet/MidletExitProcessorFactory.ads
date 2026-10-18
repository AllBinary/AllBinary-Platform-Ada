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
with javax.microedition.midlet.MIDlet_Package; use javax.microedition.midlet.MIDlet_Package;
with org.allbinary.AppletUtil_Package; use org.allbinary.AppletUtil_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.midlet.MidletExitProcessor_Package; use org.allbinary.midlet.MidletExitProcessor_Package;

package org.allbinary.midlet.MidletExitProcessorFactory_Package is

   package MIDlet_Package renames Standard.javax.microedition.midlet.MIDlet_Package;
   package AppletUtil_Package renames Standard.org.allbinary.AppletUtil_Package;
   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;

   type MidletExitProcessorFactory is tagged;
   type MidletExitProcessorFactory_Access is access all MidletExitProcessorFactory'Class;
   type MidletExitProcessorFactory_Access_Array is array (Natural range <>) of MidletExitProcessorFactory_Access;
   type MidletExitProcessorFactory_Access_Array_Access is access all MidletExitProcessorFactory_Access_Array;

   type MidletExitProcessorFactory is new Java_Object with null record;
   instance : MidletExitProcessorFactory_Access;

   procedure Initialize (This : in out MidletExitProcessorFactory'Class);
   function Create return MidletExitProcessorFactory_Access;
   function getInstance return MidletExitProcessorFactory_Access;
   function getExitInstance (This : in out MidletExitProcessorFactory; midlet_Param : access MIDlet_Package.MIDlet'Class) return Processor_Access;
   procedure getExitInstance (This : in out MidletExitProcessorFactory; midlet_Param : access MIDlet_Package.MIDlet'Class);

end org.allbinary.midlet.MidletExitProcessorFactory_Package;


