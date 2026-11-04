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

limited with org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
package org.allbinary.logic.string_Id.tokens.Tokenizer_Package_References is
   type Tokenizer_Access is access all org.allbinary.logic.string_Id.tokens.Tokenizer_Package.Tokenizer'Class;
   type Tokenizer_Access_Array is array (Natural range <>) of Tokenizer_Access;
   type Tokenizer_Access_Array_Access is access all Tokenizer_Access_Array;
   type Tokenizer_Access_Array_Access_Array is array (Natural range <>) of Tokenizer_Access_Array_Access;
   type Tokenizer_Access_Array_Access_Array_Access is access all Tokenizer_Access_Array_Access_Array;
end org.allbinary.logic.string_Id.tokens.Tokenizer_Package_References;

with org.allbinary.logic.string_Id.tokens.Tokenizer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.logic.string_Id.tokens.Tokenizer_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
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


   subtype Tokenizer_Access is org.allbinary.logic.string_Id.tokens.Tokenizer_Package_References.Tokenizer_Access;
   function "=" (Left, Right : Tokenizer_Access) return Boolean renames org.allbinary.logic.string_Id.tokens.Tokenizer_Package_References."=";
   subtype Tokenizer_Access_Array is org.allbinary.logic.string_Id.tokens.Tokenizer_Package_References.Tokenizer_Access_Array;
   function "=" (Left, Right : Tokenizer_Access_Array) return Boolean renames org.allbinary.logic.string_Id.tokens.Tokenizer_Package_References."=";
   subtype Tokenizer_Access_Array_Access is org.allbinary.logic.string_Id.tokens.Tokenizer_Package_References.Tokenizer_Access_Array_Access;
   function "=" (Left, Right : Tokenizer_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.tokens.Tokenizer_Package_References."=";
   subtype Tokenizer_Access_Array_Access_Array is org.allbinary.logic.string_Id.tokens.Tokenizer_Package_References.Tokenizer_Access_Array_Access_Array;
   function "=" (Left, Right : Tokenizer_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.tokens.Tokenizer_Package_References."=";
   subtype Tokenizer_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.tokens.Tokenizer_Package_References.Tokenizer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Tokenizer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.tokens.Tokenizer_Package_References."=";

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


