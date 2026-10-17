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
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;

package org.allbinary.string_Id.CommonPhoneStrings_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;

   type CommonPhoneStrings is tagged;
   type CommonPhoneStrings_Access is access all CommonPhoneStrings'Class;
   type CommonPhoneStrings_Access_Array is array (Natural range <>) of CommonPhoneStrings_Access;
   type CommonPhoneStrings_Access_Array_Access is access all CommonPhoneStrings_Access_Array;

   type CommonPhoneStrings is new Java_Object with record
      UP : Unbounded_String;
      DOWN : Unbounded_String;
      LEFT : Unbounded_String;
      RIGHT : Unbounded_String;
      ZERO : Unbounded_String;
      ONE : Unbounded_String;
      TWO : Unbounded_String;
      THREE : Unbounded_String;
      FOUR : Unbounded_String;
      FIVE : Unbounded_String;
      SIX : Unbounded_String;
      SEVEN : Unbounded_String;
      EIGHT : Unbounded_String;
      NINE : Unbounded_String;
      POUND : Unbounded_String;
      STAR : Unbounded_String;
      FIRE : Unbounded_String;
   end record;
   instance : CommonPhoneStrings_Access;

   procedure Initialize (This : in out CommonPhoneStrings'Class);
   function Create return CommonPhoneStrings_Access;
   function getInstance return CommonPhoneStrings_Access;

end org.allbinary.string_Id.CommonPhoneStrings_Package;


