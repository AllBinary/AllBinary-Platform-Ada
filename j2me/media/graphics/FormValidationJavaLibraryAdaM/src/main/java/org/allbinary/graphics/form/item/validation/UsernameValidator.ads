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

limited with org.allbinary.graphics.form.item.validation.UsernameValidator_Package;
package org.allbinary.graphics.form.item.validation.UsernameValidator_Package_References is
   type UsernameValidator_Access is access all org.allbinary.graphics.form.item.validation.UsernameValidator_Package.UsernameValidator'Class;
   type UsernameValidator_Access_Array is array (Natural range <>) of UsernameValidator_Access;
   type UsernameValidator_Access_Array_Access is access all UsernameValidator_Access_Array;
   type UsernameValidator_Access_Array_Access_Array is array (Natural range <>) of UsernameValidator_Access_Array_Access;
   type UsernameValidator_Access_Array_Access_Array_Access is access all UsernameValidator_Access_Array_Access_Array;
end org.allbinary.graphics.form.item.validation.UsernameValidator_Package_References;

with org.allbinary.graphics.form.item.validation.UsernameValidator_Package_References;
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
with org.allbinary.graphics.form.item.validation.TextFieldItemValidator_Package; use org.allbinary.graphics.form.item.validation.TextFieldItemValidator_Package;

package org.allbinary.graphics.form.item.validation.UsernameValidator_Package is

   package ABTextFieldItem_Package renames Standard.org.allbinary.graphics.form.item.ABTextFieldItem_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype UsernameValidator_Access is org.allbinary.graphics.form.item.validation.UsernameValidator_Package_References.UsernameValidator_Access;
   function "=" (Left, Right : UsernameValidator_Access) return Boolean renames org.allbinary.graphics.form.item.validation.UsernameValidator_Package_References."=";
   subtype UsernameValidator_Access_Array is org.allbinary.graphics.form.item.validation.UsernameValidator_Package_References.UsernameValidator_Access_Array;
   function "=" (Left, Right : UsernameValidator_Access_Array) return Boolean renames org.allbinary.graphics.form.item.validation.UsernameValidator_Package_References."=";
   subtype UsernameValidator_Access_Array_Access is org.allbinary.graphics.form.item.validation.UsernameValidator_Package_References.UsernameValidator_Access_Array_Access;
   function "=" (Left, Right : UsernameValidator_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.validation.UsernameValidator_Package_References."=";
   subtype UsernameValidator_Access_Array_Access_Array is org.allbinary.graphics.form.item.validation.UsernameValidator_Package_References.UsernameValidator_Access_Array_Access_Array;
   function "=" (Left, Right : UsernameValidator_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.validation.UsernameValidator_Package_References."=";
   subtype UsernameValidator_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.validation.UsernameValidator_Package_References.UsernameValidator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UsernameValidator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.validation.UsernameValidator_Package_References."=";

   type UsernameValidator is new TextFieldItemValidator with null record;

   procedure Initialize (This : in out UsernameValidator'Class; textFieldItem_Param : access ABTextFieldItem_Package.ABTextFieldItem'Class; min : Integer; max : Integer; allowOnEmpty : Boolean);
   function Create (textFieldItem_Param : access ABTextFieldItem_Package.ABTextFieldItem'Class; min : Integer; max : Integer; allowOnEmpty : Boolean) return UsernameValidator_Access;

end org.allbinary.graphics.form.item.validation.UsernameValidator_Package;


