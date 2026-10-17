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
with org.allbinary.logic.java.character_Id.CharacterSet_Package; use org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.system.os.OperatingSystemInterface_Package; use org.allbinary.logic.system.os.OperatingSystemInterface_Package;
with org.allbinary.logic.system.os.SystemProperties_Package; use org.allbinary.logic.system.os.SystemProperties_Package;

package org.allbinary.logic.system.os.GenericOperatingSystem_Package is

   package CharacterSet_Package renames Standard.org.allbinary.logic.java.character_Id.CharacterSet_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type GenericOperatingSystem is tagged;
   type GenericOperatingSystem_Access is access all GenericOperatingSystem'Class;
   type GenericOperatingSystem_Access_Array is array (Natural range <>) of GenericOperatingSystem_Access;
   type GenericOperatingSystem_Access_Array_Access is access all GenericOperatingSystem_Access_Array;

   type GenericOperatingSystem is new OperatingSystemInterface with record
      osName : Unbounded_String;
      osArch : Unbounded_String;
      osVersion : Unbounded_String;
      characterSet : CharacterSet_Access;
      scalable : Boolean;
   end record;

   procedure Initialize (This : in out GenericOperatingSystem'Class);
   function Create return GenericOperatingSystem_Access;
   function getName (This : in out GenericOperatingSystem) return Unbounded_String;
   function getVersion (This : in out GenericOperatingSystem) return Unbounded_String;
   function getArch (This : in out GenericOperatingSystem) return Unbounded_String;
   function getCharacterSet (This : in out GenericOperatingSystem) return CharacterSet_Access;
   function isOverScan (This : in out GenericOperatingSystem) return Boolean;
   function getOverScanXPercent (This : in out GenericOperatingSystem) return Integer;
   function getOverScanYPercent (This : in out GenericOperatingSystem) return Integer;
   function isScalable (This : in out GenericOperatingSystem) return Boolean;
   function isAutoHide (This : in out GenericOperatingSystem) return Boolean;
   function toString (This : in out GenericOperatingSystem) return Unbounded_String;

end org.allbinary.logic.system.os.GenericOperatingSystem_Package;


