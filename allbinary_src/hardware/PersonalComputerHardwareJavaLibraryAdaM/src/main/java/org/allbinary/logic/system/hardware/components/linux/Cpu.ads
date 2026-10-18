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
--  with java.io.FileReader_Package; use java.io.FileReader_Package;
--  with java.io.LineNumberReader_Package; use java.io.LineNumberReader_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.system.hardware.components.linux.Cpu_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CpuInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package;
   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type Cpu is tagged;
   type Cpu_Access is access all Cpu'Class;
   type Cpu_Access_Array is array (Natural range <>) of Cpu_Access;
   type Cpu_Access_Array_Access is access all Cpu_Access_Array;
   type Cpu_Access_Array_Access_Array is array (Natural range <>) of Cpu_Access_Array_Access;
   type Cpu_Access_Array_Access_Array_Access is access all Cpu_Access_Array_Access_Array;

   type Cpu is new Java_Object and CpuInterface and HardwareComponentInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      CPUFILE : Unbounded_String;
      cpuHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out Cpu'Class; filePath : Unbounded_String);
   function Create (filePath : Unbounded_String) return Cpu_Access;
   procedure Initialize (This : in out Cpu'Class);
   function Create return Cpu_Access;
   procedure init (This : in out Cpu; filePath : Unbounded_String);
   procedure init (This : in out Cpu; lineNumberReader_Param : access LineNumberReader_Package.LineNumberReader'Class; filePath : Unbounded_String);
   function getProcessor (This : in out Cpu) return Unbounded_String;
   function getVendorId (This : in out Cpu) return Unbounded_String;
   function getCpuFamily (This : in out Cpu) return Unbounded_String;
   function getModel (This : in out Cpu) return Unbounded_String;
   function getModelName (This : in out Cpu) return Unbounded_String;
   function getStepping (This : in out Cpu) return Unbounded_String;
   function getCpuSpeed (This : in out Cpu) return Unbounded_String;
   function getCacheSize (This : in out Cpu) return Unbounded_String;
   function compareTo (This : in out Cpu; cpuInterface_Param : access CpuInterface_Package.CpuInterface'Class) return Boolean;
   procedure compareTo (This : in out Cpu; cpuInterface_Param : access CpuInterface_Package.CpuInterface'Class);
   function compareTo (This : in out Cpu; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class) return Boolean;
   procedure compareTo (This : in out Cpu; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class);
   function toString (This : in out Cpu) return Unbounded_String;

end org.allbinary.logic.system.hardware.components.linux.Cpu_Package;


