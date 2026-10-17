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
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package; use org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
with org.allbinary.thread.PrimaryThreadPool_Package; use org.allbinary.thread.PrimaryThreadPool_Package;
with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package; use org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.midlet.MidletExitProcessorFactory_Package; use org.allbinary.midlet.MidletExitProcessorFactory_Package;
with org.allbinary.midlet.ExitRunnable_Package; use org.allbinary.midlet.ExitRunnable_Package;

package org.allbinary.midlet.ProgressMidlet_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package ClientInformationFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
   package PrimaryThreadPool_Package renames Standard.org.allbinary.thread.PrimaryThreadPool_Package;
   package ThreadPool_Package renames Standard.org.allbinary.thread.ThreadPool_Package;

   type ProgressMidlet is tagged;
   type ProgressMidlet_Access is access all ProgressMidlet'Class;
   type ProgressMidlet_Access_Array is array (Natural range <>) of ProgressMidlet_Access;
   type ProgressMidlet_Access_Array_Access is access all ProgressMidlet_Access_Array;

   type ProgressMidlet is new AllBinaryMidlet with record
      abeClientInformation : AbeClientInformationInterface_Access;
   end record;

   procedure Initialize (This : in out ProgressMidlet'Class; clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class);
   function Create (clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class) return ProgressMidlet_Access;
   procedure preInit (This : in out ProgressMidlet);
   procedure exitProgress (This : in out ProgressMidlet; isProgress : Boolean);

end org.allbinary.midlet.ProgressMidlet_Package;


