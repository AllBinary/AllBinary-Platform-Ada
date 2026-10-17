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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.string_Id.tokens.Tokenizer_Package; use org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.data.CamelCaseUtil_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package Tokenizer_Package renames Standard.org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type CamelCaseUtil is tagged;
   type CamelCaseUtil_Access is access all CamelCaseUtil'Class;
   type CamelCaseUtil_Access_Array is array (Natural range <>) of CamelCaseUtil_Access;
   type CamelCaseUtil_Access_Array_Access is access all CamelCaseUtil_Access_Array;

   type CamelCaseUtil is new Java_Object with record
      commonSeps : CommonSeps_Access;
   end record;
   instance : CamelCaseUtil_Access;

   procedure Initialize (This : in out CamelCaseUtil'Class);
   function Create return CamelCaseUtil_Access;
   function getInstance return CamelCaseUtil_Access;
   function getAsCamelCase (This : in out CamelCaseUtil; string_Id : Unbounded_String; stringBuilder : StringMaker_Access) return Unbounded_String;
   procedure getAsCamelCase (This : in out CamelCaseUtil; string_Id : Unbounded_String; stringBuilder : StringMaker_Access);

end org.allbinary.data.CamelCaseUtil_Package;


