-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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
limited with org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package;
package org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package_References is
   type AbCrypt_Access is access all org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package.AbCrypt'Class;
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
end org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package_References;

with org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AbCrypt_Access is org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package_References.AbCrypt_Access;
   function "=" (Left, Right : AbCrypt_Access) return Boolean renames org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package_References."=";
   subtype AbCrypt_Access_Array is org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package_References.AbCrypt_Access_Array;
   function "=" (Left, Right : AbCrypt_Access_Array) return Boolean renames org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package_References."=";
   subtype AbCrypt_Access_Array_Access is org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package_References.AbCrypt_Access_Array_Access;
   function "=" (Left, Right : AbCrypt_Access_Array_Access) return Boolean renames org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package_References."=";
   function Java_Box (Value : AbCrypt_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package_References.Java_Box;
   function Java_Unbox_AbCrypt_Access_Array (Value : access Java_Object'Class) return AbCrypt_Access_Array_Access renames org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package_References.Java_Unbox_AbCrypt_Access_Array;
   subtype AbCrypt_Access_Array_Access_Array is org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package_References.AbCrypt_Access_Array_Access_Array;
   function "=" (Left, Right : AbCrypt_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package_References."=";
   subtype AbCrypt_Access_Array_Access_Array_Access is org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package_References.AbCrypt_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbCrypt_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package_References."=";
   function Java_Box (Value : AbCrypt_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package_References.Java_Box;
   function Java_Unbox_AbCrypt_Access_Array_Access_Array (Value : access Java_Object'Class) return AbCrypt_Access_Array_Access_Array_Access renames org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package_References.Java_Unbox_AbCrypt_Access_Array_Access_Array;

   type AbCrypt is new Java_Object with null record;

   procedure Initialize (This : in out AbCrypt'Class; algorithm : Unbounded_String; key : Unbounded_String);
   function Create (algorithm : Unbounded_String; key : Unbounded_String) return AbCrypt_Access;
   function encrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure encrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access);
   function decrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure decrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access);
   function mutilate (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access;
   procedure mutilate (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access);

end org.allbinary.logic.control.crypt.jcehelper.AbCrypt_Package;


