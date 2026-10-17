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
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.AbDataInputStream_Package; use org.allbinary.logic.io.AbDataInputStream_Package;
with org.allbinary.logic.io.AbDataOutputStream_Package; use org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.AbFileInputStream_Package; use org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.io.DataOutputStreamFactory_Package; use org.allbinary.logic.io.DataOutputStreamFactory_Package;
with org.allbinary.logic.io.FileStreamFactory_Package; use org.allbinary.logic.io.FileStreamFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package; use org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package;
with org.allbinary.logic.system.security.crypt.WeakCrypt_Package; use org.allbinary.logic.system.security.crypt.WeakCrypt_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.business.init.LicenseInitInfo_Package; use org.allbinary.business.init.LicenseInitInfo_Package;

package org.allbinary.business.init.LicenseInitInfoUtil_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package PATH_GLOBALS_Package renames Standard.org.allbinary.globals.PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbDataInputStream_Package renames Standard.org.allbinary.logic.io.AbDataInputStream_Package;
   package AbDataOutputStream_Package renames Standard.org.allbinary.logic.io.AbDataOutputStream_Package;
   package AbFileInputStream_Package renames Standard.org.allbinary.logic.io.AbFileInputStream_Package;
   package DataOutputStreamFactory_Package renames Standard.org.allbinary.logic.io.DataOutputStreamFactory_Package;
   package FileStreamFactory_Package renames Standard.org.allbinary.logic.io.FileStreamFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package DatabaseEncoder_Package renames Standard.org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package;
   package WeakCrypt_Package renames Standard.org.allbinary.logic.system.security.crypt.WeakCrypt_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;

   type LicenseInitInfoUtil is tagged;
   type LicenseInitInfoUtil_Access is access all LicenseInitInfoUtil'Class;
   type LicenseInitInfoUtil_Access_Array is array (Natural range <>) of LicenseInitInfoUtil_Access;
   type LicenseInitInfoUtil_Access_Array_Access is access all LicenseInitInfoUtil_Access_Array;

   type LicenseInitInfoUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      stringUtil : StringUtil_Access;
      INITFILENAME : Unbounded_String;
      ABOUT : Unbounded_String;
      PRIVACY_POLICY : Unbounded_String;
      filePath : Unbounded_String;
   end record;
   instance : LicenseInitInfoUtil_Access;

   procedure Initialize (This : in out LicenseInitInfoUtil'Class);
   function Create return LicenseInitInfoUtil_Access;
   function getInstance return LicenseInitInfoUtil_Access;
   procedure setFilePath (This : in out LicenseInitInfoUtil; filePath : Unbounded_String);
   procedure write (This : in out LicenseInitInfoUtil; initData : LicenseInitInfo_Access);
   function read (This : in out LicenseInitInfoUtil) return LicenseInitInfo_Access;
   function readAgain (This : in out LicenseInitInfoUtil; initializeCounter : Integer) return LicenseInitInfo_Access;
   procedure readAgain (This : in out LicenseInitInfoUtil; initializeCounter : Integer);
   function getFilePath (This : in out LicenseInitInfoUtil) return Unbounded_String;

end org.allbinary.business.init.LicenseInitInfoUtil_Package;


