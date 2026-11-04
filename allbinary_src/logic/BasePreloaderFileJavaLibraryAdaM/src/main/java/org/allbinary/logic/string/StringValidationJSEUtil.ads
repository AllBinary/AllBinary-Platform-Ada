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

limited with org.allbinary.logic.string_Id.StringValidationJSEUtil_Package;
package org.allbinary.logic.string_Id.StringValidationJSEUtil_Package_References is
   type StringValidationJSEUtil_Access is access all org.allbinary.logic.string_Id.StringValidationJSEUtil_Package.StringValidationJSEUtil'Class;
   type StringValidationJSEUtil_Access_Array is array (Natural range <>) of StringValidationJSEUtil_Access;
   type StringValidationJSEUtil_Access_Array_Access is access all StringValidationJSEUtil_Access_Array;
   type StringValidationJSEUtil_Access_Array_Access_Array is array (Natural range <>) of StringValidationJSEUtil_Access_Array_Access;
   type StringValidationJSEUtil_Access_Array_Access_Array_Access is access all StringValidationJSEUtil_Access_Array_Access_Array;
end org.allbinary.logic.string_Id.StringValidationJSEUtil_Package_References;

with org.allbinary.logic.string_Id.StringValidationJSEUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.string_Id.StringValidationJSEUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype StringValidationJSEUtil_Access is org.allbinary.logic.string_Id.StringValidationJSEUtil_Package_References.StringValidationJSEUtil_Access;
   function "=" (Left, Right : StringValidationJSEUtil_Access) return Boolean renames org.allbinary.logic.string_Id.StringValidationJSEUtil_Package_References."=";
   subtype StringValidationJSEUtil_Access_Array is org.allbinary.logic.string_Id.StringValidationJSEUtil_Package_References.StringValidationJSEUtil_Access_Array;
   function "=" (Left, Right : StringValidationJSEUtil_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringValidationJSEUtil_Package_References."=";
   subtype StringValidationJSEUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringValidationJSEUtil_Package_References.StringValidationJSEUtil_Access_Array_Access;
   function "=" (Left, Right : StringValidationJSEUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringValidationJSEUtil_Package_References."=";
   subtype StringValidationJSEUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringValidationJSEUtil_Package_References.StringValidationJSEUtil_Access_Array_Access_Array;
   function "=" (Left, Right : StringValidationJSEUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringValidationJSEUtil_Package_References."=";
   subtype StringValidationJSEUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringValidationJSEUtil_Package_References.StringValidationJSEUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringValidationJSEUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringValidationJSEUtil_Package_References."=";

   type StringValidationJSEUtil is new Java_Object with null record;

   procedure Initialize (This : in out StringValidationJSEUtil'Class);
   function Create return StringValidationJSEUtil_Access;
   function isBlank (string_Id : Unbounded_String) return Boolean;
   procedure isBlank (string_Id : Unbounded_String);

end org.allbinary.logic.string_Id.StringValidationJSEUtil_Package;


