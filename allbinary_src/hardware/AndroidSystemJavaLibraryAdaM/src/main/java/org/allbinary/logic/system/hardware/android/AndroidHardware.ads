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
--  with java.io.Closeable_Package; use java.io.Closeable_Package;
--  with java.io.FileReader_Package; use java.io.FileReader_Package;
--  with java.io.LineNumberReader_Package; use java.io.LineNumberReader_Package;
with org.allbinary.logic.io.NullCloseable_Package; use org.allbinary.logic.io.NullCloseable_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.hardware.HardwareInterface_Package; use org.allbinary.logic.system.hardware.HardwareInterface_Package;
with org.allbinary.logic.system.hardware.components.android.UnknownHardware_Package; use org.allbinary.logic.system.hardware.components.android.UnknownHardware_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.logic.system.hardware.android.AndroidHardware_Package is

   package NullCloseable_Package renames Standard.org.allbinary.logic.io.NullCloseable_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package HardwareInterface_Package renames Standard.org.allbinary.logic.system.hardware.HardwareInterface_Package;
   package UnknownHardware_Package renames Standard.org.allbinary.logic.system.hardware.components.android.UnknownHardware_Package;
   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type AndroidHardware is tagged;
   type AndroidHardware_Access is access all AndroidHardware'Class;
   type AndroidHardware_Access_Array is array (Natural range <>) of AndroidHardware_Access;
   type AndroidHardware_Access_Array_Access is access all AndroidHardware_Access_Array;

   type AndroidHardware is new HardwareInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      componentInterfaceVector : BasicArrayList_Access;
      PROC_BUS_INPUT_DIRECTORY : Unbounded_String;
      DEVICES : Unbounded_String;
      MINHARDWARE : Integer;
   end record;

   procedure Initialize (This : in out AndroidHardware'Class);
   function Create return AndroidHardware_Access;
   procedure init (This : in out AndroidHardware; filePath : Unbounded_String);
   function get (This : in out AndroidHardware; filePath : Unbounded_String) return LineNumberReader_Access;
   procedure get (This : in out AndroidHardware; filePath : Unbounded_String);
   function getComponent (This : in out AndroidHardware; index : Integer) return HardwareComponentInterface_Access;
   procedure getComponent (This : in out AndroidHardware; index : Integer);
   function toString (This : in out AndroidHardware) return Unbounded_String;
   function compareTo (This : in out AndroidHardware; hardwareInterface_Param : access HardwareInterface'Class) return Boolean;
   procedure compareTo (This : in out AndroidHardware; hardwareInterface_Param : access HardwareInterface'Class);
   function difference (This : in out AndroidHardware; hardwareInterface_Param : access HardwareInterface'Class) return ABHashtable_Access;
   procedure difference (This : in out AndroidHardware; hardwareInterface_Param : access HardwareInterface'Class);

end org.allbinary.logic.system.hardware.android.AndroidHardware_Package;


