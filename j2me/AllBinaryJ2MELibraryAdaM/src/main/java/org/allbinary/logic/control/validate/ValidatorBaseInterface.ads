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

limited with org.allbinary.logic.control.validate.ValidatorBaseInterface_Package;
package org.allbinary.logic.control.validate.ValidatorBaseInterface_Package_References is
   type ValidatorBaseInterface_Access is access all org.allbinary.logic.control.validate.ValidatorBaseInterface_Package.ValidatorBaseInterface'Class;
   type ValidatorBaseInterface_Access_Array is array (Natural range <>) of ValidatorBaseInterface_Access;
   type ValidatorBaseInterface_Access_Array_Access is access all ValidatorBaseInterface_Access_Array;
   type ValidatorBaseInterface_Access_Array_Access_Array is array (Natural range <>) of ValidatorBaseInterface_Access_Array_Access;
   type ValidatorBaseInterface_Access_Array_Access_Array_Access is access all ValidatorBaseInterface_Access_Array_Access_Array;
end org.allbinary.logic.control.validate.ValidatorBaseInterface_Package_References;

with org.allbinary.logic.control.validate.ValidatorBaseInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.logic.control.validate.ValidatorBaseInterface_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ValidatorBaseInterface is interface;
   subtype ValidatorBaseInterface_Access is org.allbinary.logic.control.validate.ValidatorBaseInterface_Package_References.ValidatorBaseInterface_Access;
   function "=" (Left, Right : ValidatorBaseInterface_Access) return Boolean renames org.allbinary.logic.control.validate.ValidatorBaseInterface_Package_References."=";
   subtype ValidatorBaseInterface_Access_Array is org.allbinary.logic.control.validate.ValidatorBaseInterface_Package_References.ValidatorBaseInterface_Access_Array;
   function "=" (Left, Right : ValidatorBaseInterface_Access_Array) return Boolean renames org.allbinary.logic.control.validate.ValidatorBaseInterface_Package_References."=";
   subtype ValidatorBaseInterface_Access_Array_Access is org.allbinary.logic.control.validate.ValidatorBaseInterface_Package_References.ValidatorBaseInterface_Access_Array_Access;
   function "=" (Left, Right : ValidatorBaseInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.control.validate.ValidatorBaseInterface_Package_References."=";
   subtype ValidatorBaseInterface_Access_Array_Access_Array is org.allbinary.logic.control.validate.ValidatorBaseInterface_Package_References.ValidatorBaseInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ValidatorBaseInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.validate.ValidatorBaseInterface_Package_References."=";
   subtype ValidatorBaseInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.validate.ValidatorBaseInterface_Package_References.ValidatorBaseInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ValidatorBaseInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.validate.ValidatorBaseInterface_Package_References."=";
   function Java_Object_Access_From_ValidatorBaseInterface (Value : ValidatorBaseInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function isValid (This : in out ValidatorBaseInterface) return Boolean is abstract;
   function validationInfo (This : in out ValidatorBaseInterface) return Unbounded_String is abstract;
   function toHashtable (This : in out ValidatorBaseInterface) return ABHashtable_Access is abstract;
   function toList (This : in out ValidatorBaseInterface) return BasicArrayList_Access is abstract;

end org.allbinary.logic.control.validate.ValidatorBaseInterface_Package;


