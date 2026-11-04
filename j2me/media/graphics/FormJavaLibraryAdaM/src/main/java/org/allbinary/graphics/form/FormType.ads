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

limited with org.allbinary.graphics.form.FormType_Package;
package org.allbinary.graphics.form.FormType_Package_References is
   type FormType_Access is access all org.allbinary.graphics.form.FormType_Package.FormType'Class;
   type FormType_Access_Array is array (Natural range <>) of FormType_Access;
   type FormType_Access_Array_Access is access all FormType_Access_Array;
   type FormType_Access_Array_Access_Array is array (Natural range <>) of FormType_Access_Array_Access;
   type FormType_Access_Array_Access_Array_Access is access all FormType_Access_Array_Access_Array;
end org.allbinary.graphics.form.FormType_Package_References;

with org.allbinary.graphics.form.FormType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.form.FormType_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype FormType_Access is org.allbinary.graphics.form.FormType_Package_References.FormType_Access;
   function "=" (Left, Right : FormType_Access) return Boolean renames org.allbinary.graphics.form.FormType_Package_References."=";
   subtype FormType_Access_Array is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array;
   function "=" (Left, Right : FormType_Access_Array) return Boolean renames org.allbinary.graphics.form.FormType_Package_References."=";
   subtype FormType_Access_Array_Access is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array_Access;
   function "=" (Left, Right : FormType_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.FormType_Package_References."=";
   subtype FormType_Access_Array_Access_Array is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array_Access_Array;
   function "=" (Left, Right : FormType_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.FormType_Package_References."=";
   subtype FormType_Access_Array_Access_Array_Access is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FormType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.FormType_Package_References."=";

   type FormType is new Java_Object with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out FormType'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return FormType_Access;
   function toString (This : in out FormType) return Unbounded_String;

end org.allbinary.graphics.form.FormType_Package;


