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

with AllBinary_Java;
limited with org.allbinary.logic.io.file.CommonDataFileStrings_Package;
package org.allbinary.logic.io.file.CommonDataFileStrings_Package_References is
   type CommonDataFileStrings_Access is access all org.allbinary.logic.io.file.CommonDataFileStrings_Package.CommonDataFileStrings'Class;
   type CommonDataFileStrings_Access_Array is array (Natural range <>) of CommonDataFileStrings_Access;
   type CommonDataFileStrings_Access_Array_Access is access all CommonDataFileStrings_Access_Array;
   type CommonDataFileStrings_Access_Array_Access_Array is array (Natural range <>) of CommonDataFileStrings_Access_Array_Access;
   type CommonDataFileStrings_Access_Array_Access_Array_Access is access all CommonDataFileStrings_Access_Array_Access_Array;
   type CommonDataFileStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CommonDataFileStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : CommonDataFileStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CommonDataFileStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CommonDataFileStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CommonDataFileStrings_Access_Array_Access is (if Value /= null and then Value.all in CommonDataFileStrings_Access_Array_Object'Class then CommonDataFileStrings_Access_Array_Object'Class (Value.all).Value else null);
   type CommonDataFileStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CommonDataFileStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CommonDataFileStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CommonDataFileStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CommonDataFileStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CommonDataFileStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CommonDataFileStrings_Access_Array_Access_Array_Object'Class then CommonDataFileStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.file.CommonDataFileStrings_Package_References;

with org.allbinary.logic.io.file.CommonDataFileStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.io.file.CommonDataFileStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CommonDataFileStrings_Access is org.allbinary.logic.io.file.CommonDataFileStrings_Package_References.CommonDataFileStrings_Access;
   function "=" (Left, Right : CommonDataFileStrings_Access) return Boolean renames org.allbinary.logic.io.file.CommonDataFileStrings_Package_References."=";
   subtype CommonDataFileStrings_Access_Array is org.allbinary.logic.io.file.CommonDataFileStrings_Package_References.CommonDataFileStrings_Access_Array;
   function "=" (Left, Right : CommonDataFileStrings_Access_Array) return Boolean renames org.allbinary.logic.io.file.CommonDataFileStrings_Package_References."=";
   subtype CommonDataFileStrings_Access_Array_Access is org.allbinary.logic.io.file.CommonDataFileStrings_Package_References.CommonDataFileStrings_Access_Array_Access;
   function "=" (Left, Right : CommonDataFileStrings_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.CommonDataFileStrings_Package_References."=";
   function Java_Box (Value : CommonDataFileStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.CommonDataFileStrings_Package_References.Java_Box;
   function Java_Unbox_CommonDataFileStrings_Access_Array (Value : access Java_Object'Class) return CommonDataFileStrings_Access_Array_Access renames org.allbinary.logic.io.file.CommonDataFileStrings_Package_References.Java_Unbox_CommonDataFileStrings_Access_Array;
   subtype CommonDataFileStrings_Access_Array_Access_Array is org.allbinary.logic.io.file.CommonDataFileStrings_Package_References.CommonDataFileStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonDataFileStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.CommonDataFileStrings_Package_References."=";
   subtype CommonDataFileStrings_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.CommonDataFileStrings_Package_References.CommonDataFileStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonDataFileStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.CommonDataFileStrings_Package_References."=";
   function Java_Box (Value : CommonDataFileStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.CommonDataFileStrings_Package_References.Java_Box;
   function Java_Unbox_CommonDataFileStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return CommonDataFileStrings_Access_Array_Access_Array_Access renames org.allbinary.logic.io.file.CommonDataFileStrings_Package_References.Java_Unbox_CommonDataFileStrings_Access_Array_Access_Array;

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
      ADB : Unbounded_String;
      U_ADB : Unbounded_String;
      ADS : Unbounded_String;
      U_ADS : Unbounded_String;
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
      PM : Unbounded_String;
      U_PM : Unbounded_String;
      KTS : Unbounded_String;
      U_KTS : Unbounded_String;
      CBL : Unbounded_String;
      U_CBL : Unbounded_String;
      COB : Unbounded_String;
      U_COB : Unbounded_String;
      F90 : Unbounded_String;
      U_F90 : Unbounded_String;
      F : Unbounded_String;
      U_F : Unbounded_String;
      DART : Unbounded_String;
      U_DART : Unbounded_String;
      EX : Unbounded_String;
      U_EX : Unbounded_String;
      EXS : Unbounded_String;
      U_EXS : Unbounded_String;
      KOTLIN : Unbounded_String;
      TYPESCRIPT : Unbounded_String;
      JAVASCRIPT : Unbounded_String;
      C_PLUS_PLUS : Unbounded_String;
      PYTHON : Unbounded_String;
      C_SHARP : Unbounded_String;
      RUST_NAME : Unbounded_String;
      RUBY : Unbounded_String;
      PERL : Unbounded_String;
      OBJECT_PASCAL : Unbounded_String;
      OCAML : Unbounded_String;
      HASKELL : Unbounded_String;
      HAXE : Unbounded_String;
      ERLANG : Unbounded_String;
      COBOL : Unbounded_String;
      FORTRAN : Unbounded_String;
      ELIXIR : Unbounded_String;
      CPLUSPLUS : Unbounded_String;
      GOLANG : Unbounded_String;
      CSHARP_ALIAS : Unbounded_String;
      C23 : Unbounded_String;
      PASCAL : Unbounded_String;
      OBJECT_PASCAL_ALIAS : Unbounded_String;
      KT_SHORT_NAME : Unbounded_String;
      TS_SHORT_NAME : Unbounded_String;
      JS_SHORT_NAME : Unbounded_String;
      CPP_SHORT_NAME : Unbounded_String;
      PY_SHORT_NAME : Unbounded_String;
      GO_SHORT_NAME : Unbounded_String;
      CS_SHORT_NAME : Unbounded_String;
      ADA_SHORT_NAME : Unbounded_String;
      RUST_SHORT_NAME : Unbounded_String;
      LUA_SHORT_NAME : Unbounded_String;
      C_SHORT_NAME : Unbounded_String;
      ZIG_SHORT_NAME : Unbounded_String;
      RB_SHORT_NAME : Unbounded_String;
      PL_SHORT_NAME : Unbounded_String;
      PAS_SHORT_NAME : Unbounded_String;
      ML_SHORT_NAME : Unbounded_String;
      HS_SHORT_NAME : Unbounded_String;
      HX_SHORT_NAME : Unbounded_String;
      ERL_SHORT_NAME : Unbounded_String;
      CBL_SHORT_NAME : Unbounded_String;
      F90_SHORT_NAME : Unbounded_String;
      DART_SHORT_NAME : Unbounded_String;
      EX_SHORT_NAME : Unbounded_String;
      UNCRYPTED_EXTENSION : Unbounded_String;
      ENCRYPTED_EXTENSION : Unbounded_String;
   end record;
   instance : CommonDataFileStrings_Access;

   procedure Initialize (This : in out CommonDataFileStrings'Class);
   function Create return CommonDataFileStrings_Access;
   function getInstance return CommonDataFileStrings_Access;

end org.allbinary.logic.io.file.CommonDataFileStrings_Package;


