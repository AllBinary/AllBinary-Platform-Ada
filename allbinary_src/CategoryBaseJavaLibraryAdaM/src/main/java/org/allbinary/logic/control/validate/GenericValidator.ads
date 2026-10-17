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
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.control.validate.ValidatorBase_Package; use org.allbinary.logic.control.validate.ValidatorBase_Package;

package org.allbinary.logic.control.validate.GenericValidator_Package is

   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type GenericValidator is tagged;
   type GenericValidator_Access is access all GenericValidator'Class;
   type GenericValidator_Access_Array is array (Natural range <>) of GenericValidator_Access;
   type GenericValidator_Access_Array_Access is access all GenericValidator_Access_Array;

   type GenericValidator is new ValidatorBase with null record;

   procedure Initialize (This : in out GenericValidator'Class);
   function Create return GenericValidator_Access;
   function toValidationInfoDoc (This : in out GenericValidator) return Document_Access;
   function toValidationInfoNode (This : in out GenericValidator; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out GenericValidator; document : Document_Access);

end org.allbinary.logic.control.validate.GenericValidator_Package;


