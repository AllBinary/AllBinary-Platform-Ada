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
limited with org.allbinary.logic.math.vector.MathVectorInterface_Package;
package org.allbinary.logic.math.vector.MathVectorInterface_Package_References is
   type MathVectorInterface_Access is access all org.allbinary.logic.math.vector.MathVectorInterface_Package.MathVectorInterface'Class;
   type MathVectorInterface_Access_Array is array (Natural range <>) of MathVectorInterface_Access;
   type MathVectorInterface_Access_Array_Access is access all MathVectorInterface_Access_Array;
   type MathVectorInterface_Access_Array_Access_Array is array (Natural range <>) of MathVectorInterface_Access_Array_Access;
   type MathVectorInterface_Access_Array_Access_Array_Access is access all MathVectorInterface_Access_Array_Access_Array;
   type MathVectorInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MathVectorInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : MathVectorInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MathVectorInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MathVectorInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MathVectorInterface_Access_Array_Access is (if Value /= null and then Value.all in MathVectorInterface_Access_Array_Object'Class then MathVectorInterface_Access_Array_Object'Class (Value.all).Value else null);
   type MathVectorInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MathVectorInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MathVectorInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MathVectorInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MathVectorInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MathVectorInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MathVectorInterface_Access_Array_Access_Array_Object'Class then MathVectorInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.math.vector.MathVectorInterface_Package_References;

with org.allbinary.logic.math.vector.MathVectorInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;

package org.allbinary.logic.math.vector.MathVectorInterface_Package is

   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
   package Reference_Types is
   subtype BasicDecimal_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access;
   use type BasicDecimal_Access;
   subtype BasicDecimal_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array;
   use type BasicDecimal_Access_Array;
   subtype BasicDecimal_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access;
   use type BasicDecimal_Access_Array_Access;
   subtype BasicDecimal_Access_Array_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array;
   use type BasicDecimal_Access_Array_Access_Array;
   subtype BasicDecimal_Access_Array_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array_Access;
   use type BasicDecimal_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type MathVectorInterface is interface;
   subtype MathVectorInterface_Access is org.allbinary.logic.math.vector.MathVectorInterface_Package_References.MathVectorInterface_Access;
   function "=" (Left, Right : MathVectorInterface_Access) return Boolean renames org.allbinary.logic.math.vector.MathVectorInterface_Package_References."=";
   subtype MathVectorInterface_Access_Array is org.allbinary.logic.math.vector.MathVectorInterface_Package_References.MathVectorInterface_Access_Array;
   function "=" (Left, Right : MathVectorInterface_Access_Array) return Boolean renames org.allbinary.logic.math.vector.MathVectorInterface_Package_References."=";
   subtype MathVectorInterface_Access_Array_Access is org.allbinary.logic.math.vector.MathVectorInterface_Package_References.MathVectorInterface_Access_Array_Access;
   function "=" (Left, Right : MathVectorInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.math.vector.MathVectorInterface_Package_References."=";
   function Java_Box (Value : MathVectorInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.vector.MathVectorInterface_Package_References.Java_Box;
   function Java_Unbox_MathVectorInterface_Access_Array (Value : access Java_Object'Class) return MathVectorInterface_Access_Array_Access renames org.allbinary.logic.math.vector.MathVectorInterface_Package_References.Java_Unbox_MathVectorInterface_Access_Array;
   subtype MathVectorInterface_Access_Array_Access_Array is org.allbinary.logic.math.vector.MathVectorInterface_Package_References.MathVectorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MathVectorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.vector.MathVectorInterface_Package_References."=";
   subtype MathVectorInterface_Access_Array_Access_Array_Access is org.allbinary.logic.math.vector.MathVectorInterface_Package_References.MathVectorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MathVectorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.vector.MathVectorInterface_Package_References."=";
   function Java_Box (Value : MathVectorInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.vector.MathVectorInterface_Package_References.Java_Box;
   function Java_Unbox_MathVectorInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return MathVectorInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.math.vector.MathVectorInterface_Package_References.Java_Unbox_MathVectorInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_MathVectorInterface (Value : MathVectorInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getDirection (This : in out MathVectorInterface) return Integer is abstract;
   function getMagnitude (This : in out MathVectorInterface) return BasicDecimal_Access is abstract;
   function getResult (This : in out MathVectorInterface) return BasicDecimal_Access is abstract;

end org.allbinary.logic.math.vector.MathVectorInterface_Package;


