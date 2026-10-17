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

package org.allbinary.graphics.form.item.validation.UsernameValidator_Package is

   package ABTextFieldItem_Package renames Standard.org.allbinary.graphics.form.item.ABTextFieldItem_Package;

   type UsernameValidator is tagged;
   type UsernameValidator_Access is access all UsernameValidator'Class;
   type UsernameValidator_Access_Array is array (Natural range <>) of UsernameValidator_Access;
   type UsernameValidator_Access_Array_Access is access all UsernameValidator_Access_Array;

   type UsernameValidator is new TextFieldItemValidator with null record;

   procedure Initialize (This : in out UsernameValidator'Class; textFieldItem : ABTextFieldItem_Access; min : Integer; max : Integer; allowOnEmpty : Boolean);
   function Create (textFieldItem : ABTextFieldItem_Access; min : Integer; max : Integer; allowOnEmpty : Boolean) return UsernameValidator_Access;

end org.allbinary.graphics.form.item.validation.UsernameValidator_Package;


