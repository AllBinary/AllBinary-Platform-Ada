-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;

package org.allbinary.logic.control.validate.Validation_Package is

   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type Validation is tagged;
   type Validation_Access is access all Validation'Class;
   type Validation_Access_Array is array (Natural range <>) of Validation_Access;
   type Validation_Access_Array_Access is access all Validation_Access_Array;

   type Validation is new ValidationInterface with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out Validation'Class);
   function Create return Validation_Access;
   function isValid (This : in out Validation) return Boolean;
   procedure isValid (This : in out Validation);
   function toValidationInfoNode (This : in out Validation; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out Validation; document : Document_Access);
   function toValidationInfoDoc (This : in out Validation) return Document_Access;
   procedure toValidationInfoDoc (This : in out Validation);
   function validationInfo (This : in out Validation) return Unbounded_String;
   procedure validationInfo (This : in out Validation);

end org.allbinary.logic.control.validate.Validation_Package;


