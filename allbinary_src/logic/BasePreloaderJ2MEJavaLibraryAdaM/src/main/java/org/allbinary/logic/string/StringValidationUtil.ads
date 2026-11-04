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

limited with org.allbinary.logic.string_Id.StringValidationUtil_Package;
package org.allbinary.logic.string_Id.StringValidationUtil_Package_References is
   type StringValidationUtil_Access is access all org.allbinary.logic.string_Id.StringValidationUtil_Package.StringValidationUtil'Class;
   type StringValidationUtil_Access_Array is array (Natural range <>) of StringValidationUtil_Access;
   type StringValidationUtil_Access_Array_Access is access all StringValidationUtil_Access_Array;
   type StringValidationUtil_Access_Array_Access_Array is array (Natural range <>) of StringValidationUtil_Access_Array_Access;
   type StringValidationUtil_Access_Array_Access_Array_Access is access all StringValidationUtil_Access_Array_Access_Array;
end org.allbinary.logic.string_Id.StringValidationUtil_Package_References;

with org.allbinary.logic.string_Id.StringValidationUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
limited with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;

package org.allbinary.logic.string_Id.StringValidationUtil_Package is

   package Reference_Types is
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   use type StringUtil_Access;
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   use type StringUtil_Access_Array;
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   use type StringUtil_Access_Array_Access;
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   use type StringUtil_Access_Array_Access_Array;
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   use type StringUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StringValidationUtil_Access is org.allbinary.logic.string_Id.StringValidationUtil_Package_References.StringValidationUtil_Access;
   function "=" (Left, Right : StringValidationUtil_Access) return Boolean renames org.allbinary.logic.string_Id.StringValidationUtil_Package_References."=";
   subtype StringValidationUtil_Access_Array is org.allbinary.logic.string_Id.StringValidationUtil_Package_References.StringValidationUtil_Access_Array;
   function "=" (Left, Right : StringValidationUtil_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringValidationUtil_Package_References."=";
   subtype StringValidationUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringValidationUtil_Package_References.StringValidationUtil_Access_Array_Access;
   function "=" (Left, Right : StringValidationUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringValidationUtil_Package_References."=";
   subtype StringValidationUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringValidationUtil_Package_References.StringValidationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : StringValidationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringValidationUtil_Package_References."=";
   subtype StringValidationUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringValidationUtil_Package_References.StringValidationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringValidationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringValidationUtil_Package_References."=";

   type StringValidationUtil is new Java_Object with record
      stringUtil : StringUtil_Access;
   end record;
   instance : StringValidationUtil_Access;

   procedure Initialize (This : in out StringValidationUtil'Class);
   function Create return StringValidationUtil_Access;
   function getInstance return StringValidationUtil_Access;
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


