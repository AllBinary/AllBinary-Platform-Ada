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

limited with org.allbinary.graphics.form.FormTypeFactory_Package;
package org.allbinary.graphics.form.FormTypeFactory_Package_References is
   type FormTypeFactory_Access is access all org.allbinary.graphics.form.FormTypeFactory_Package.FormTypeFactory'Class;
   type FormTypeFactory_Access_Array is array (Natural range <>) of FormTypeFactory_Access;
   type FormTypeFactory_Access_Array_Access is access all FormTypeFactory_Access_Array;
   type FormTypeFactory_Access_Array_Access_Array is array (Natural range <>) of FormTypeFactory_Access_Array_Access;
   type FormTypeFactory_Access_Array_Access_Array_Access is access all FormTypeFactory_Access_Array_Access_Array;
end org.allbinary.graphics.form.FormTypeFactory_Package_References;

with org.allbinary.graphics.form.FormTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.form.FormType_Package;
with org.allbinary.graphics.form.FormType_Package_References;

package org.allbinary.graphics.form.FormTypeFactory_Package is

   package Reference_Types is
   subtype FormType_Access is org.allbinary.graphics.form.FormType_Package_References.FormType_Access;
   use type FormType_Access;
   subtype FormType_Access_Array is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array;
   use type FormType_Access_Array;
   subtype FormType_Access_Array_Access is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array_Access;
   use type FormType_Access_Array_Access;
   subtype FormType_Access_Array_Access_Array is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array_Access_Array;
   use type FormType_Access_Array_Access_Array;
   subtype FormType_Access_Array_Access_Array_Access is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array_Access_Array_Access;
   use type FormType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FormTypeFactory_Access is org.allbinary.graphics.form.FormTypeFactory_Package_References.FormTypeFactory_Access;
   function "=" (Left, Right : FormTypeFactory_Access) return Boolean renames org.allbinary.graphics.form.FormTypeFactory_Package_References."=";
   subtype FormTypeFactory_Access_Array is org.allbinary.graphics.form.FormTypeFactory_Package_References.FormTypeFactory_Access_Array;
   function "=" (Left, Right : FormTypeFactory_Access_Array) return Boolean renames org.allbinary.graphics.form.FormTypeFactory_Package_References."=";
   subtype FormTypeFactory_Access_Array_Access is org.allbinary.graphics.form.FormTypeFactory_Package_References.FormTypeFactory_Access_Array_Access;
   function "=" (Left, Right : FormTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.FormTypeFactory_Package_References."=";
   subtype FormTypeFactory_Access_Array_Access_Array is org.allbinary.graphics.form.FormTypeFactory_Package_References.FormTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : FormTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.FormTypeFactory_Package_References."=";
   subtype FormTypeFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.form.FormTypeFactory_Package_References.FormTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FormTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.FormTypeFactory_Package_References."=";

   type FormTypeFactory is new Java_Object with record
      UNK : Unbounded_String;
      NULL_FORM_TYPE : FormType_Access;
      TEMP_HORIZONTAL_FORM : FormType_Access;
      HORIZONTAL_FORM : FormType_Access;
      VERTICAL_CENTER_FORM : FormType_Access;
   end record;
   instance : FormTypeFactory_Access;

   procedure Initialize (This : in out FormTypeFactory'Class);
   function Create return FormTypeFactory_Access;
   function getInstance return FormTypeFactory_Access;
   function getFormType (This : in out FormTypeFactory) return FormType_Access;

end org.allbinary.graphics.form.FormTypeFactory_Package;


