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
limited with org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package;
package org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package_References is
   type NumberTextFieldItemValidator_Access is access all org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package.NumberTextFieldItemValidator'Class;
   type NumberTextFieldItemValidator_Access_Array is array (Natural range <>) of NumberTextFieldItemValidator_Access;
   type NumberTextFieldItemValidator_Access_Array_Access is access all NumberTextFieldItemValidator_Access_Array;
   type NumberTextFieldItemValidator_Access_Array_Access_Array is array (Natural range <>) of NumberTextFieldItemValidator_Access_Array_Access;
   type NumberTextFieldItemValidator_Access_Array_Access_Array_Access is access all NumberTextFieldItemValidator_Access_Array_Access_Array;
   type NumberTextFieldItemValidator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NumberTextFieldItemValidator_Access_Array_Access;
   end record;
   function Java_Box (Value : NumberTextFieldItemValidator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NumberTextFieldItemValidator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NumberTextFieldItemValidator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NumberTextFieldItemValidator_Access_Array_Access is (if Value /= null and then Value.all in NumberTextFieldItemValidator_Access_Array_Object'Class then NumberTextFieldItemValidator_Access_Array_Object'Class (Value.all).Value else null);
   type NumberTextFieldItemValidator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NumberTextFieldItemValidator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NumberTextFieldItemValidator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NumberTextFieldItemValidator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NumberTextFieldItemValidator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NumberTextFieldItemValidator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NumberTextFieldItemValidator_Access_Array_Access_Array_Object'Class then NumberTextFieldItemValidator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package_References;

with org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.form.item.ABTextFieldItem_Package;
with org.allbinary.graphics.form.item.ABTextFieldItem_Package_References;
with org.allbinary.logic.control.validate.ValidatorBase_Package; use org.allbinary.logic.control.validate.ValidatorBase_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package is

   package ABTextFieldItem_Package renames Standard.org.allbinary.graphics.form.item.ABTextFieldItem_Package;
   package ValidatorBase_Package renames Standard.org.allbinary.logic.control.validate.ValidatorBase_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype ABTextFieldItem_Access is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access;
   use type ABTextFieldItem_Access;
   subtype ABTextFieldItem_Access_Array is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array;
   use type ABTextFieldItem_Access_Array;
   subtype ABTextFieldItem_Access_Array_Access is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array_Access;
   use type ABTextFieldItem_Access_Array_Access;
   subtype ABTextFieldItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array_Access_Array;
   use type ABTextFieldItem_Access_Array_Access_Array;
   subtype ABTextFieldItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array_Access_Array_Access;
   use type ABTextFieldItem_Access_Array_Access_Array_Access;
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


   subtype NumberTextFieldItemValidator_Access is org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package_References.NumberTextFieldItemValidator_Access;
   function "=" (Left, Right : NumberTextFieldItemValidator_Access) return Boolean renames org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package_References."=";
   subtype NumberTextFieldItemValidator_Access_Array is org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package_References.NumberTextFieldItemValidator_Access_Array;
   function "=" (Left, Right : NumberTextFieldItemValidator_Access_Array) return Boolean renames org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package_References."=";
   subtype NumberTextFieldItemValidator_Access_Array_Access is org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package_References.NumberTextFieldItemValidator_Access_Array_Access;
   function "=" (Left, Right : NumberTextFieldItemValidator_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package_References."=";
   function Java_Box (Value : NumberTextFieldItemValidator_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package_References.Java_Box;
   function Java_Unbox_NumberTextFieldItemValidator_Access_Array (Value : access Java_Object'Class) return NumberTextFieldItemValidator_Access_Array_Access renames org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package_References.Java_Unbox_NumberTextFieldItemValidator_Access_Array;
   subtype NumberTextFieldItemValidator_Access_Array_Access_Array is org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package_References.NumberTextFieldItemValidator_Access_Array_Access_Array;
   function "=" (Left, Right : NumberTextFieldItemValidator_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package_References."=";
   subtype NumberTextFieldItemValidator_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package_References.NumberTextFieldItemValidator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NumberTextFieldItemValidator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package_References."=";
   function Java_Box (Value : NumberTextFieldItemValidator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package_References.Java_Box;
   function Java_Unbox_NumberTextFieldItemValidator_Access_Array_Access_Array (Value : access Java_Object'Class) return NumberTextFieldItemValidator_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package_References.Java_Unbox_NumberTextFieldItemValidator_Access_Array_Access_Array;

   type NumberTextFieldItemValidator is new ValidatorBase with record
      textFieldItem : ABTextFieldItem_Access;
      min : Integer;
      max : Integer;
      maxChars : Integer;
   end record;

   procedure Initialize (This : in out NumberTextFieldItemValidator'Class; textFieldItem_Param : access ABTextFieldItem_Package.ABTextFieldItem'Class; maxChars : Integer; min : Integer; max : Integer);
   function Create (textFieldItem_Param : access ABTextFieldItem_Package.ABTextFieldItem'Class; maxChars : Integer; min : Integer; max : Integer) return NumberTextFieldItemValidator_Access;
   function isNumberValid (This : in out NumberTextFieldItemValidator; value : Integer) return Boolean;
   procedure isNumberValid (This : in out NumberTextFieldItemValidator; value : Integer);
   function toNumberVector (This : in out NumberTextFieldItemValidator; value : Integer) return BasicArrayList_Access;
   procedure toNumberVector (This : in out NumberTextFieldItemValidator; value : Integer);
   function isValid (This : in out NumberTextFieldItemValidator) return Boolean;
   function toList (This : in out NumberTextFieldItemValidator) return BasicArrayList_Access;

end org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package;


