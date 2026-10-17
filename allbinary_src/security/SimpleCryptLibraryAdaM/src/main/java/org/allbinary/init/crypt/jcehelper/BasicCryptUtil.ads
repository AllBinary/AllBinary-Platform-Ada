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
with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package; use org.allbinary.init.crypt.jcehelper.CryptInterface_Package;

package org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type BasicCryptUtil is tagged;
   type BasicCryptUtil_Access is access all BasicCryptUtil'Class;
   type BasicCryptUtil_Access_Array is array (Natural range <>) of BasicCryptUtil_Access;
   type BasicCryptUtil_Access_Array_Access is access all BasicCryptUtil_Access_Array;

   type BasicCryptUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      tsUtil : TsUtil_Access;
      XML_START : Unbounded_String;
   end record;
   instance : BasicCryptUtil_Access;

   procedure Initialize (This : in out BasicCryptUtil'Class);
   function Create return BasicCryptUtil_Access;
   function getInstance return BasicCryptUtil_Access;
   function getDecryptedInputStream (This : in out BasicCryptUtil; inputStream_Param : access InputStream_Package.InputStream'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class) return InputStream_Access;
   procedure getDecryptedInputStream (This : in out BasicCryptUtil; inputStream_Param : access InputStream_Package.InputStream'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class);

end org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package;


