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
--  with java.util.HashSet_Package; use java.util.HashSet_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.regex.replace.Replace_Package; use org.allbinary.logic.string_Id.regex.replace.Replace_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.string_Id.tokens.Tokenizer_Package; use org.allbinary.logic.string_Id.tokens.Tokenizer_Package;

package org.allbinary.logic.string_Id.tokens.UniqueTokens_Package is

   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package Replace_Package renames Standard.org.allbinary.logic.string_Id.regex.replace.Replace_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type UniqueTokens is tagged;
   type UniqueTokens_Access is access all UniqueTokens'Class;
   type UniqueTokens_Access_Array is array (Natural range <>) of UniqueTokens_Access;
   type UniqueTokens_Access_Array_Access is access all UniqueTokens_Access_Array;

   type UniqueTokens is new Java_Object with record
      specialCharacters : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out UniqueTokens'Class);
   function Create return UniqueTokens_Access;
   function getWhithoutDashesAndSkipNumberOnlyTokens (This : in out UniqueTokens; stringVector : BasicArrayList_Access) return HashSet_Access;
   procedure getWhithoutDashesAndSkipNumberOnlyTokens (This : in out UniqueTokens; stringVector : BasicArrayList_Access);
   function numberOnly (This : in out UniqueTokens; subCleaningString : Unbounded_String) return Boolean;
   procedure numberOnly (This : in out UniqueTokens; subCleaningString : Unbounded_String);
   function isSpecialCharacter (This : in out UniqueTokens; subCleaningString : Unbounded_String) return Boolean;
   procedure isSpecialCharacter (This : in out UniqueTokens; subCleaningString : Unbounded_String);

end org.allbinary.logic.string_Id.tokens.UniqueTokens_Package;


