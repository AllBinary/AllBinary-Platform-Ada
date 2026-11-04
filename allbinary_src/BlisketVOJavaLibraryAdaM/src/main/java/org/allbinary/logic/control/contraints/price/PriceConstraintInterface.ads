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

limited with org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package;
package org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References is
   type PriceConstraintInterface_Access is access all org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package.PriceConstraintInterface'Class;
   type PriceConstraintInterface_Access_Array is array (Natural range <>) of PriceConstraintInterface_Access;
   type PriceConstraintInterface_Access_Array_Access is access all PriceConstraintInterface_Access_Array;
   type PriceConstraintInterface_Access_Array_Access_Array is array (Natural range <>) of PriceConstraintInterface_Access_Array_Access;
   type PriceConstraintInterface_Access_Array_Access_Array_Access is access all PriceConstraintInterface_Access_Array_Access_Array;
end org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References;

with org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package; use org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package;

package org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package is

   package MinMaxDoubleConstraintInterface_Package renames Standard.org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type PriceConstraintInterface is interface and MinMaxDoubleConstraintInterface;
   subtype PriceConstraintInterface_Access is org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References.PriceConstraintInterface_Access;
   function "=" (Left, Right : PriceConstraintInterface_Access) return Boolean renames org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References."=";
   subtype PriceConstraintInterface_Access_Array is org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References.PriceConstraintInterface_Access_Array;
   function "=" (Left, Right : PriceConstraintInterface_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References."=";
   subtype PriceConstraintInterface_Access_Array_Access is org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References.PriceConstraintInterface_Access_Array_Access;
   function "=" (Left, Right : PriceConstraintInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References."=";
   subtype PriceConstraintInterface_Access_Array_Access_Array is org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References.PriceConstraintInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PriceConstraintInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References."=";
   subtype PriceConstraintInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References.PriceConstraintInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PriceConstraintInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package_References."=";
   function Java_Object_Access_From_PriceConstraintInterface (Value : PriceConstraintInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package;


