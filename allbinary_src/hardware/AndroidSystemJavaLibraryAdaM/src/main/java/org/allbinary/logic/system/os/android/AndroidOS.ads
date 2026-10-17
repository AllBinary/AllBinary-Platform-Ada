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
with org.allbinary.android.AndroidInfoFactory_Package; use org.allbinary.android.AndroidInfoFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.system.os.android.AndroidSystemProperties_Package; use org.allbinary.logic.system.os.android.AndroidSystemProperties_Package;

package org.allbinary.logic.system.os.android.AndroidOS_Package is

   package AndroidInfoFactory_Package renames Standard.org.allbinary.android.AndroidInfoFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type AndroidOS is tagged;
   type AndroidOS_Access is access all AndroidOS'Class;
   type AndroidOS_Access_Array is array (Natural range <>) of AndroidOS_Access;
   type AndroidOS_Access_Array_Access is access all AndroidOS_Access_Array;

   type AndroidOS is new GenericOperatingSystem with record
      stringBuffer : StringMaker_Access;
      DEVICE_ID : Unbounded_String;
      DEVICE_SOFTWARE_VERSION : Unbounded_String;
      LINE_1_NUMBER : Unbounded_String;
      OUYA : Unbounded_String;
   end record;

   procedure Initialize (This : in out AndroidOS'Class);
   function Create return AndroidOS_Access;
   function isOverScan (This : in out AndroidOS) return Boolean;
   function getOverScanXPercent (This : in out AndroidOS) return Integer;
   function getOverScanYPercent (This : in out AndroidOS) return Integer;
   function toString (This : in out AndroidOS) return Unbounded_String;

end org.allbinary.logic.system.os.android.AndroidOS_Package;


