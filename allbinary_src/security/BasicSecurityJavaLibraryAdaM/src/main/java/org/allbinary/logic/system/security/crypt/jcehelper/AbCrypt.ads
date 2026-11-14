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
limited with org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package;
package org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References is
   type AbCrypt_Access is access all org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package.AbCrypt'Class;
   type AbCrypt_Access_Array is array (Natural range <>) of AbCrypt_Access;
   type AbCrypt_Access_Array_Access is access all AbCrypt_Access_Array;
   type AbCrypt_Access_Array_Access_Array is array (Natural range <>) of AbCrypt_Access_Array_Access;
   type AbCrypt_Access_Array_Access_Array_Access is access all AbCrypt_Access_Array_Access_Array;
   type AbCrypt_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbCrypt_Access_Array_Access;
   end record;
   function Java_Box (Value : AbCrypt_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbCrypt_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbCrypt_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbCrypt_Access_Array_Access is (if Value /= null and then Value.all in AbCrypt_Access_Array_Object'Class then AbCrypt_Access_Array_Object'Class (Value.all).Value else null);
   type AbCrypt_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbCrypt_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbCrypt_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbCrypt_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbCrypt_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbCrypt_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbCrypt_Access_Array_Access_Array_Object'Class then AbCrypt_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References;

with org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.TsUtil_Package;
with org.allbinary.TsUtil_Package_References;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package; use org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
limited with org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References;

package org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package CryptInterface_Package renames Standard.org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
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
   subtype BaseSecretComposite_Access is org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References.BaseSecretComposite_Access;
   use type BaseSecretComposite_Access;
   subtype BaseSecretComposite_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References.BaseSecretComposite_Access_Array;
   use type BaseSecretComposite_Access_Array;
   subtype BaseSecretComposite_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References.BaseSecretComposite_Access_Array_Access;
   use type BaseSecretComposite_Access_Array_Access;
   subtype BaseSecretComposite_Access_Array_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References.BaseSecretComposite_Access_Array_Access_Array;
   use type BaseSecretComposite_Access_Array_Access_Array;
   subtype BaseSecretComposite_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References.BaseSecretComposite_Access_Array_Access_Array_Access;
   use type BaseSecretComposite_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbCrypt_Access is org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References.AbCrypt_Access;
   function "=" (Left, Right : AbCrypt_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References."=";
   subtype AbCrypt_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References.AbCrypt_Access_Array;
   function "=" (Left, Right : AbCrypt_Access_Array) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References."=";
   subtype AbCrypt_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References.AbCrypt_Access_Array_Access;
   function "=" (Left, Right : AbCrypt_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References."=";
   function Java_Box (Value : AbCrypt_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References.Java_Box;
   function Java_Unbox_AbCrypt_Access_Array (Value : access Java_Object'Class) return AbCrypt_Access_Array_Access renames org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References.Java_Unbox_AbCrypt_Access_Array;
   subtype AbCrypt_Access_Array_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References.AbCrypt_Access_Array_Access_Array;
   function "=" (Left, Right : AbCrypt_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References."=";
   subtype AbCrypt_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References.AbCrypt_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbCrypt_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References."=";
   function Java_Box (Value : AbCrypt_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References.Java_Box;
   function Java_Unbox_AbCrypt_Access_Array_Access_Array (Value : access Java_Object'Class) return AbCrypt_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References.Java_Unbox_AbCrypt_Access_Array_Access_Array;

   type AbCrypt is new Java_Object and CryptInterface with record
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


