-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.persistance.PlatformRecordIdUtil_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type PlatformRecordIdUtil is tagged;
   type PlatformRecordIdUtil_Access is access all PlatformRecordIdUtil'Class;
   type PlatformRecordIdUtil_Access_Array is array (Natural range <>) of PlatformRecordIdUtil_Access;
   type PlatformRecordIdUtil_Access_Array_Access is access all PlatformRecordIdUtil_Access_Array;

   type PlatformRecordIdUtil is new Java_Object with record
      PLATFORM_SHORT_NAME : Unbounded_String;
   end record;
   instance : PlatformRecordIdUtil_Access;

   procedure Initialize (This : in out PlatformRecordIdUtil'Class);
   function Create return PlatformRecordIdUtil_Access;
   function getInstance return PlatformRecordIdUtil_Access;
   function getRecordId (This : in out PlatformRecordIdUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; baseRecordId : Unbounded_String) return Unbounded_String;
   procedure getRecordId (This : in out PlatformRecordIdUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; baseRecordId : Unbounded_String);

end org.allbinary.persistance.PlatformRecordIdUtil_Package;


