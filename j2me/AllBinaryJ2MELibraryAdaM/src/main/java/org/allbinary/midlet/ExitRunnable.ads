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
--  with javax.microedition.lcdui.NullCanvas_Package; use javax.microedition.lcdui.NullCanvas_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.midlet.Runnable_Package; use org.allbinary.midlet.Runnable_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package; use org.allbinary.midlet.AllBinaryMidlet_Package;

package org.allbinary.midlet.ExitRunnable_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ExitRunnable is tagged;
   type ExitRunnable_Access is access all ExitRunnable'Class;
   type ExitRunnable_Access_Array is array (Natural range <>) of ExitRunnable_Access;
   type ExitRunnable_Access_Array_Access is access all ExitRunnable_Access_Array;

   type ExitRunnable is new Runnable with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      midlet : AllBinaryMidlet_Access;
      processor : Processor_Access;
      isProgress : Boolean;
   end record;

   procedure Initialize (This : in out ExitRunnable'Class; midlet : AllBinaryMidlet_Access; processor : Processor_Access; isProgress : Boolean);
   function Create (midlet : AllBinaryMidlet_Access; processor : Processor_Access; isProgress : Boolean) return ExitRunnable_Access;
   procedure run (This : in out ExitRunnable);

end org.allbinary.midlet.ExitRunnable_Package;


