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
--  with java.io.DataInputStream_Package; use java.io.DataInputStream_Package;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with java.io.OutputStream_Package; use java.io.OutputStream_Package;
with org.allbinary.logic.io.AbDataOutputStream_Package; use org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.FileStreamFactory_Package; use org.allbinary.logic.io.FileStreamFactory_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.FileFactory_Package; use org.allbinary.logic.io.file.FileFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;

package org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package is

   package AbDataOutputStream_Package renames Standard.org.allbinary.logic.io.AbDataOutputStream_Package;
   package FileStreamFactory_Package renames Standard.org.allbinary.logic.io.FileStreamFactory_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package FileFactory_Package renames Standard.org.allbinary.logic.io.file.FileFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;

   type RegistrationConfiguration is tagged;
   type RegistrationConfiguration_Access is access all RegistrationConfiguration'Class;
   type RegistrationConfiguration_Access_Array is array (Natural range <>) of RegistrationConfiguration_Access;
   type RegistrationConfiguration_Access_Array_Access is access all RegistrationConfiguration_Access_Array;

   type RegistrationConfiguration is new Java_Object with record
      logUtil : LogUtil_Access;
      registrationCode : Unbounded_String;
      NAME : Unbounded_String;
      FILE : Unbounded_String;
   end record;
   SINGLETON : RegistrationConfiguration_Access;

   procedure Initialize (This : in out RegistrationConfiguration'Class);
   function Create return RegistrationConfiguration_Access;
   function getInstance return RegistrationConfiguration_Access;
   procedure read (This : in out RegistrationConfiguration);
   procedure write (This : in out RegistrationConfiguration);
   function toString (This : in out RegistrationConfiguration) return Unbounded_String;
   procedure setRegistrationCode (This : in out RegistrationConfiguration; registrationCode : Unbounded_String);
   function getRegistrationCode (This : in out RegistrationConfiguration) return Unbounded_String;

end org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package;


