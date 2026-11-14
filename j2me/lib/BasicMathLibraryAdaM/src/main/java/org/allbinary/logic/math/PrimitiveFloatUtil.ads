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
limited with org.allbinary.logic.math.PrimitiveFloatUtil_Package;
package org.allbinary.logic.math.PrimitiveFloatUtil_Package_References is
   type PrimitiveFloatUtil_Access is access all org.allbinary.logic.math.PrimitiveFloatUtil_Package.PrimitiveFloatUtil'Class;
   type PrimitiveFloatUtil_Access_Array is array (Natural range <>) of PrimitiveFloatUtil_Access;
   type PrimitiveFloatUtil_Access_Array_Access is access all PrimitiveFloatUtil_Access_Array;
   type PrimitiveFloatUtil_Access_Array_Access_Array is array (Natural range <>) of PrimitiveFloatUtil_Access_Array_Access;
   type PrimitiveFloatUtil_Access_Array_Access_Array_Access is access all PrimitiveFloatUtil_Access_Array_Access_Array;
   type PrimitiveFloatUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PrimitiveFloatUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : PrimitiveFloatUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PrimitiveFloatUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PrimitiveFloatUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PrimitiveFloatUtil_Access_Array_Access is (if Value /= null and then Value.all in PrimitiveFloatUtil_Access_Array_Object'Class then PrimitiveFloatUtil_Access_Array_Object'Class (Value.all).Value else null);
   type PrimitiveFloatUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PrimitiveFloatUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PrimitiveFloatUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PrimitiveFloatUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PrimitiveFloatUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PrimitiveFloatUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PrimitiveFloatUtil_Access_Array_Access_Array_Object'Class then PrimitiveFloatUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.math.PrimitiveFloatUtil_Package_References;

with org.allbinary.logic.math.PrimitiveFloatUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.math.PrimitiveFloatUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PrimitiveFloatUtil_Access is org.allbinary.logic.math.PrimitiveFloatUtil_Package_References.PrimitiveFloatUtil_Access;
   function "=" (Left, Right : PrimitiveFloatUtil_Access) return Boolean renames org.allbinary.logic.math.PrimitiveFloatUtil_Package_References."=";
   subtype PrimitiveFloatUtil_Access_Array is org.allbinary.logic.math.PrimitiveFloatUtil_Package_References.PrimitiveFloatUtil_Access_Array;
   function "=" (Left, Right : PrimitiveFloatUtil_Access_Array) return Boolean renames org.allbinary.logic.math.PrimitiveFloatUtil_Package_References."=";
   subtype PrimitiveFloatUtil_Access_Array_Access is org.allbinary.logic.math.PrimitiveFloatUtil_Package_References.PrimitiveFloatUtil_Access_Array_Access;
   function "=" (Left, Right : PrimitiveFloatUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.math.PrimitiveFloatUtil_Package_References."=";
   function Java_Box (Value : PrimitiveFloatUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.PrimitiveFloatUtil_Package_References.Java_Box;
   function Java_Unbox_PrimitiveFloatUtil_Access_Array (Value : access Java_Object'Class) return PrimitiveFloatUtil_Access_Array_Access renames org.allbinary.logic.math.PrimitiveFloatUtil_Package_References.Java_Unbox_PrimitiveFloatUtil_Access_Array;
   subtype PrimitiveFloatUtil_Access_Array_Access_Array is org.allbinary.logic.math.PrimitiveFloatUtil_Package_References.PrimitiveFloatUtil_Access_Array_Access_Array;
   function "=" (Left, Right : PrimitiveFloatUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.PrimitiveFloatUtil_Package_References."=";
   subtype PrimitiveFloatUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.PrimitiveFloatUtil_Package_References.PrimitiveFloatUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PrimitiveFloatUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.PrimitiveFloatUtil_Package_References."=";
   function Java_Box (Value : PrimitiveFloatUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.PrimitiveFloatUtil_Package_References.Java_Box;
   function Java_Unbox_PrimitiveFloatUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return PrimitiveFloatUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.math.PrimitiveFloatUtil_Package_References.Java_Unbox_PrimitiveFloatUtil_Access_Array_Access_Array;

   type PrimitiveFloatUtil is new Java_Object with null record;

   procedure Initialize (This : in out PrimitiveFloatUtil'Class);
   function Create return PrimitiveFloatUtil_Access;
   function getArrayInstance return Float_Array_Access;

end org.allbinary.logic.math.PrimitiveFloatUtil_Package;


