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

limited with org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package;
package org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package_References is
   type AbBasicCrypt_Access is access all org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package.AbBasicCrypt'Class;
   type AbBasicCrypt_Access_Array is array (Natural range <>) of AbBasicCrypt_Access;
   type AbBasicCrypt_Access_Array_Access is access all AbBasicCrypt_Access_Array;
   type AbBasicCrypt_Access_Array_Access_Array is array (Natural range <>) of AbBasicCrypt_Access_Array_Access;
   type AbBasicCrypt_Access_Array_Access_Array_Access is access all AbBasicCrypt_Access_Array_Access_Array;
end org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package_References;

with org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.security.Provider_Package; use java.security.Provider_Package;
with javax.crypto.Cipher_Package; use javax.crypto.Cipher_Package;
with javax.crypto.SecretKey_Package; use javax.crypto.SecretKey_Package;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package; use org.allbinary.init.crypt.jcehelper.CryptInterface_Package;

package org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package is

   package Cipher_Package renames Standard.javax.crypto.Cipher_Package;
   package SecretKey_Package renames Standard.javax.crypto.SecretKey_Package;
   package CryptInterface_Package renames Standard.org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AbBasicCrypt_Access is org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package_References.AbBasicCrypt_Access;
   function "=" (Left, Right : AbBasicCrypt_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package_References."=";
   subtype AbBasicCrypt_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package_References.AbBasicCrypt_Access_Array;
   function "=" (Left, Right : AbBasicCrypt_Access_Array) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package_References."=";
   subtype AbBasicCrypt_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package_References.AbBasicCrypt_Access_Array_Access;
   function "=" (Left, Right : AbBasicCrypt_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package_References."=";
   subtype AbBasicCrypt_Access_Array_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package_References.AbBasicCrypt_Access_Array_Access_Array;
   function "=" (Left, Right : AbBasicCrypt_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package_References."=";
   subtype AbBasicCrypt_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package_References.AbBasicCrypt_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbBasicCrypt_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package_References."=";

   type AbBasicCrypt is new Java_Object and CryptInterface with record
      cipher : Cipher_Access;
      secretKey : SecretKey_Access;
      algorithm : Unbounded_String;
      key : Short_Short_Integer_Array_Access;
   end record;

   procedure Initialize (This : in out AbBasicCrypt'Class; algorithm : Unbounded_String; key : Unbounded_String);
   function Create (algorithm : Unbounded_String; key : Unbounded_String) return AbBasicCrypt_Access;
   procedure init (This : in out AbBasicCrypt);
   function encrypt (This : in out AbBasicCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure encrypt (This : in out AbBasicCrypt; array_Id : Short_Short_Integer_Array_Access);
   function decrypt (This : in out AbBasicCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure decrypt (This : in out AbBasicCrypt; array_Id : Short_Short_Integer_Array_Access);

end org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt_Package;


