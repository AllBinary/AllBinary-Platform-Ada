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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.category.properties.CategoryPropertiesView_Package; use org.allbinary.business.category.properties.CategoryPropertiesView_Package;

package org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type CategoryPropertiesValidationView is tagged;
   type CategoryPropertiesValidationView_Access is access all CategoryPropertiesValidationView'Class;
   type CategoryPropertiesValidationView_Access_Array is array (Natural range <>) of CategoryPropertiesValidationView_Access;
   type CategoryPropertiesValidationView_Access_Array_Access is access all CategoryPropertiesValidationView_Access_Array;

   type CategoryPropertiesValidationView is new CategoryPropertiesView and ValidationInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out CategoryPropertiesValidationView'Class; categoryPropertiesInterface : CategoryPropertiesInterface_Access);
   function Create (categoryPropertiesInterface : CategoryPropertiesInterface_Access) return CategoryPropertiesValidationView_Access;
   function isValid (This : in out CategoryPropertiesValidationView) return Boolean;
   procedure isValid (This : in out CategoryPropertiesValidationView);
   function validationInfo (This : in out CategoryPropertiesValidationView) return Unbounded_String;
   procedure validationInfo (This : in out CategoryPropertiesValidationView);
   function toValidationInfoDoc (This : in out CategoryPropertiesValidationView) return Document_Access;
   procedure toValidationInfoDoc (This : in out CategoryPropertiesValidationView);
   function toValidationInfoNode (This : in out CategoryPropertiesValidationView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out CategoryPropertiesValidationView; document : Document_Access);

end org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package;


