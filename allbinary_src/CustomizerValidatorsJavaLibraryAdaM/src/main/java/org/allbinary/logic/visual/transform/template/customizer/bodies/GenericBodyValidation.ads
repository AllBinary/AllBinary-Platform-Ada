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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.Validation_Package; use org.allbinary.logic.control.validate.Validation_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.logic.visual.transform.template.customizer.bodies.GenericBodyValidation_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Validation_Package renames Standard.org.allbinary.logic.control.validate.Validation_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type GenericBodyValidation is tagged;
   type GenericBodyValidation_Access is access all GenericBodyValidation'Class;
   type GenericBodyValidation_Access_Array is array (Natural range <>) of GenericBodyValidation_Access;
   type GenericBodyValidation_Access_Array_Access is access all GenericBodyValidation_Access_Array;
   type GenericBodyValidation_Access_Array_Access_Array is array (Natural range <>) of GenericBodyValidation_Access_Array_Access;
   type GenericBodyValidation_Access_Array_Access_Array_Access is access all GenericBodyValidation_Access_Array_Access_Array;

   type GenericBodyValidation is new Validation and DomNodeInterface with record
      logUtil : LogUtil_Access;
      body_Id : Unbounded_String;
   end record;

   procedure Initialize (This : in out GenericBodyValidation'Class);
   function Create return GenericBodyValidation_Access;
   procedure Initialize (This : in out GenericBodyValidation'Class; document_Param : access Document_Package.Document'Class);
   function Create (document_Param : access Document_Package.Document'Class) return GenericBodyValidation_Access;
   procedure Initialize (This : in out GenericBodyValidation'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return GenericBodyValidation_Access;
   procedure getFormData (This : in out GenericBodyValidation; hashMap_Param : access HashMap_Package.HashMap'Class);
   function isValid (This : in out GenericBodyValidation) return Boolean;
   function validationInfo (This : in out GenericBodyValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out GenericBodyValidation) return Document_Access;
   function toValidationInfoNode (This : in out GenericBodyValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out GenericBodyValidation; document_Param : access Document_Package.Document'Class);
   function toXmlNode (This : in out GenericBodyValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out GenericBodyValidation; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.visual.transform.template.customizer.bodies.GenericBodyValidation_Package;


