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

limited with org.allbinary.logic.system.security.crypt.WeakCrypt_Package;
package org.allbinary.logic.system.security.crypt.WeakCrypt_Package_References is
   type WeakCrypt_Access is access all org.allbinary.logic.system.security.crypt.WeakCrypt_Package.WeakCrypt'Class;
   type WeakCrypt_Access_Array is array (Natural range <>) of WeakCrypt_Access;
   type WeakCrypt_Access_Array_Access is access all WeakCrypt_Access_Array;
   type WeakCrypt_Access_Array_Access_Array is array (Natural range <>) of WeakCrypt_Access_Array_Access;
   type WeakCrypt_Access_Array_Access_Array_Access is access all WeakCrypt_Access_Array_Access_Array;
end org.allbinary.logic.system.security.crypt.WeakCrypt_Package_References;

with org.allbinary.logic.system.security.crypt.WeakCrypt_Package_References;
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
limited with org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References;

package org.allbinary.logic.system.security.crypt.WeakCrypt_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package AbCrypt_Package renames Standard.org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package;
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
   subtype AbCrypt_Access is org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References.AbCrypt_Access;
   use type AbCrypt_Access;
   subtype AbCrypt_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References.AbCrypt_Access_Array;
   use type AbCrypt_Access_Array;
   subtype AbCrypt_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References.AbCrypt_Access_Array_Access;
   use type AbCrypt_Access_Array_Access;
   subtype AbCrypt_Access_Array_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References.AbCrypt_Access_Array_Access_Array;
   use type AbCrypt_Access_Array_Access_Array;
   subtype AbCrypt_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package_References.AbCrypt_Access_Array_Access_Array_Access;
   use type AbCrypt_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WeakCrypt_Access is org.allbinary.logic.system.security.crypt.WeakCrypt_Package_References.WeakCrypt_Access;
   function "=" (Left, Right : WeakCrypt_Access) return Boolean renames org.allbinary.logic.system.security.crypt.WeakCrypt_Package_References."=";
   subtype WeakCrypt_Access_Array is org.allbinary.logic.system.security.crypt.WeakCrypt_Package_References.WeakCrypt_Access_Array;
   function "=" (Left, Right : WeakCrypt_Access_Array) return Boolean renames org.allbinary.logic.system.security.crypt.WeakCrypt_Package_References."=";
   subtype WeakCrypt_Access_Array_Access is org.allbinary.logic.system.security.crypt.WeakCrypt_Package_References.WeakCrypt_Access_Array_Access;
   function "=" (Left, Right : WeakCrypt_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.crypt.WeakCrypt_Package_References."=";
   subtype WeakCrypt_Access_Array_Access_Array is org.allbinary.logic.system.security.crypt.WeakCrypt_Package_References.WeakCrypt_Access_Array_Access_Array;
   function "=" (Left, Right : WeakCrypt_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.crypt.WeakCrypt_Package_References."=";
   subtype WeakCrypt_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.crypt.WeakCrypt_Package_References.WeakCrypt_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WeakCrypt_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.crypt.WeakCrypt_Package_References."=";

   type WeakCrypt is new Java_Object with record
      tsUtil : TsUtil_Access;
      abCrypt : AbCrypt_Access;
   end record;
   keys : Unbounded_String_Array_Access;
   KEYMAX : Integer;

   procedure Initialize (This : in out WeakCrypt'Class; key : Integer);
   function Create (key : Integer) return WeakCrypt_Access;
   function encrypt (This : in out WeakCrypt; value : Unbounded_String) return Unbounded_String;
   procedure encrypt (This : in out WeakCrypt; value : Unbounded_String);
   function decrypt (This : in out WeakCrypt; value : Unbounded_String) return Unbounded_String;
   procedure decrypt (This : in out WeakCrypt; value : Unbounded_String);

end org.allbinary.logic.system.security.crypt.WeakCrypt_Package;


