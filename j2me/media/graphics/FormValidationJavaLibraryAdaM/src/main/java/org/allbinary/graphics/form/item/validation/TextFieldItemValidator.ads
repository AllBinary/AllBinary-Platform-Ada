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
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.graphics.form.item.validation.TextFieldItemValidator_Package is

   package ABTextFieldItem_Package renames Standard.org.allbinary.graphics.form.item.ABTextFieldItem_Package;
   package ValidatorBase_Package renames Standard.org.allbinary.logic.control.validate.ValidatorBase_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type TextFieldItemValidator is tagged;
   type TextFieldItemValidator_Access is access all TextFieldItemValidator'Class;
   type TextFieldItemValidator_Access_Array is array (Natural range <>) of TextFieldItemValidator_Access;
   type TextFieldItemValidator_Access_Array_Access is access all TextFieldItemValidator_Access_Array;

   type TextFieldItemValidator is new ValidatorBase with record
      textFieldItem : ABTextFieldItem_Access;
      min : Integer;
      max : Integer;
      allowOnEmpty : Boolean;
   end record;

   procedure Initialize (This : in out TextFieldItemValidator'Class; textFieldItem : ABTextFieldItem_Access; min : Integer; max : Integer; allowOnEmpty : Boolean);
   function Create (textFieldItem : ABTextFieldItem_Access; min : Integer; max : Integer; allowOnEmpty : Boolean) return TextFieldItemValidator_Access;
   function isValid (This : in out TextFieldItemValidator) return Boolean;
   procedure isValid (This : in out TextFieldItemValidator);
   function toList (This : in out TextFieldItemValidator) return BasicArrayList_Access;
   procedure toList (This : in out TextFieldItemValidator);

end org.allbinary.graphics.form.item.validation.TextFieldItemValidator_Package;


