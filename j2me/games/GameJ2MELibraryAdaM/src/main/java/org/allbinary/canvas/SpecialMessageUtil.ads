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
limited with org.allbinary.canvas.SpecialMessageUtil_Package;
package org.allbinary.canvas.SpecialMessageUtil_Package_References is
   type SpecialMessageUtil_Access is access all org.allbinary.canvas.SpecialMessageUtil_Package.SpecialMessageUtil'Class;
   type SpecialMessageUtil_Access_Array is array (Natural range <>) of SpecialMessageUtil_Access;
   type SpecialMessageUtil_Access_Array_Access is access all SpecialMessageUtil_Access_Array;
   type SpecialMessageUtil_Access_Array_Access_Array is array (Natural range <>) of SpecialMessageUtil_Access_Array_Access;
   type SpecialMessageUtil_Access_Array_Access_Array_Access is access all SpecialMessageUtil_Access_Array_Access_Array;
   type SpecialMessageUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SpecialMessageUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : SpecialMessageUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SpecialMessageUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SpecialMessageUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SpecialMessageUtil_Access_Array_Access is (if Value /= null and then Value.all in SpecialMessageUtil_Access_Array_Object'Class then SpecialMessageUtil_Access_Array_Object'Class (Value.all).Value else null);
   type SpecialMessageUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SpecialMessageUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SpecialMessageUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SpecialMessageUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SpecialMessageUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SpecialMessageUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SpecialMessageUtil_Access_Array_Access_Array_Object'Class then SpecialMessageUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.canvas.SpecialMessageUtil_Package_References;

with org.allbinary.canvas.SpecialMessageUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.canvas.SpecialMessageUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SpecialMessageUtil_Access is org.allbinary.canvas.SpecialMessageUtil_Package_References.SpecialMessageUtil_Access;
   function "=" (Left, Right : SpecialMessageUtil_Access) return Boolean renames org.allbinary.canvas.SpecialMessageUtil_Package_References."=";
   subtype SpecialMessageUtil_Access_Array is org.allbinary.canvas.SpecialMessageUtil_Package_References.SpecialMessageUtil_Access_Array;
   function "=" (Left, Right : SpecialMessageUtil_Access_Array) return Boolean renames org.allbinary.canvas.SpecialMessageUtil_Package_References."=";
   subtype SpecialMessageUtil_Access_Array_Access is org.allbinary.canvas.SpecialMessageUtil_Package_References.SpecialMessageUtil_Access_Array_Access;
   function "=" (Left, Right : SpecialMessageUtil_Access_Array_Access) return Boolean renames org.allbinary.canvas.SpecialMessageUtil_Package_References."=";
   function Java_Box (Value : SpecialMessageUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.canvas.SpecialMessageUtil_Package_References.Java_Box;
   function Java_Unbox_SpecialMessageUtil_Access_Array (Value : access Java_Object'Class) return SpecialMessageUtil_Access_Array_Access renames org.allbinary.canvas.SpecialMessageUtil_Package_References.Java_Unbox_SpecialMessageUtil_Access_Array;
   subtype SpecialMessageUtil_Access_Array_Access_Array is org.allbinary.canvas.SpecialMessageUtil_Package_References.SpecialMessageUtil_Access_Array_Access_Array;
   function "=" (Left, Right : SpecialMessageUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.SpecialMessageUtil_Package_References."=";
   subtype SpecialMessageUtil_Access_Array_Access_Array_Access is org.allbinary.canvas.SpecialMessageUtil_Package_References.SpecialMessageUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpecialMessageUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.SpecialMessageUtil_Package_References."=";
   function Java_Box (Value : SpecialMessageUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.canvas.SpecialMessageUtil_Package_References.Java_Box;
   function Java_Unbox_SpecialMessageUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return SpecialMessageUtil_Access_Array_Access_Array_Access renames org.allbinary.canvas.SpecialMessageUtil_Package_References.Java_Unbox_SpecialMessageUtil_Access_Array_Access_Array;

   type SpecialMessageUtil is new Java_Object with null record;
   SINGLETON : SpecialMessageUtil_Access;

   procedure Initialize (This : in out SpecialMessageUtil'Class);
   function Create return SpecialMessageUtil_Access;
   function getInstance return SpecialMessageUtil_Access;
   function get (This : in out SpecialMessageUtil) return Unbounded_String;

end org.allbinary.canvas.SpecialMessageUtil_Package;


