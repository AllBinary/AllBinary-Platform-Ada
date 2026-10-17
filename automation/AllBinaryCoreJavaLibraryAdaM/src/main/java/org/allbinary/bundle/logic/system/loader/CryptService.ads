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
--  with java.io.ByteArrayInputStream_Package; use java.io.ByteArrayInputStream_Package;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
with org.allbinary.globals.Globals_Package; use org.allbinary.globals.Globals_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.gui.dialog.BasicTextJDialog_Package; use org.allbinary.gui.dialog.BasicTextJDialog_Package;
with org.allbinary.gui.dialog.ExitCloseListener_Package; use org.allbinary.gui.dialog.ExitCloseListener_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.AbCryptUtil_Package; use org.allbinary.logic.system.security.AbCryptUtil_Package;
with org.allbinary.logic.system.security.AbKeys_Package; use org.allbinary.logic.system.security.AbKeys_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package; use org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package;
with org.allbinary.logic.system.security.licensing.AbeNoLicense_Package; use org.allbinary.logic.system.security.licensing.AbeNoLicense_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.bundle.logic.system.loader.CryptService_Package is

   package Globals_Package renames org.allbinary.globals.Globals_Package;
   package URLGLOBALS_Package renames org.allbinary.globals.URLGLOBALS_Package;
   package BasicTextJDialog_Package renames org.allbinary.gui.dialog.BasicTextJDialog_Package;
   package ExitCloseListener_Package renames org.allbinary.gui.dialog.ExitCloseListener_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbCryptUtil_Package renames org.allbinary.logic.system.security.AbCryptUtil_Package;
   package AbKeys_Package renames org.allbinary.logic.system.security.AbKeys_Package;
   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package AbeLicenseInterface_Package renames org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;
   package AbeLicenseInterfaceFactory_Package renames org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package;
   package AbeNoLicense_Package renames org.allbinary.logic.system.security.licensing.AbeNoLicense_Package;
   package LicensingException_Package renames org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type CryptService is tagged;
   type CryptService_Access is access all CryptService'Class;
   type CryptService_Access_Array is array (Natural range <>) of CryptService_Access;
   type CryptService_Access_Array_Access is access all CryptService_Access_Array;

   type CryptService is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      abCryptUtil : AbCryptUtil_Access;
   end record;

   procedure Initialize (This : in out CryptService'Class);
   function Create return CryptService_Access;
   function getDecryptedInputStream (This : in out CryptService; abeClientInformation : AbeClientInformationInterface_Access; name : Unbounded_String; inputStream : InputStream_Access) return InputStream_Access;
   procedure getDecryptedInputStream (This : in out CryptService; abeClientInformation : AbeClientInformationInterface_Access; name : Unbounded_String; inputStream : InputStream_Access);
   procedure showLicenseDialog (This : in out CryptService; abeClientInformation : AbeClientInformationInterface_Access; e : Ada.Exceptions.Exception_Occurrence);

end org.allbinary.bundle.logic.system.loader.CryptService_Package;


