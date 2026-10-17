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
--  with javax.microedition.midlet.MIDlet_Package; use javax.microedition.midlet.MIDlet_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;

package org.allbinary.midlet.MidletExitProcessor_Package is

   package Processor_Package renames org.allbinary.canvas.Processor_Package;

   type MidletExitProcessor is tagged;
   type MidletExitProcessor_Access is access all MidletExitProcessor'Class;
   type MidletExitProcessor_Access_Array is array (Natural range <>) of MidletExitProcessor_Access;
   type MidletExitProcessor_Access_Array_Access is access all MidletExitProcessor_Access_Array;

   type MidletExitProcessor is new Processor with record
      midlet : MIDlet_Access;
   end record;

   procedure Initialize (This : in out MidletExitProcessor'Class; midlet : MIDlet_Access);
   function Create (midlet : MIDlet_Access) return MidletExitProcessor_Access;
   procedure process (This : in out MidletExitProcessor);

end org.allbinary.midlet.MidletExitProcessor_Package;


