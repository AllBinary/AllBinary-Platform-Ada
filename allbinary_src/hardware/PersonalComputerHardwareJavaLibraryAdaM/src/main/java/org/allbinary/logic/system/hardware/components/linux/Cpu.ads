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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FilePathData_Package; use org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.io.file.directory.SubDirectory_Package; use org.allbinary.logic.io.file.directory.SubDirectory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.logic.system.hardware.components.linux.Cpu_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FilePathData_Package renames Standard.org.allbinary.logic.io.file.FilePathData_Package;
   package SubDirectory_Package renames Standard.org.allbinary.logic.io.file.directory.SubDirectory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CpuInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package;
   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type Cpu is tagged;
   type Cpu_Access is access all Cpu'Class;
   type Cpu_Access_Array is array (Natural range <>) of Cpu_Access;
   type Cpu_Access_Array_Access is access all Cpu_Access_Array;

   type Cpu is new CpuInterface and HardwareComponentInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      CPUFILE : Unbounded_String;
      cpuHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out Cpu'Class; filePath : Unbounded_String);
   function Create (filePath : Unbounded_String) return Cpu_Access;
   procedure init (This : in out Cpu; filePath : Unbounded_String);
   procedure init (This : in out Cpu; lineNumberReader : LineNumberReader_Access; filePath : Unbounded_String);
   function getProcessor (This : in out Cpu) return Unbounded_String;
   procedure getProcessor (This : in out Cpu);
   function getVendorId (This : in out Cpu) return Unbounded_String;
   procedure getVendorId (This : in out Cpu);
   function getCpuFamily (This : in out Cpu) return Unbounded_String;
   procedure getCpuFamily (This : in out Cpu);
   function getModel (This : in out Cpu) return Unbounded_String;
   procedure getModel (This : in out Cpu);
   function getModelName (This : in out Cpu) return Unbounded_String;
   procedure getModelName (This : in out Cpu);
   function getStepping (This : in out Cpu) return Unbounded_String;
   procedure getStepping (This : in out Cpu);
   function getCpuSpeed (This : in out Cpu) return Unbounded_String;
   procedure getCpuSpeed (This : in out Cpu);
   function getCacheSize (This : in out Cpu) return Unbounded_String;
   procedure getCacheSize (This : in out Cpu);
   function compareTo (This : in out Cpu; cpuInterface : CpuInterface_Access) return Boolean;
   procedure compareTo (This : in out Cpu; cpuInterface : CpuInterface_Access);
   function compareTo (This : in out Cpu; componentInterface : HardwareComponentInterface_Access) return Boolean;
   procedure compareTo (This : in out Cpu; componentInterface : HardwareComponentInterface_Access);
   function toString (This : in out Cpu) return Unbounded_String;
   procedure toString (This : in out Cpu);

end org.allbinary.logic.system.hardware.components.linux.Cpu_Package;


