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
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;

package org.allbinary.logic.string_Id.StringValidationUtil_Package is

   package TsUtil_Package renames org.allbinary.TsUtil_Package;

   type StringValidationUtil is tagged;
   type StringValidationUtil_Access is access all StringValidationUtil'Class;
   type StringValidationUtil_Access_Array is array (Natural range <>) of StringValidationUtil_Access;
   type StringValidationUtil_Access_Array_Access is access all StringValidationUtil_Access_Array;

   type StringValidationUtil is new Java_Object with record
      stringUtil : StringUtil_Access;
      tsUtil : TsUtil_Access;
   end record;
   instance : StringValidationUtil_Access;

   procedure Initialize (This : in out StringValidationUtil'Class);
   function Create return StringValidationUtil_Access;
   function getInstance return StringValidationUtil_Access;
   procedure getInstance;
   function containsSpaces (This : in out StringValidationUtil; value : Unbounded_String) return Boolean;
   procedure containsSpaces (This : in out StringValidationUtil; value : Unbounded_String);
   function isNumber (This : in out StringValidationUtil; value : Unbounded_String) return Boolean;
   procedure isNumber (This : in out StringValidationUtil; value : Unbounded_String);
   function isNumberFromChar (This : in out StringValidationUtil; digit : Character) return Boolean;
   procedure isNumberFromChar (This : in out StringValidationUtil; digit : Character);
   function isValidRequired (This : in out StringValidationUtil; value : Unbounded_String; min : Integer; max : Integer) return Boolean;
   procedure isValidRequired (This : in out StringValidationUtil; value : Unbounded_String; min : Integer; max : Integer);
   function isValidRequiredNumber (This : in out StringValidationUtil; value : Unbounded_String; min : Integer; max : Integer) return Boolean;
   procedure isValidRequiredNumber (This : in out StringValidationUtil; value : Unbounded_String; min : Integer; max : Integer);
   function isValidNotRequired (This : in out StringValidationUtil; value : Unbounded_String; min : Integer; max : Integer) return Boolean;
   procedure isValidNotRequired (This : in out StringValidationUtil; value : Unbounded_String; min : Integer; max : Integer);
   function isValidNotRequiredNumber (This : in out StringValidationUtil; value : Unbounded_String; min : Integer; max : Integer) return Boolean;
   procedure isValidNotRequiredNumber (This : in out StringValidationUtil; value : Unbounded_String; min : Integer; max : Integer);
   function isEmpty (This : in out StringValidationUtil; string_Id : Unbounded_String) return Boolean;
   procedure isEmpty (This : in out StringValidationUtil; string_Id : Unbounded_String);

end org.allbinary.logic.string_Id.StringValidationUtil_Package;


