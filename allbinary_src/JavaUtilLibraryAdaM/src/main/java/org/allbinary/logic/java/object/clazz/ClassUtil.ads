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
limited with org.allbinary.logic.java.anyType.clazz.ClassUtil_Package;
package org.allbinary.logic.java.anyType.clazz.ClassUtil_Package_References is
   type ClassUtil_Access is access all org.allbinary.logic.java.anyType.clazz.ClassUtil_Package.ClassUtil'Class;
   type ClassUtil_Access_Array is array (Natural range <>) of ClassUtil_Access;
   type ClassUtil_Access_Array_Access is access all ClassUtil_Access_Array;
   type ClassUtil_Access_Array_Access_Array is array (Natural range <>) of ClassUtil_Access_Array_Access;
   type ClassUtil_Access_Array_Access_Array_Access is access all ClassUtil_Access_Array_Access_Array;
   type ClassUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ClassUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ClassUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ClassUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ClassUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ClassUtil_Access_Array_Access is (if Value /= null and then Value.all in ClassUtil_Access_Array_Object'Class then ClassUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ClassUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ClassUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ClassUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ClassUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ClassUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ClassUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ClassUtil_Access_Array_Access_Array_Object'Class then ClassUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.java.anyType.clazz.ClassUtil_Package_References;

with org.allbinary.logic.java.anyType.clazz.ClassUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.java.anyType.clazz.ClassUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ClassUtil_Access is org.allbinary.logic.java.anyType.clazz.ClassUtil_Package_References.ClassUtil_Access;
   function "=" (Left, Right : ClassUtil_Access) return Boolean renames org.allbinary.logic.java.anyType.clazz.ClassUtil_Package_References."=";
   subtype ClassUtil_Access_Array is org.allbinary.logic.java.anyType.clazz.ClassUtil_Package_References.ClassUtil_Access_Array;
   function "=" (Left, Right : ClassUtil_Access_Array) return Boolean renames org.allbinary.logic.java.anyType.clazz.ClassUtil_Package_References."=";
   subtype ClassUtil_Access_Array_Access is org.allbinary.logic.java.anyType.clazz.ClassUtil_Package_References.ClassUtil_Access_Array_Access;
   function "=" (Left, Right : ClassUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.java.anyType.clazz.ClassUtil_Package_References."=";
   function Java_Box (Value : ClassUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.anyType.clazz.ClassUtil_Package_References.Java_Box;
   function Java_Unbox_ClassUtil_Access_Array (Value : access Java_Object'Class) return ClassUtil_Access_Array_Access renames org.allbinary.logic.java.anyType.clazz.ClassUtil_Package_References.Java_Unbox_ClassUtil_Access_Array;
   subtype ClassUtil_Access_Array_Access_Array is org.allbinary.logic.java.anyType.clazz.ClassUtil_Package_References.ClassUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ClassUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.anyType.clazz.ClassUtil_Package_References."=";
   subtype ClassUtil_Access_Array_Access_Array_Access is org.allbinary.logic.java.anyType.clazz.ClassUtil_Package_References.ClassUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ClassUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.anyType.clazz.ClassUtil_Package_References."=";
   function Java_Box (Value : ClassUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.anyType.clazz.ClassUtil_Package_References.Java_Box;
   function Java_Unbox_ClassUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ClassUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.java.anyType.clazz.ClassUtil_Package_References.Java_Unbox_ClassUtil_Access_Array_Access_Array;

   type ClassUtil is new Java_Object with null record;

   procedure Initialize (This : in out ClassUtil'Class);
   function Create return ClassUtil_Access;
   function viewAll (anyType_Param : access Java_Object'Class; lineBreak : Unbounded_String) return Unbounded_String;
   procedure viewAll (anyType_Param : access Java_Object'Class; lineBreak : Unbounded_String);
   function viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String) return Unbounded_String;
   procedure viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String);

end org.allbinary.logic.java.anyType.clazz.ClassUtil_Package;


