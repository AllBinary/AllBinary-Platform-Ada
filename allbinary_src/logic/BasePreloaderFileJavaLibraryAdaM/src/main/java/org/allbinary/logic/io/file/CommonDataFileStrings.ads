-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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

package org.allbinary.logic.io.file.CommonDataFileStrings_Package is


   type CommonDataFileStrings is tagged;
   type CommonDataFileStrings_Access is access all CommonDataFileStrings'Class;
   type CommonDataFileStrings_Access_Array is array (Natural range <>) of CommonDataFileStrings_Access;
   type CommonDataFileStrings_Access_Array_Access is access all CommonDataFileStrings_Access_Array;

   type CommonDataFileStrings is new Java_Object with record
      XML : Unbounded_String;
      U_XML : Unbounded_String;
      JSON : Unbounded_String;
      U_JSON : Unbounded_String;
      XSL : Unbounded_String;
      U_XSL : Unbounded_String;
      JAVA : Unbounded_String;
      U_JAVA : Unbounded_String;
      KT : Unbounded_String;
      U_KT : Unbounded_String;
      TS : Unbounded_String;
      U_TS : Unbounded_String;
      JS : Unbounded_String;
      U_JS : Unbounded_String;
      CPP : Unbounded_String;
      U_CPP : Unbounded_String;
      H : Unbounded_String;
      U_H : Unbounded_String;
      PY : Unbounded_String;
      U_PY : Unbounded_String;
      GO : Unbounded_String;
      U_GO : Unbounded_String;
      CS : Unbounded_String;
      U_CS : Unbounded_String;
      ADA : Unbounded_String;
      U_ADA : Unbounded_String;
      RUST : Unbounded_String;
      U_RUST : Unbounded_String;
      C : Unbounded_String;
      U_C : Unbounded_String;
      CSHARP : Unbounded_String;
      U_CSHARP : Unbounded_String;
      ERL : Unbounded_String;
      U_ERL : Unbounded_String;
      HS : Unbounded_String;
      U_HS : Unbounded_String;
      HX : Unbounded_String;
      U_HX : Unbounded_String;
      LUA : Unbounded_String;
      U_LUA : Unbounded_String;
      PAS : Unbounded_String;
      U_PAS : Unbounded_String;
      ML : Unbounded_String;
      U_ML : Unbounded_String;
      PL : Unbounded_String;
      U_PL : Unbounded_String;
      RB : Unbounded_String;
      U_RB : Unbounded_String;
      ZIG : Unbounded_String;
      U_ZIG : Unbounded_String;
      UNCRYPTED_EXTENSION : Unbounded_String;
      ENCRYPTED_EXTENSION : Unbounded_String;
   end record;
   instance : CommonDataFileStrings_Access;

   procedure Initialize (This : in out CommonDataFileStrings'Class);
   function Create return CommonDataFileStrings_Access;
   function getInstance return CommonDataFileStrings_Access;

end org.allbinary.logic.io.file.CommonDataFileStrings_Package;


