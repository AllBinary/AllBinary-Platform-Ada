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

package org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type RegistrationConfiguration is tagged;
   type RegistrationConfiguration_Access is access all RegistrationConfiguration'Class;
   type RegistrationConfiguration_Access_Array is array (Natural range <>) of RegistrationConfiguration_Access;
   type RegistrationConfiguration_Access_Array_Access is access all RegistrationConfiguration_Access_Array;

   type RegistrationConfiguration is new Java_Object with record
      registrationCode : Unbounded_String;
      NAME : Unbounded_String;
   end record;
   SINGLETON : RegistrationConfiguration_Access;

   procedure Initialize (This : in out RegistrationConfiguration'Class);
   function Create return RegistrationConfiguration_Access;
   function getInstance return RegistrationConfiguration_Access;
   procedure getInstance;
   procedure read (This : in out RegistrationConfiguration);
   procedure write (This : in out RegistrationConfiguration);
   function toString (This : in out RegistrationConfiguration) return Unbounded_String;
   procedure toString (This : in out RegistrationConfiguration);
   procedure setRegistrationCode (This : in out RegistrationConfiguration; registrationCode : Unbounded_String);
   function getRegistrationCode (This : in out RegistrationConfiguration) return Unbounded_String;
   procedure getRegistrationCode (This : in out RegistrationConfiguration);

end org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package;


