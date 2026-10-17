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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;

package org.allbinary.string_Id.CommonSeps_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;

   type CommonSeps is tagged;
   type CommonSeps_Access is access all CommonSeps'Class;
   type CommonSeps_Access_Array is array (Natural range <>) of CommonSeps_Access;
   type CommonSeps_Access_Array_Access is access all CommonSeps_Access_Array;

   type CommonSeps is new Java_Object with record
      NEW_LINE : Unbounded_String;
      SEMICOLON : Unbounded_String;
      EQUALS : Unbounded_String;
      SPACE : Unbounded_String;
      COMMA : Unbounded_String;
      COLON : Unbounded_String;
      PERIOD : Unbounded_String;
      UNDERSCORE : Unbounded_String;
      COLON_SEP : Unbounded_String;
      COMMA_SEP : Unbounded_String;
      PARENTHESIS_OPEN : Unbounded_String;
      PARENTHESIS_CLOSE : Unbounded_String;
      BRACE_OPEN : Unbounded_String;
      BRACE_CLOSE : Unbounded_String;
      BRACKET_OPEN : Unbounded_String;
      BRACKET_CLOSE : Unbounded_String;
      DASH : Unbounded_String;
      PERCENT : Unbounded_String;
      AMPERSAND : Unbounded_String;
      FORWARD_SLASH : Unbounded_String;
      BACK_SLASH : Unbounded_String;
      QUESTION : Unbounded_String;
      QUOTE : Unbounded_String;
      QUOTE_END : Unbounded_String;
      COMMENT : Unbounded_String;
      INDENT : Unbounded_String;
   end record;
   instance : CommonSeps_Access;

   procedure Initialize (This : in out CommonSeps'Class);
   function Create return CommonSeps_Access;
   function getInstance return CommonSeps_Access;

end org.allbinary.string_Id.CommonSeps_Package;


