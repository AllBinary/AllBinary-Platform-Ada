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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.form.item.ABTextFieldItem_Package; use org.allbinary.graphics.form.item.ABTextFieldItem_Package;
with org.allbinary.logic.control.validate.ValidatorBase_Package; use org.allbinary.logic.control.validate.ValidatorBase_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package is

   package ABTextFieldItem_Package renames Standard.org.allbinary.graphics.form.item.ABTextFieldItem_Package;
   package ValidatorBase_Package renames Standard.org.allbinary.logic.control.validate.ValidatorBase_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type NumberTextFieldItemValidator is tagged;
   type NumberTextFieldItemValidator_Access is access all NumberTextFieldItemValidator'Class;
   type NumberTextFieldItemValidator_Access_Array is array (Natural range <>) of NumberTextFieldItemValidator_Access;
   type NumberTextFieldItemValidator_Access_Array_Access is access all NumberTextFieldItemValidator_Access_Array;
   type NumberTextFieldItemValidator_Access_Array_Access_Array is array (Natural range <>) of NumberTextFieldItemValidator_Access_Array_Access;
   type NumberTextFieldItemValidator_Access_Array_Access_Array_Access is access all NumberTextFieldItemValidator_Access_Array_Access_Array;

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


