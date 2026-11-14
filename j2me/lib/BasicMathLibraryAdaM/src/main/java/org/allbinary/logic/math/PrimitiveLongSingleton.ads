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
limited with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
package org.allbinary.logic.math.PrimitiveLongSingleton_Package_References is
   type PrimitiveLongSingleton_Access is access all org.allbinary.logic.math.PrimitiveLongSingleton_Package.PrimitiveLongSingleton'Class;
   type PrimitiveLongSingleton_Access_Array is array (Natural range <>) of PrimitiveLongSingleton_Access;
   type PrimitiveLongSingleton_Access_Array_Access is access all PrimitiveLongSingleton_Access_Array;
   type PrimitiveLongSingleton_Access_Array_Access_Array is array (Natural range <>) of PrimitiveLongSingleton_Access_Array_Access;
   type PrimitiveLongSingleton_Access_Array_Access_Array_Access is access all PrimitiveLongSingleton_Access_Array_Access_Array;
   type PrimitiveLongSingleton_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PrimitiveLongSingleton_Access_Array_Access;
   end record;
   function Java_Box (Value : PrimitiveLongSingleton_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PrimitiveLongSingleton_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PrimitiveLongSingleton_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PrimitiveLongSingleton_Access_Array_Access is (if Value /= null and then Value.all in PrimitiveLongSingleton_Access_Array_Object'Class then PrimitiveLongSingleton_Access_Array_Object'Class (Value.all).Value else null);
   type PrimitiveLongSingleton_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PrimitiveLongSingleton_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PrimitiveLongSingleton_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PrimitiveLongSingleton_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PrimitiveLongSingleton_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PrimitiveLongSingleton_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PrimitiveLongSingleton_Access_Array_Access_Array_Object'Class then PrimitiveLongSingleton_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.math.PrimitiveLongSingleton_Package_References;

with org.allbinary.logic.math.PrimitiveLongSingleton_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.math.PrimitiveLongSingleton_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PrimitiveLongSingleton_Access is org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.PrimitiveLongSingleton_Access;
   function "=" (Left, Right : PrimitiveLongSingleton_Access) return Boolean renames org.allbinary.logic.math.PrimitiveLongSingleton_Package_References."=";
   subtype PrimitiveLongSingleton_Access_Array is org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.PrimitiveLongSingleton_Access_Array;
   function "=" (Left, Right : PrimitiveLongSingleton_Access_Array) return Boolean renames org.allbinary.logic.math.PrimitiveLongSingleton_Package_References."=";
   subtype PrimitiveLongSingleton_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.PrimitiveLongSingleton_Access_Array_Access;
   function "=" (Left, Right : PrimitiveLongSingleton_Access_Array_Access) return Boolean renames org.allbinary.logic.math.PrimitiveLongSingleton_Package_References."=";
   function Java_Box (Value : PrimitiveLongSingleton_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.Java_Box;
   function Java_Unbox_PrimitiveLongSingleton_Access_Array (Value : access Java_Object'Class) return PrimitiveLongSingleton_Access_Array_Access renames org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.Java_Unbox_PrimitiveLongSingleton_Access_Array;
   subtype PrimitiveLongSingleton_Access_Array_Access_Array is org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.PrimitiveLongSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : PrimitiveLongSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.PrimitiveLongSingleton_Package_References."=";
   subtype PrimitiveLongSingleton_Access_Array_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.PrimitiveLongSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PrimitiveLongSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.PrimitiveLongSingleton_Package_References."=";
   function Java_Box (Value : PrimitiveLongSingleton_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.Java_Box;
   function Java_Unbox_PrimitiveLongSingleton_Access_Array_Access_Array (Value : access Java_Object'Class) return PrimitiveLongSingleton_Access_Array_Access_Array_Access renames org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.Java_Unbox_PrimitiveLongSingleton_Access_Array_Access_Array;

   type PrimitiveLongSingleton is new Java_Object with record
      UNK : Character_Array_Access;
      NUMBER_ARRAY : Short_Short_Integer_Array_Access;
      NUMBER_CHAR_ARRAY : Character_Array_Access;
      NUMBER_CHAR_ARRAYS : Character_Array_Access_Array_Access;
      ZERO : Character_Array_Access;
   end record;
   instance : PrimitiveLongSingleton_Access;

   procedure Initialize (This : in out PrimitiveLongSingleton'Class);
   function Create return PrimitiveLongSingleton_Access;
   function getInstance return PrimitiveLongSingleton_Access;
   function getNumberFromChar (This : in out PrimitiveLongSingleton; numberAsChar : Character) return Short_Short_Integer;
   procedure getNumberFromChar (This : in out PrimitiveLongSingleton; numberAsChar : Character);

end org.allbinary.logic.math.PrimitiveLongSingleton_Package;


