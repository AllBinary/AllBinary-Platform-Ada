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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package; use org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformation_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformation_Package;

package org.allbinary.logic.system.security.licensing.MobileClientInformation_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package RegistrationConfiguration_Package renames Standard.org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type MobileClientInformation is tagged;
   type MobileClientInformation_Access is access all MobileClientInformation'Class;
   type MobileClientInformation_Access_Array is array (Natural range <>) of MobileClientInformation_Access;
   type MobileClientInformation_Access_Array_Access is access all MobileClientInformation_Access_Array;

   type MobileClientInformation is new AbeClientInformation with null record;
   DESC : Unbounded_String;
   ANDROID_DESC : Unbounded_String;

   procedure Initialize (This : in out MobileClientInformation'Class; name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String);
   function Create (name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String) return MobileClientInformation_Access;
   function toHashtable (This : in out MobileClientInformation) return ABHashtable_Access;
   procedure toHashtable (This : in out MobileClientInformation);

end org.allbinary.logic.system.security.licensing.MobileClientInformation_Package;


