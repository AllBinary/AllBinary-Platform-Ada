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

with AllBinary_Java;
limited with org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package;
package org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package_References is
   type SecretComposite_Access is access all org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package.SecretComposite'Class;
   type SecretComposite_Access_Array is array (Natural range <>) of SecretComposite_Access;
   type SecretComposite_Access_Array_Access is access all SecretComposite_Access_Array;
   type SecretComposite_Access_Array_Access_Array is array (Natural range <>) of SecretComposite_Access_Array_Access;
   type SecretComposite_Access_Array_Access_Array_Access is access all SecretComposite_Access_Array_Access_Array;
   type SecretComposite_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SecretComposite_Access_Array_Access;
   end record;
   function Java_Box (Value : SecretComposite_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SecretComposite_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SecretComposite_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SecretComposite_Access_Array_Access is (if Value /= null and then Value.all in SecretComposite_Access_Array_Object'Class then SecretComposite_Access_Array_Object'Class (Value.all).Value else null);
   type SecretComposite_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SecretComposite_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SecretComposite_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SecretComposite_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SecretComposite_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SecretComposite_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SecretComposite_Access_Array_Access_Array_Object'Class then SecretComposite_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package_References;

with org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.crypto.Cipher_Package; use javax.crypto.Cipher_Package;
with javax.crypto.SecretKey_Package; use javax.crypto.SecretKey_Package;
limited with org.allbinary.logic.java.byteutil.ByteUtil_Package;
with org.allbinary.logic.java.byteutil.ByteUtil_Package_References;
with org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package; use org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package;

package org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package is

   package Cipher_Package renames Standard.javax.crypto.Cipher_Package;
   package SecretKey_Package renames Standard.javax.crypto.SecretKey_Package;
   package ByteUtil_Package renames Standard.org.allbinary.logic.java.byteutil.ByteUtil_Package;
   package Reference_Types is
   subtype ByteUtil_Access is org.allbinary.logic.java.byteutil.ByteUtil_Package_References.ByteUtil_Access;
   use type ByteUtil_Access;
   subtype ByteUtil_Access_Array is org.allbinary.logic.java.byteutil.ByteUtil_Package_References.ByteUtil_Access_Array;
   use type ByteUtil_Access_Array;
   subtype ByteUtil_Access_Array_Access is org.allbinary.logic.java.byteutil.ByteUtil_Package_References.ByteUtil_Access_Array_Access;
   use type ByteUtil_Access_Array_Access;
   subtype ByteUtil_Access_Array_Access_Array is org.allbinary.logic.java.byteutil.ByteUtil_Package_References.ByteUtil_Access_Array_Access_Array;
   use type ByteUtil_Access_Array_Access_Array;
   subtype ByteUtil_Access_Array_Access_Array_Access is org.allbinary.logic.java.byteutil.ByteUtil_Package_References.ByteUtil_Access_Array_Access_Array_Access;
   use type ByteUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SecretComposite_Access is org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package_References.SecretComposite_Access;
   function "=" (Left, Right : SecretComposite_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package_References."=";
   subtype SecretComposite_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package_References.SecretComposite_Access_Array;
   function "=" (Left, Right : SecretComposite_Access_Array) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package_References."=";
   subtype SecretComposite_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package_References.SecretComposite_Access_Array_Access;
   function "=" (Left, Right : SecretComposite_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package_References."=";
   function Java_Box (Value : SecretComposite_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package_References.Java_Box;
   function Java_Unbox_SecretComposite_Access_Array (Value : access Java_Object'Class) return SecretComposite_Access_Array_Access renames org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package_References.Java_Unbox_SecretComposite_Access_Array;
   subtype SecretComposite_Access_Array_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package_References.SecretComposite_Access_Array_Access_Array;
   function "=" (Left, Right : SecretComposite_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package_References."=";
   subtype SecretComposite_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package_References.SecretComposite_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SecretComposite_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package_References."=";
   function Java_Box (Value : SecretComposite_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package_References.Java_Box;
   function Java_Unbox_SecretComposite_Access_Array_Access_Array (Value : access Java_Object'Class) return SecretComposite_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package_References.Java_Unbox_SecretComposite_Access_Array_Access_Array;

   type SecretComposite is new BaseSecretComposite with record
      byteUtil : ByteUtil_Access;
      cipher : Cipher_Access;
      secretKey : SecretKey_Access;
      key : Short_Short_Integer_Array_Access;
   end record;

   procedure Initialize (This : in out SecretComposite'Class; secretKey_Param : access SecretKey_Package.SecretKey'Class; cipher_Param : access Cipher_Package.Cipher'Class; key : Short_Short_Integer_Array_Access);
   function Create (secretKey_Param : access SecretKey_Package.SecretKey'Class; cipher_Param : access Cipher_Package.Cipher'Class; key : Short_Short_Integer_Array_Access) return SecretComposite_Access;
   function encrypt (This : in out SecretComposite; array_Id_Param : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure encrypt (This : in out SecretComposite; array_Id_Param : Short_Short_Integer_Array_Access);
   function decrypt (This : in out SecretComposite; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure decrypt (This : in out SecretComposite; array_Id : Short_Short_Integer_Array_Access);
   function mutilate (This : in out SecretComposite; array_Id_Param : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure mutilate (This : in out SecretComposite; array_Id_Param : Short_Short_Integer_Array_Access);

end org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package;


