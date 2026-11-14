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
limited with org.allbinary.logic.math.SmallLongFactory_Package;
package org.allbinary.logic.math.SmallLongFactory_Package_References is
   type SmallLongFactory_Access is access all org.allbinary.logic.math.SmallLongFactory_Package.SmallLongFactory'Class;
   type SmallLongFactory_Access_Array is array (Natural range <>) of SmallLongFactory_Access;
   type SmallLongFactory_Access_Array_Access is access all SmallLongFactory_Access_Array;
   type SmallLongFactory_Access_Array_Access_Array is array (Natural range <>) of SmallLongFactory_Access_Array_Access;
   type SmallLongFactory_Access_Array_Access_Array_Access is access all SmallLongFactory_Access_Array_Access_Array;
   type SmallLongFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SmallLongFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : SmallLongFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SmallLongFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SmallLongFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SmallLongFactory_Access_Array_Access is (if Value /= null and then Value.all in SmallLongFactory_Access_Array_Object'Class then SmallLongFactory_Access_Array_Object'Class (Value.all).Value else null);
   type SmallLongFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SmallLongFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SmallLongFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SmallLongFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SmallLongFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SmallLongFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SmallLongFactory_Access_Array_Access_Array_Object'Class then SmallLongFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.math.SmallLongFactory_Package_References;

with org.allbinary.logic.math.SmallLongFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.math.SmallLongFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SmallLongFactory_Access is org.allbinary.logic.math.SmallLongFactory_Package_References.SmallLongFactory_Access;
   function "=" (Left, Right : SmallLongFactory_Access) return Boolean renames org.allbinary.logic.math.SmallLongFactory_Package_References."=";
   subtype SmallLongFactory_Access_Array is org.allbinary.logic.math.SmallLongFactory_Package_References.SmallLongFactory_Access_Array;
   function "=" (Left, Right : SmallLongFactory_Access_Array) return Boolean renames org.allbinary.logic.math.SmallLongFactory_Package_References."=";
   subtype SmallLongFactory_Access_Array_Access is org.allbinary.logic.math.SmallLongFactory_Package_References.SmallLongFactory_Access_Array_Access;
   function "=" (Left, Right : SmallLongFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.math.SmallLongFactory_Package_References."=";
   function Java_Box (Value : SmallLongFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.SmallLongFactory_Package_References.Java_Box;
   function Java_Unbox_SmallLongFactory_Access_Array (Value : access Java_Object'Class) return SmallLongFactory_Access_Array_Access renames org.allbinary.logic.math.SmallLongFactory_Package_References.Java_Unbox_SmallLongFactory_Access_Array;
   subtype SmallLongFactory_Access_Array_Access_Array is org.allbinary.logic.math.SmallLongFactory_Package_References.SmallLongFactory_Access_Array_Access_Array;
   function "=" (Left, Right : SmallLongFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.SmallLongFactory_Package_References."=";
   subtype SmallLongFactory_Access_Array_Access_Array_Access is org.allbinary.logic.math.SmallLongFactory_Package_References.SmallLongFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SmallLongFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.SmallLongFactory_Package_References."=";
   function Java_Box (Value : SmallLongFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.SmallLongFactory_Package_References.Java_Box;
   function Java_Unbox_SmallLongFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return SmallLongFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.math.SmallLongFactory_Package_References.Java_Unbox_SmallLongFactory_Access_Array_Access_Array;

   type SmallLongFactory is new Java_Object with record
      NEGATIVE_MAX : Integer;
      POSITIVE_MAX : Integer;
      INTEGER_ARRAY : Long_Long_Integer_Array_Access;
      STRING_ARRAY : Unbounded_String_Array_Access;
      MIN : Integer;
      lastMin : Integer;
      lastNegativeMin : Integer;
   end record;
   instance : SmallLongFactory_Access;

   procedure Initialize (This : in out SmallLongFactory'Class);
   function Create return SmallLongFactory_Access;
   function getInstance return SmallLongFactory_Access;
   procedure initWithRange (This : in out SmallLongFactory; value : Integer; negativeValue : Integer);
   procedure init (This : in out SmallLongFactory);
   function getInstanceNoThrow (This : in out SmallLongFactory; index : Long_Long_Integer) return Long_Long_Integer;
   procedure getInstanceNoThrow (This : in out SmallLongFactory; index : Long_Long_Integer);
   function getString (This : in out SmallLongFactory; index : Integer) return Unbounded_String;
   procedure getString (This : in out SmallLongFactory; index : Integer);

end org.allbinary.logic.math.SmallLongFactory_Package;


