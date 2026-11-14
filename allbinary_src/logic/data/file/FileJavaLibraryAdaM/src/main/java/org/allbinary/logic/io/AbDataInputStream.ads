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
limited with org.allbinary.logic.io.AbDataInputStream_Package;
package org.allbinary.logic.io.AbDataInputStream_Package_References is
   type AbDataInputStream_Access is access all org.allbinary.logic.io.AbDataInputStream_Package.AbDataInputStream'Class;
   type AbDataInputStream_Access_Array is array (Natural range <>) of AbDataInputStream_Access;
   type AbDataInputStream_Access_Array_Access is access all AbDataInputStream_Access_Array;
   type AbDataInputStream_Access_Array_Access_Array is array (Natural range <>) of AbDataInputStream_Access_Array_Access;
   type AbDataInputStream_Access_Array_Access_Array_Access is access all AbDataInputStream_Access_Array_Access_Array;
   type AbDataInputStream_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbDataInputStream_Access_Array_Access;
   end record;
   function Java_Box (Value : AbDataInputStream_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbDataInputStream_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbDataInputStream_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbDataInputStream_Access_Array_Access is (if Value /= null and then Value.all in AbDataInputStream_Access_Array_Object'Class then AbDataInputStream_Access_Array_Object'Class (Value.all).Value else null);
   type AbDataInputStream_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbDataInputStream_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbDataInputStream_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbDataInputStream_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbDataInputStream_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbDataInputStream_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbDataInputStream_Access_Array_Access_Array_Object'Class then AbDataInputStream_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.AbDataInputStream_Package_References;

with org.allbinary.logic.io.AbDataInputStream_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.DataInputStream_Package; use java.io.DataInputStream_Package;
with java.io.InputStream_Package; use java.io.InputStream_Package;

package org.allbinary.logic.io.AbDataInputStream_Package is

   package DataInputStream_Package renames Standard.java.io.DataInputStream_Package;
   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AbDataInputStream_Access is org.allbinary.logic.io.AbDataInputStream_Package_References.AbDataInputStream_Access;
   function "=" (Left, Right : AbDataInputStream_Access) return Boolean renames org.allbinary.logic.io.AbDataInputStream_Package_References."=";
   subtype AbDataInputStream_Access_Array is org.allbinary.logic.io.AbDataInputStream_Package_References.AbDataInputStream_Access_Array;
   function "=" (Left, Right : AbDataInputStream_Access_Array) return Boolean renames org.allbinary.logic.io.AbDataInputStream_Package_References."=";
   subtype AbDataInputStream_Access_Array_Access is org.allbinary.logic.io.AbDataInputStream_Package_References.AbDataInputStream_Access_Array_Access;
   function "=" (Left, Right : AbDataInputStream_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbDataInputStream_Package_References."=";
   function Java_Box (Value : AbDataInputStream_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.AbDataInputStream_Package_References.Java_Box;
   function Java_Unbox_AbDataInputStream_Access_Array (Value : access Java_Object'Class) return AbDataInputStream_Access_Array_Access renames org.allbinary.logic.io.AbDataInputStream_Package_References.Java_Unbox_AbDataInputStream_Access_Array;
   subtype AbDataInputStream_Access_Array_Access_Array is org.allbinary.logic.io.AbDataInputStream_Package_References.AbDataInputStream_Access_Array_Access_Array;
   function "=" (Left, Right : AbDataInputStream_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.AbDataInputStream_Package_References."=";
   subtype AbDataInputStream_Access_Array_Access_Array_Access is org.allbinary.logic.io.AbDataInputStream_Package_References.AbDataInputStream_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbDataInputStream_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbDataInputStream_Package_References."=";
   function Java_Box (Value : AbDataInputStream_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.AbDataInputStream_Package_References.Java_Box;
   function Java_Unbox_AbDataInputStream_Access_Array_Access_Array (Value : access Java_Object'Class) return AbDataInputStream_Access_Array_Access_Array_Access renames org.allbinary.logic.io.AbDataInputStream_Package_References.Java_Unbox_AbDataInputStream_Access_Array_Access_Array;

   type AbDataInputStream is new DataInputStream with null record;

   procedure Initialize (This : in out AbDataInputStream'Class; out_Id_Param : access InputStream_Package.InputStream'Class);
   function Create (out_Id_Param : access InputStream_Package.InputStream'Class) return AbDataInputStream_Access;

end org.allbinary.logic.io.AbDataInputStream_Package;


