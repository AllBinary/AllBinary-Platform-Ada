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
with org.allbinary.KotlinUtil_Package; use org.allbinary.KotlinUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.logic.system.SoftwareInformation_Package is

   package KotlinUtil_Package renames org.allbinary.KotlinUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;

   type SoftwareInformation is tagged;
   type SoftwareInformation_Access is access all SoftwareInformation'Class;
   type SoftwareInformation_Access_Array is array (Natural range <>) of SoftwareInformation_Access;
   type SoftwareInformation_Access_Array_Access is access all SoftwareInformation_Access_Array;

   type SoftwareInformation is new Java_Object with record
      name : Unbounded_String;
      shortName : Unbounded_String;
      version : Unbounded_String;
   end record;

   procedure Initialize (This : in out SoftwareInformation'Class; name : Unbounded_String; version : Unbounded_String; shortName : Unbounded_String);
   function Create (name : Unbounded_String; version : Unbounded_String; shortName : Unbounded_String) return SoftwareInformation_Access;
   function getName (This : in out SoftwareInformation) return Unbounded_String;
   procedure getName (This : in out SoftwareInformation);
   function getVersion (This : in out SoftwareInformation) return Unbounded_String;
   procedure getVersion (This : in out SoftwareInformation);
   function toShortString (This : in out SoftwareInformation) return Unbounded_String;
   procedure toShortString (This : in out SoftwareInformation);
   function toString (This : in out SoftwareInformation) return Unbounded_String;
   procedure toString (This : in out SoftwareInformation);

end org.allbinary.logic.system.SoftwareInformation_Package;


