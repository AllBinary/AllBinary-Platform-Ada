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

limited with org.allbinary.logic.control.validate.ValidatorBase_Package;
package org.allbinary.logic.control.validate.ValidatorBase_Package_References is
   type ValidatorBase_Access is access all org.allbinary.logic.control.validate.ValidatorBase_Package.ValidatorBase'Class;
   type ValidatorBase_Access_Array is array (Natural range <>) of ValidatorBase_Access;
   type ValidatorBase_Access_Array_Access is access all ValidatorBase_Access_Array;
   type ValidatorBase_Access_Array_Access_Array is array (Natural range <>) of ValidatorBase_Access_Array_Access;
   type ValidatorBase_Access_Array_Access_Array_Access is access all ValidatorBase_Access_Array_Access_Array;
end org.allbinary.logic.control.validate.ValidatorBase_Package_References;

with org.allbinary.logic.control.validate.ValidatorBase_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.logic.control.validate.ValidatorBaseInterface_Package; use org.allbinary.logic.control.validate.ValidatorBaseInterface_Package;

package org.allbinary.logic.control.validate.ValidatorBase_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype ValidatorBase_Access is org.allbinary.logic.control.validate.ValidatorBase_Package_References.ValidatorBase_Access;
   function "=" (Left, Right : ValidatorBase_Access) return Boolean renames org.allbinary.logic.control.validate.ValidatorBase_Package_References."=";
   subtype ValidatorBase_Access_Array is org.allbinary.logic.control.validate.ValidatorBase_Package_References.ValidatorBase_Access_Array;
   function "=" (Left, Right : ValidatorBase_Access_Array) return Boolean renames org.allbinary.logic.control.validate.ValidatorBase_Package_References."=";
   subtype ValidatorBase_Access_Array_Access is org.allbinary.logic.control.validate.ValidatorBase_Package_References.ValidatorBase_Access_Array_Access;
   function "=" (Left, Right : ValidatorBase_Access_Array_Access) return Boolean renames org.allbinary.logic.control.validate.ValidatorBase_Package_References."=";
   subtype ValidatorBase_Access_Array_Access_Array is org.allbinary.logic.control.validate.ValidatorBase_Package_References.ValidatorBase_Access_Array_Access_Array;
   function "=" (Left, Right : ValidatorBase_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.validate.ValidatorBase_Package_References."=";
   subtype ValidatorBase_Access_Array_Access_Array_Access is org.allbinary.logic.control.validate.ValidatorBase_Package_References.ValidatorBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ValidatorBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.validate.ValidatorBase_Package_References."=";

   type ValidatorBase is new Java_Object and ValidatorBaseInterface with null record;
   instance : ValidatorBase_Access;

   procedure Initialize (This : in out ValidatorBase'Class);
   function Create return ValidatorBase_Access;
   function getInstance return ValidatorBase_Access;
   function isValid (This : in out ValidatorBase) return Boolean;
   function validationInfo (This : in out ValidatorBase) return Unbounded_String;
   function toHashtable (This : in out ValidatorBase) return ABHashtable_Access;
   function toList (This : in out ValidatorBase) return BasicArrayList_Access;

end org.allbinary.logic.control.validate.ValidatorBase_Package;


