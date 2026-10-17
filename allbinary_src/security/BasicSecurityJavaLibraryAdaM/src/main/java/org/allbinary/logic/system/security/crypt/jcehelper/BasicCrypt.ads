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
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package; use org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.java.byteutil.ByteUtil_Package; use org.allbinary.logic.java.byteutil.ByteUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.system.security.crypt.jcehelper.BasicCrypt_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package CryptInterface_Package renames Standard.org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package ByteUtil_Package renames Standard.org.allbinary.logic.java.byteutil.ByteUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type BasicCrypt is tagged;
   type BasicCrypt_Access is access all BasicCrypt'Class;
   type BasicCrypt_Access_Array is array (Natural range <>) of BasicCrypt_Access;
   type BasicCrypt_Access_Array_Access is access all BasicCrypt_Access_Array;

   type BasicCrypt is new CryptInterface with record
      byteUtil : ByteUtil_Access;
      key : Short_Short_Integer_Array_Access;
   end record;

   procedure Initialize (This : in out BasicCrypt'Class; keyAsString : Unbounded_String);
   function Create (keyAsString : Unbounded_String) return BasicCrypt_Access;
   function encrypt (This : in out BasicCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure encrypt (This : in out BasicCrypt; array_Id : Short_Short_Integer_Array_Access);
   function decrypt (This : in out BasicCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure decrypt (This : in out BasicCrypt; array_Id : Short_Short_Integer_Array_Access);
   function mutilate (This : in out BasicCrypt; array_Id_Param : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure mutilate (This : in out BasicCrypt; array_Id_Param : Short_Short_Integer_Array_Access);

end org.allbinary.logic.system.security.crypt.jcehelper.BasicCrypt_Package;


