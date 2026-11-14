-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package;
package org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References is
   type NoCrypt_Access is access all org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package.NoCrypt'Class;
   type NoCrypt_Access_Array is array (Natural range <>) of NoCrypt_Access;
   type NoCrypt_Access_Array_Access is access all NoCrypt_Access_Array;
   type NoCrypt_Access_Array_Access_Array is array (Natural range <>) of NoCrypt_Access_Array_Access;
   type NoCrypt_Access_Array_Access_Array_Access is access all NoCrypt_Access_Array_Access_Array;
   type NoCrypt_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoCrypt_Access_Array_Access;
   end record;
   function Java_Box (Value : NoCrypt_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoCrypt_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoCrypt_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoCrypt_Access_Array_Access is (if Value /= null and then Value.all in NoCrypt_Access_Array_Object'Class then NoCrypt_Access_Array_Object'Class (Value.all).Value else null);
   type NoCrypt_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoCrypt_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NoCrypt_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoCrypt_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoCrypt_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoCrypt_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NoCrypt_Access_Array_Access_Array_Object'Class then NoCrypt_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References;

with org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package; use org.allbinary.init.crypt.jcehelper.CryptInterface_Package;

package org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package is

   package CryptInterface_Package renames Standard.org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NoCrypt_Access is org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.NoCrypt_Access;
   function "=" (Left, Right : NoCrypt_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References."=";
   subtype NoCrypt_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.NoCrypt_Access_Array;
   function "=" (Left, Right : NoCrypt_Access_Array) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References."=";
   subtype NoCrypt_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.NoCrypt_Access_Array_Access;
   function "=" (Left, Right : NoCrypt_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References."=";
   function Java_Box (Value : NoCrypt_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.Java_Box;
   function Java_Unbox_NoCrypt_Access_Array (Value : access Java_Object'Class) return NoCrypt_Access_Array_Access renames org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.Java_Unbox_NoCrypt_Access_Array;
   subtype NoCrypt_Access_Array_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.NoCrypt_Access_Array_Access_Array;
   function "=" (Left, Right : NoCrypt_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References."=";
   subtype NoCrypt_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.NoCrypt_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoCrypt_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References."=";
   function Java_Box (Value : NoCrypt_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.Java_Box;
   function Java_Unbox_NoCrypt_Access_Array_Access_Array (Value : access Java_Object'Class) return NoCrypt_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package_References.Java_Unbox_NoCrypt_Access_Array_Access_Array;

   type NoCrypt is new Java_Object and CryptInterface with null record;

   procedure Initialize (This : in out NoCrypt'Class);
   function Create return NoCrypt_Access;
   function encrypt (This : in out NoCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure encrypt (This : in out NoCrypt; array_Id : Short_Short_Integer_Array_Access);
   function decrypt (This : in out NoCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure decrypt (This : in out NoCrypt; array_Id : Short_Short_Integer_Array_Access);

end org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt_Package;


