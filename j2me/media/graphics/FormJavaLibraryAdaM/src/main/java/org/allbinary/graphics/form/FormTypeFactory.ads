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
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.graphics.form.FormTypeFactory_Package is

   package DisplayInfoSingleton_Package renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;

   type FormTypeFactory is tagged;
   type FormTypeFactory_Access is access all FormTypeFactory'Class;
   type FormTypeFactory_Access_Array is array (Natural range <>) of FormTypeFactory_Access;
   type FormTypeFactory_Access_Array_Access is access all FormTypeFactory_Access_Array;

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
   procedure getInstance;
   function getFormType (This : in out FormTypeFactory) return FormType_Access;
   procedure getFormType (This : in out FormTypeFactory);

end org.allbinary.graphics.form.FormTypeFactory_Package;


