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
limited with org.allbinary.game.rand.MyRandomFactory_Package;
package org.allbinary.game.rand.MyRandomFactory_Package_References is
   type MyRandomFactory_Access is access all org.allbinary.game.rand.MyRandomFactory_Package.MyRandomFactory'Class;
   type MyRandomFactory_Access_Array is array (Natural range <>) of MyRandomFactory_Access;
   type MyRandomFactory_Access_Array_Access is access all MyRandomFactory_Access_Array;
   type MyRandomFactory_Access_Array_Access_Array is array (Natural range <>) of MyRandomFactory_Access_Array_Access;
   type MyRandomFactory_Access_Array_Access_Array_Access is access all MyRandomFactory_Access_Array_Access_Array;
   type MyRandomFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyRandomFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : MyRandomFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyRandomFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyRandomFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyRandomFactory_Access_Array_Access is (if Value /= null and then Value.all in MyRandomFactory_Access_Array_Object'Class then MyRandomFactory_Access_Array_Object'Class (Value.all).Value else null);
   type MyRandomFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyRandomFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MyRandomFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyRandomFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyRandomFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyRandomFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MyRandomFactory_Access_Array_Access_Array_Object'Class then MyRandomFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.rand.MyRandomFactory_Package_References;

with org.allbinary.game.rand.MyRandomFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.Random_Package; use java.util.Random_Package;
limited with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.math.MathUtil_Package_References;

package org.allbinary.game.rand.MyRandomFactory_Package is

   package Random_Package renames Standard.java.util.Random_Package;
   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;
   package Reference_Types is
   subtype MathUtil_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access;
   use type MathUtil_Access;
   subtype MathUtil_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array;
   use type MathUtil_Access_Array;
   subtype MathUtil_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access;
   use type MathUtil_Access_Array_Access;
   subtype MathUtil_Access_Array_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array;
   use type MathUtil_Access_Array_Access_Array;
   subtype MathUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array_Access;
   use type MathUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MyRandomFactory_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access;
   function "=" (Left, Right : MyRandomFactory_Access) return Boolean renames org.allbinary.game.rand.MyRandomFactory_Package_References."=";
   subtype MyRandomFactory_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array;
   function "=" (Left, Right : MyRandomFactory_Access_Array) return Boolean renames org.allbinary.game.rand.MyRandomFactory_Package_References."=";
   subtype MyRandomFactory_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access;
   function "=" (Left, Right : MyRandomFactory_Access_Array_Access) return Boolean renames org.allbinary.game.rand.MyRandomFactory_Package_References."=";
   function Java_Box (Value : MyRandomFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.rand.MyRandomFactory_Package_References.Java_Box;
   function Java_Unbox_MyRandomFactory_Access_Array (Value : access Java_Object'Class) return MyRandomFactory_Access_Array_Access renames org.allbinary.game.rand.MyRandomFactory_Package_References.Java_Unbox_MyRandomFactory_Access_Array;
   subtype MyRandomFactory_Access_Array_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array;
   function "=" (Left, Right : MyRandomFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.rand.MyRandomFactory_Package_References."=";
   subtype MyRandomFactory_Access_Array_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyRandomFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.rand.MyRandomFactory_Package_References."=";
   function Java_Box (Value : MyRandomFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.rand.MyRandomFactory_Package_References.Java_Box;
   function Java_Unbox_MyRandomFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return MyRandomFactory_Access_Array_Access_Array_Access renames org.allbinary.game.rand.MyRandomFactory_Package_References.Java_Unbox_MyRandomFactory_Access_Array_Access_Array;

   type MyRandomFactory is new Java_Object with record
      mathUtil : MathUtil_Access;
      rand : Random_Access;
   end record;
   instance : MyRandomFactory_Access;

   procedure Initialize (This : in out MyRandomFactory'Class);
   function Create return MyRandomFactory_Access;
   function getInstance return MyRandomFactory_Access;
   procedure setSeed (This : in out MyRandomFactory; seed : Long_Long_Integer);
   function getNextInt (This : in out MyRandomFactory; range_Id : Integer) return Integer;
   procedure getNextInt (This : in out MyRandomFactory; range_Id : Integer);
   function getAbsoluteNextInt (This : in out MyRandomFactory; range_Id : Integer) return Integer;
   procedure getAbsoluteNextInt (This : in out MyRandomFactory; range_Id : Integer);
   function getAbsoluteNextIntAllowZero (This : in out MyRandomFactory; range_Id : Integer) return Integer;
   procedure getAbsoluteNextIntAllowZero (This : in out MyRandomFactory; range_Id : Integer);
   procedure shuffle (This : in out MyRandomFactory; intArray : Integer_Array_Access);
   procedure shuffleTotal (This : in out MyRandomFactory; intArray : Integer_Array_Access; shuffleTotal : Integer);
   procedure shuffle2 (This : in out MyRandomFactory; intArray : Integer_Array_Access; intArray2 : Integer_Array_Access);
   procedure shuffle2Total (This : in out MyRandomFactory; intArray : Integer_Array_Access; intArray2 : Integer_Array_Access; shuffleTotal : Integer);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.game.rand.MyRandomFactory_Package;


