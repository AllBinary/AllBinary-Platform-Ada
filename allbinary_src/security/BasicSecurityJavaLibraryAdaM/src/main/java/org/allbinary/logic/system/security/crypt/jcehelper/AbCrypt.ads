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
--  with java.security.Security_Package; use java.security.Security_Package;
--  with java.security.spec.KeySpec_Package; use java.security.spec.KeySpec_Package;
--  with javax.crypto.Cipher_Package; use javax.crypto.Cipher_Package;
--  with javax.crypto.SecretKey_Package; use javax.crypto.SecretKey_Package;
--  with javax.crypto.SecretKeyFactory_Package; use javax.crypto.SecretKeyFactory_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package; use org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.bouncycastle.jce.provider.BouncyCastleProvider_Package; use org.bouncycastle.jce.provider.BouncyCastleProvider_Package;

package org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package is

   package TsUtil_Package renames org.allbinary.TsUtil_Package;
   package CryptInterface_Package renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package PreLogUtil_Package renames org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package BouncyCastleProvider_Package renames org.bouncycastle.jce.provider.BouncyCastleProvider_Package;

   type AbCrypt is tagged;
   type AbCrypt_Access is access all AbCrypt'Class;
   type AbCrypt_Access_Array is array (Natural range <>) of AbCrypt_Access;
   type AbCrypt_Access_Array_Access is access all AbCrypt_Access_Array;

   type AbCrypt is new CryptInterface with record
      tsUtil : TsUtil_Access;
      secretComposite : BaseSecretComposite_Access;
      algorithm : Unbounded_String;
   end record;

   procedure Initialize (This : in out AbCrypt'Class; algorithm : Unbounded_String);
   function Create (algorithm : Unbounded_String) return AbCrypt_Access;
   procedure init (This : in out AbCrypt; keyAsString : Unbounded_String);
   function encrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure encrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access);
   function decrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure decrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access);

end org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package;


