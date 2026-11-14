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
limited with org.allbinary.util.EnumerationUtil_Package;
package org.allbinary.util.EnumerationUtil_Package_References is
   type EnumerationUtil_Access is access all org.allbinary.util.EnumerationUtil_Package.EnumerationUtil'Class;
   type EnumerationUtil_Access_Array is array (Natural range <>) of EnumerationUtil_Access;
   type EnumerationUtil_Access_Array_Access is access all EnumerationUtil_Access_Array;
   type EnumerationUtil_Access_Array_Access_Array is array (Natural range <>) of EnumerationUtil_Access_Array_Access;
   type EnumerationUtil_Access_Array_Access_Array_Access is access all EnumerationUtil_Access_Array_Access_Array;
   type EnumerationUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EnumerationUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : EnumerationUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EnumerationUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EnumerationUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EnumerationUtil_Access_Array_Access is (if Value /= null and then Value.all in EnumerationUtil_Access_Array_Object'Class then EnumerationUtil_Access_Array_Object'Class (Value.all).Value else null);
   type EnumerationUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EnumerationUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : EnumerationUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EnumerationUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EnumerationUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EnumerationUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in EnumerationUtil_Access_Array_Access_Array_Object'Class then EnumerationUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.util.EnumerationUtil_Package_References;

with org.allbinary.util.EnumerationUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.Enumeration_Package; use java.util.Enumeration_Package;

package org.allbinary.util.EnumerationUtil_Package is

   package Enumeration_Package renames Standard.java.util.Enumeration_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype EnumerationUtil_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access;
   function "=" (Left, Right : EnumerationUtil_Access) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   subtype EnumerationUtil_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array;
   function "=" (Left, Right : EnumerationUtil_Access_Array) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   subtype EnumerationUtil_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access;
   function "=" (Left, Right : EnumerationUtil_Access_Array_Access) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   function Java_Box (Value : EnumerationUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.EnumerationUtil_Package_References.Java_Box;
   function Java_Unbox_EnumerationUtil_Access_Array (Value : access Java_Object'Class) return EnumerationUtil_Access_Array_Access renames org.allbinary.util.EnumerationUtil_Package_References.Java_Unbox_EnumerationUtil_Access_Array;
   subtype EnumerationUtil_Access_Array_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : EnumerationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   subtype EnumerationUtil_Access_Array_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EnumerationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   function Java_Box (Value : EnumerationUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.EnumerationUtil_Package_References.Java_Box;
   function Java_Unbox_EnumerationUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return EnumerationUtil_Access_Array_Access_Array_Access renames org.allbinary.util.EnumerationUtil_Package_References.Java_Unbox_EnumerationUtil_Access_Array_Access_Array;

   type EnumerationUtil is new Java_Object with null record;
   instance : EnumerationUtil_Access;

   procedure Initialize (This : in out EnumerationUtil'Class);
   function Create return EnumerationUtil_Access;
   function getInstance return EnumerationUtil_Access;
   function hasMoreElements (This : in out EnumerationUtil; enumeration_Param : access Enumeration_Package.Enumeration'Class) return Boolean;
   procedure hasMoreElements (This : in out EnumerationUtil; enumeration_Param : access Enumeration_Package.Enumeration'Class);
   function nextElement (This : in out EnumerationUtil; enumeration_Param : access Enumeration_Package.Enumeration'Class) return Java_Object_Access;
   procedure nextElement (This : in out EnumerationUtil; enumeration_Param : access Enumeration_Package.Enumeration'Class);
   function getAsArray (This : in out EnumerationUtil; enumeration_Param : access Enumeration_Package.Enumeration'Class) return Java_Object_Access_Array_Access;
   procedure getAsArray (This : in out EnumerationUtil; enumeration_Param : access Enumeration_Package.Enumeration'Class);

end org.allbinary.util.EnumerationUtil_Package;


