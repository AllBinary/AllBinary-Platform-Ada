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

with AllBinary_Java;
limited with org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package;
package org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package_References is
   type BasicCryptUtil_Access is access all org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package.BasicCryptUtil'Class;
   type BasicCryptUtil_Access_Array is array (Natural range <>) of BasicCryptUtil_Access;
   type BasicCryptUtil_Access_Array_Access is access all BasicCryptUtil_Access_Array;
   type BasicCryptUtil_Access_Array_Access_Array is array (Natural range <>) of BasicCryptUtil_Access_Array_Access;
   type BasicCryptUtil_Access_Array_Access_Array_Access is access all BasicCryptUtil_Access_Array_Access_Array;
   type BasicCryptUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicCryptUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicCryptUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicCryptUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicCryptUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicCryptUtil_Access_Array_Access is (if Value /= null and then Value.all in BasicCryptUtil_Access_Array_Object'Class then BasicCryptUtil_Access_Array_Object'Class (Value.all).Value else null);
   type BasicCryptUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicCryptUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicCryptUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicCryptUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicCryptUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicCryptUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicCryptUtil_Access_Array_Access_Array_Object'Class then BasicCryptUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package_References;

with org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;
limited with org.allbinary.TsUtil_Package;
with org.allbinary.TsUtil_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References;

package org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype TsUtil_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access;
   use type TsUtil_Access;
   subtype TsUtil_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array;
   use type TsUtil_Access_Array;
   subtype TsUtil_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access;
   use type TsUtil_Access_Array_Access;
   subtype TsUtil_Access_Array_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array;
   use type TsUtil_Access_Array_Access_Array;
   subtype TsUtil_Access_Array_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array_Access;
   use type TsUtil_Access_Array_Access_Array_Access;
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
   subtype CryptInterface_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access;
   use type CryptInterface_Access;
   subtype CryptInterface_Access_Array is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array;
   use type CryptInterface_Access_Array;
   subtype CryptInterface_Access_Array_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access;
   use type CryptInterface_Access_Array_Access;
   subtype CryptInterface_Access_Array_Access_Array is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access_Array;
   use type CryptInterface_Access_Array_Access_Array;
   subtype CryptInterface_Access_Array_Access_Array_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access_Array_Access;
   use type CryptInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicCryptUtil_Access is org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package_References.BasicCryptUtil_Access;
   function "=" (Left, Right : BasicCryptUtil_Access) return Boolean renames org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package_References."=";
   subtype BasicCryptUtil_Access_Array is org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package_References.BasicCryptUtil_Access_Array;
   function "=" (Left, Right : BasicCryptUtil_Access_Array) return Boolean renames org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package_References."=";
   subtype BasicCryptUtil_Access_Array_Access is org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package_References.BasicCryptUtil_Access_Array_Access;
   function "=" (Left, Right : BasicCryptUtil_Access_Array_Access) return Boolean renames org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package_References."=";
   function Java_Box (Value : BasicCryptUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package_References.Java_Box;
   function Java_Unbox_BasicCryptUtil_Access_Array (Value : access Java_Object'Class) return BasicCryptUtil_Access_Array_Access renames org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package_References.Java_Unbox_BasicCryptUtil_Access_Array;
   subtype BasicCryptUtil_Access_Array_Access_Array is org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package_References.BasicCryptUtil_Access_Array_Access_Array;
   function "=" (Left, Right : BasicCryptUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package_References."=";
   subtype BasicCryptUtil_Access_Array_Access_Array_Access is org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package_References.BasicCryptUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicCryptUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package_References."=";
   function Java_Box (Value : BasicCryptUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package_References.Java_Box;
   function Java_Unbox_BasicCryptUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicCryptUtil_Access_Array_Access_Array_Access renames org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package_References.Java_Unbox_BasicCryptUtil_Access_Array_Access_Array;

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


