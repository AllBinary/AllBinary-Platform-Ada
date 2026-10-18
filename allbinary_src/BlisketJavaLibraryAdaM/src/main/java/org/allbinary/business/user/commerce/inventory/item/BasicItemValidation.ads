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
with org.allbinary.logic.control.validate.Validation_Package; use org.allbinary.logic.control.validate.Validation_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;

package org.allbinary.business.user.commerce.inventory.item.BasicItemValidation_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Validation_Package renames Standard.org.allbinary.logic.control.validate.Validation_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type BasicItemValidation is tagged;
   type BasicItemValidation_Access is access all BasicItemValidation'Class;
   type BasicItemValidation_Access_Array is array (Natural range <>) of BasicItemValidation_Access;
   type BasicItemValidation_Access_Array_Access is access all BasicItemValidation_Access_Array;
   type BasicItemValidation_Access_Array_Access_Array is array (Natural range <>) of BasicItemValidation_Access_Array_Access;
   type BasicItemValidation_Access_Array_Access_Array_Access is access all BasicItemValidation_Access_Array_Access_Array;

   type BasicItemValidation is new Validation with record
      logUtil : LogUtil_Access;
      MAXWEIGHT : Integer;
      MAXPRICE : Integer;
      itemInterface : ItemInterface_Access;
   end record;

   procedure Initialize (This : in out BasicItemValidation'Class; itemInterface_Param : access ItemInterface_Package.ItemInterface'Class);
   function Create (itemInterface_Param : access ItemInterface_Package.ItemInterface'Class) return BasicItemValidation_Access;
   function isValid (This : in out BasicItemValidation) return Boolean;
   function validationInfo (This : in out BasicItemValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out BasicItemValidation) return Document_Access;
   function toValidationInfoNode (This : in out BasicItemValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out BasicItemValidation; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.user.commerce.inventory.item.BasicItemValidation_Package;


