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
limited with org.allbinary.J2MEUtil_Package;
package org.allbinary.J2MEUtil_Package_References is
   type J2MEUtil_Access is access all org.allbinary.J2MEUtil_Package.J2MEUtil'Class;
   type J2MEUtil_Access_Array is array (Natural range <>) of J2MEUtil_Access;
   type J2MEUtil_Access_Array_Access is access all J2MEUtil_Access_Array;
   type J2MEUtil_Access_Array_Access_Array is array (Natural range <>) of J2MEUtil_Access_Array_Access;
   type J2MEUtil_Access_Array_Access_Array_Access is access all J2MEUtil_Access_Array_Access_Array;
   type J2MEUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : J2MEUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : J2MEUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new J2MEUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_J2MEUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return J2MEUtil_Access_Array_Access is (if Value /= null and then Value.all in J2MEUtil_Access_Array_Object'Class then J2MEUtil_Access_Array_Object'Class (Value.all).Value else null);
   type J2MEUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : J2MEUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : J2MEUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new J2MEUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_J2MEUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return J2MEUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in J2MEUtil_Access_Array_Access_Array_Object'Class then J2MEUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.J2MEUtil_Package_References;

with org.allbinary.J2MEUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.J2MEUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype J2MEUtil_Access is org.allbinary.J2MEUtil_Package_References.J2MEUtil_Access;
   function "=" (Left, Right : J2MEUtil_Access) return Boolean renames org.allbinary.J2MEUtil_Package_References."=";
   subtype J2MEUtil_Access_Array is org.allbinary.J2MEUtil_Package_References.J2MEUtil_Access_Array;
   function "=" (Left, Right : J2MEUtil_Access_Array) return Boolean renames org.allbinary.J2MEUtil_Package_References."=";
   subtype J2MEUtil_Access_Array_Access is org.allbinary.J2MEUtil_Package_References.J2MEUtil_Access_Array_Access;
   function "=" (Left, Right : J2MEUtil_Access_Array_Access) return Boolean renames org.allbinary.J2MEUtil_Package_References."=";
   function Java_Box (Value : J2MEUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.J2MEUtil_Package_References.Java_Box;
   function Java_Unbox_J2MEUtil_Access_Array (Value : access Java_Object'Class) return J2MEUtil_Access_Array_Access renames org.allbinary.J2MEUtil_Package_References.Java_Unbox_J2MEUtil_Access_Array;
   subtype J2MEUtil_Access_Array_Access_Array is org.allbinary.J2MEUtil_Package_References.J2MEUtil_Access_Array_Access_Array;
   function "=" (Left, Right : J2MEUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.J2MEUtil_Package_References."=";
   subtype J2MEUtil_Access_Array_Access_Array_Access is org.allbinary.J2MEUtil_Package_References.J2MEUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : J2MEUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.J2MEUtil_Package_References."=";
   function Java_Box (Value : J2MEUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.J2MEUtil_Package_References.Java_Box;
   function Java_Unbox_J2MEUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return J2MEUtil_Access_Array_Access_Array_Access renames org.allbinary.J2MEUtil_Package_References.Java_Unbox_J2MEUtil_Access_Array_Access_Array;

   type J2MEUtil is new Java_Object with null record;

   procedure Initialize (This : in out J2MEUtil'Class);
   function Create return J2MEUtil_Access;
   function isJ2ME return Boolean;
   function isJ2SE return Boolean;
   function isHTML return Boolean;

end org.allbinary.J2MEUtil_Package;


