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

limited with org.allbinary.bundle.logic.system.loader.CryptService_Package;
package org.allbinary.bundle.logic.system.loader.CryptService_Package_References is
   type CryptService_Access is access all org.allbinary.bundle.logic.system.loader.CryptService_Package.CryptService'Class;
   type CryptService_Access_Array is array (Natural range <>) of CryptService_Access;
   type CryptService_Access_Array_Access is access all CryptService_Access_Array;
   type CryptService_Access_Array_Access_Array is array (Natural range <>) of CryptService_Access_Array_Access;
   type CryptService_Access_Array_Access_Array_Access is access all CryptService_Access_Array_Access_Array;
end org.allbinary.bundle.logic.system.loader.CryptService_Package_References;

with org.allbinary.bundle.logic.system.loader.CryptService_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.AbCryptUtil_Package;
with org.allbinary.logic.system.security.AbCryptUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.bundle.logic.system.loader.CryptService_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbCryptUtil_Package renames Standard.org.allbinary.logic.system.security.AbCryptUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype AbCryptUtil_Access is org.allbinary.logic.system.security.AbCryptUtil_Package_References.AbCryptUtil_Access;
   use type AbCryptUtil_Access;
   subtype AbCryptUtil_Access_Array is org.allbinary.logic.system.security.AbCryptUtil_Package_References.AbCryptUtil_Access_Array;
   use type AbCryptUtil_Access_Array;
   subtype AbCryptUtil_Access_Array_Access is org.allbinary.logic.system.security.AbCryptUtil_Package_References.AbCryptUtil_Access_Array_Access;
   use type AbCryptUtil_Access_Array_Access;
   subtype AbCryptUtil_Access_Array_Access_Array is org.allbinary.logic.system.security.AbCryptUtil_Package_References.AbCryptUtil_Access_Array_Access_Array;
   use type AbCryptUtil_Access_Array_Access_Array;
   subtype AbCryptUtil_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.AbCryptUtil_Package_References.AbCryptUtil_Access_Array_Access_Array_Access;
   use type AbCryptUtil_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CryptService_Access is org.allbinary.bundle.logic.system.loader.CryptService_Package_References.CryptService_Access;
   function "=" (Left, Right : CryptService_Access) return Boolean renames org.allbinary.bundle.logic.system.loader.CryptService_Package_References."=";
   subtype CryptService_Access_Array is org.allbinary.bundle.logic.system.loader.CryptService_Package_References.CryptService_Access_Array;
   function "=" (Left, Right : CryptService_Access_Array) return Boolean renames org.allbinary.bundle.logic.system.loader.CryptService_Package_References."=";
   subtype CryptService_Access_Array_Access is org.allbinary.bundle.logic.system.loader.CryptService_Package_References.CryptService_Access_Array_Access;
   function "=" (Left, Right : CryptService_Access_Array_Access) return Boolean renames org.allbinary.bundle.logic.system.loader.CryptService_Package_References."=";
   subtype CryptService_Access_Array_Access_Array is org.allbinary.bundle.logic.system.loader.CryptService_Package_References.CryptService_Access_Array_Access_Array;
   function "=" (Left, Right : CryptService_Access_Array_Access_Array) return Boolean renames org.allbinary.bundle.logic.system.loader.CryptService_Package_References."=";
   subtype CryptService_Access_Array_Access_Array_Access is org.allbinary.bundle.logic.system.loader.CryptService_Package_References.CryptService_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CryptService_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.bundle.logic.system.loader.CryptService_Package_References."=";

   type CryptService is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      abCryptUtil : AbCryptUtil_Access;
   end record;

   procedure Initialize (This : in out CryptService'Class);
   function Create return CryptService_Access;
   function getDecryptedInputStream (This : in out CryptService; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; name : Unbounded_String; inputStream_Param : access InputStream_Package.InputStream'Class) return InputStream_Access;
   procedure getDecryptedInputStream (This : in out CryptService; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; name : Unbounded_String; inputStream_Param : access InputStream_Package.InputStream'Class);
   procedure showLicenseDialog (This : in out CryptService; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; e_Param : access Java_Throwable_Object'Class);

end org.allbinary.bundle.logic.system.loader.CryptService_Package;


