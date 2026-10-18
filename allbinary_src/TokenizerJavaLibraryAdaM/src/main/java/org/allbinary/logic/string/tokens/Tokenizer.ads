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
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.logic.string_Id.tokens.Tokenizer_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type Tokenizer is tagged;
   type Tokenizer_Access is access all Tokenizer'Class;
   type Tokenizer_Access_Array is array (Natural range <>) of Tokenizer_Access;
   type Tokenizer_Access_Array_Access is access all Tokenizer_Access_Array;
   type Tokenizer_Access_Array_Access_Array is array (Natural range <>) of Tokenizer_Access_Array_Access;
   type Tokenizer_Access_Array_Access_Array_Access is access all Tokenizer_Access_Array_Access_Array;

   type Tokenizer is new Java_Object with record
      sep : Unbounded_String;
      endSep : Unbounded_String;
   end record;

   procedure Initialize (This : in out Tokenizer'Class; sep : Unbounded_String);
   function Create (sep : Unbounded_String) return Tokenizer_Access;
   procedure setSep (This : in out Tokenizer; sep : Unbounded_String);
   procedure setEndSep (This : in out Tokenizer; endSep : Unbounded_String);
   function getInsideSep (This : in out Tokenizer; string_Id : Unbounded_String) return BasicArrayList_Access;
   procedure getInsideSep (This : in out Tokenizer; string_Id : Unbounded_String);
   function getTokensFromString (This : in out Tokenizer; string_Id : Unbounded_String; tokenVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access;
   procedure getTokensFromString (This : in out Tokenizer; string_Id : Unbounded_String; tokenVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getTokens (This : in out Tokenizer; stringVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return ABHashtable_Access;
   procedure getTokens (This : in out Tokenizer; stringVector_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.logic.string_Id.tokens.Tokenizer_Package;


