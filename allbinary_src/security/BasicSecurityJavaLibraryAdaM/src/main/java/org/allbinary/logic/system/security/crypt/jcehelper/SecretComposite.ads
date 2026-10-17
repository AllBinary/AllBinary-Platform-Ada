-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
--  with javax.crypto.Cipher_Package; use javax.crypto.Cipher_Package;
--  with javax.crypto.SecretKey_Package; use javax.crypto.SecretKey_Package;
with org.allbinary.logic.java.byteutil.ByteUtil_Package; use org.allbinary.logic.java.byteutil.ByteUtil_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package; use org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package;

package org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package is

   package ByteUtil_Package renames Standard.org.allbinary.logic.java.byteutil.ByteUtil_Package;

   type SecretComposite is tagged;
   type SecretComposite_Access is access all SecretComposite'Class;
   type SecretComposite_Access_Array is array (Natural range <>) of SecretComposite_Access;
   type SecretComposite_Access_Array_Access is access all SecretComposite_Access_Array;

   type SecretComposite is new BaseSecretComposite with record
      byteUtil : ByteUtil_Access;
      cipher : Cipher_Access;
      secretKey : SecretKey_Access;
      key : Short_Short_Integer_Array_Access;
   end record;

   procedure Initialize (This : in out SecretComposite'Class; secretKey : SecretKey_Access; cipher : Cipher_Access; key : Short_Short_Integer_Array_Access);
   function Create (secretKey : SecretKey_Access; cipher : Cipher_Access; key : Short_Short_Integer_Array_Access) return SecretComposite_Access;
   function encrypt (This : in out SecretComposite; array_Id_Param : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure encrypt (This : in out SecretComposite; array_Id_Param : Short_Short_Integer_Array_Access);
   function decrypt (This : in out SecretComposite; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure decrypt (This : in out SecretComposite; array_Id : Short_Short_Integer_Array_Access);
   function mutilate (This : in out SecretComposite; array_Id_Param : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure mutilate (This : in out SecretComposite; array_Id_Param : Short_Short_Integer_Array_Access);

end org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package;


