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
with org.allbinary.graphics.form.item.validation.TextFieldItemValidator_Package; use org.allbinary.graphics.form.item.validation.TextFieldItemValidator_Package;

package org.allbinary.graphics.form.item.validation.PasswordValidator_Package is

   package ABTextFieldItem_Package renames org.allbinary.graphics.form.item.ABTextFieldItem_Package;

   type PasswordValidator is tagged;
   type PasswordValidator_Access is access all PasswordValidator'Class;
   type PasswordValidator_Access_Array is array (Natural range <>) of PasswordValidator_Access;
   type PasswordValidator_Access_Array_Access is access all PasswordValidator_Access_Array;

   type PasswordValidator is new TextFieldItemValidator with null record;

   procedure Initialize (This : in out PasswordValidator'Class; textFieldItem : ABTextFieldItem_Access; min : Integer; max : Integer; allowOnEmpty : Boolean);
   function Create (textFieldItem : ABTextFieldItem_Access; min : Integer; max : Integer; allowOnEmpty : Boolean) return PasswordValidator_Access;

end org.allbinary.graphics.form.item.validation.PasswordValidator_Package;


