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
limited with org.allbinary.logic.java.anyType.MethodUtil_Package;
package org.allbinary.logic.java.anyType.MethodUtil_Package_References is
   type MethodUtil_Access is access all org.allbinary.logic.java.anyType.MethodUtil_Package.MethodUtil'Class;
   type MethodUtil_Access_Array is array (Natural range <>) of MethodUtil_Access;
   type MethodUtil_Access_Array_Access is access all MethodUtil_Access_Array;
   type MethodUtil_Access_Array_Access_Array is array (Natural range <>) of MethodUtil_Access_Array_Access;
   type MethodUtil_Access_Array_Access_Array_Access is access all MethodUtil_Access_Array_Access_Array;
   type MethodUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MethodUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : MethodUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MethodUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MethodUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MethodUtil_Access_Array_Access is (if Value /= null and then Value.all in MethodUtil_Access_Array_Object'Class then MethodUtil_Access_Array_Object'Class (Value.all).Value else null);
   type MethodUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MethodUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MethodUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MethodUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MethodUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MethodUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MethodUtil_Access_Array_Access_Array_Object'Class then MethodUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.java.anyType.MethodUtil_Package_References;

with org.allbinary.logic.java.anyType.MethodUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;

package org.allbinary.logic.java.anyType.MethodUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MethodUtil_Access is org.allbinary.logic.java.anyType.MethodUtil_Package_References.MethodUtil_Access;
   function "=" (Left, Right : MethodUtil_Access) return Boolean renames org.allbinary.logic.java.anyType.MethodUtil_Package_References."=";
   subtype MethodUtil_Access_Array is org.allbinary.logic.java.anyType.MethodUtil_Package_References.MethodUtil_Access_Array;
   function "=" (Left, Right : MethodUtil_Access_Array) return Boolean renames org.allbinary.logic.java.anyType.MethodUtil_Package_References."=";
   subtype MethodUtil_Access_Array_Access is org.allbinary.logic.java.anyType.MethodUtil_Package_References.MethodUtil_Access_Array_Access;
   function "=" (Left, Right : MethodUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.java.anyType.MethodUtil_Package_References."=";
   function Java_Box (Value : MethodUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.anyType.MethodUtil_Package_References.Java_Box;
   function Java_Unbox_MethodUtil_Access_Array (Value : access Java_Object'Class) return MethodUtil_Access_Array_Access renames org.allbinary.logic.java.anyType.MethodUtil_Package_References.Java_Unbox_MethodUtil_Access_Array;
   subtype MethodUtil_Access_Array_Access_Array is org.allbinary.logic.java.anyType.MethodUtil_Package_References.MethodUtil_Access_Array_Access_Array;
   function "=" (Left, Right : MethodUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.anyType.MethodUtil_Package_References."=";
   subtype MethodUtil_Access_Array_Access_Array_Access is org.allbinary.logic.java.anyType.MethodUtil_Package_References.MethodUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MethodUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.anyType.MethodUtil_Package_References."=";
   function Java_Box (Value : MethodUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.anyType.MethodUtil_Package_References.Java_Box;
   function Java_Unbox_MethodUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return MethodUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.java.anyType.MethodUtil_Package_References.Java_Unbox_MethodUtil_Access_Array_Access_Array;

   type MethodUtil is new Java_Object with null record;

   procedure Initialize (This : in out MethodUtil'Class);
   function Create return MethodUtil_Access;
   function viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String) return Unbounded_String;
   procedure viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String);

end org.allbinary.logic.java.anyType.MethodUtil_Package;


