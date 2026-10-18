--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 leIIgal agreement.
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
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleNotRequiredValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleNotRequiredValidation_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Validation_Package renames Standard.org.allbinary.logic.control.validate.Validation_Package;
   package TitleNotRequiredValidation_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleNotRequiredValidation_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type TitleBodyValidation is tagged;
   type TitleBodyValidation_Access is access all TitleBodyValidation'Class;
   type TitleBodyValidation_Access_Array is array (Natural range <>) of TitleBodyValidation_Access;
   type TitleBodyValidation_Access_Array_Access is access all TitleBodyValidation_Access_Array;
   type TitleBodyValidation_Access_Array_Access_Array is array (Natural range <>) of TitleBodyValidation_Access_Array_Access;
   type TitleBodyValidation_Access_Array_Access_Array_Access is access all TitleBodyValidation_Access_Array_Access_Array;

   type TitleBodyValidation is new Validation and DomNodeInterface with record
      logUtil : LogUtil_Access;
      body_Id : Unbounded_String;
      titleValidation : TitleNotRequiredValidation_Access;
   end record;

   procedure Initialize (This : in out TitleBodyValidation'Class);
   function Create return TitleBodyValidation_Access;
   procedure Initialize (This : in out TitleBodyValidation'Class; document_Param : access Document_Package.Document'Class);
   function Create (document_Param : access Document_Package.Document'Class) return TitleBodyValidation_Access;
   procedure Initialize (This : in out TitleBodyValidation'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return TitleBodyValidation_Access;
   procedure getFormData (This : in out TitleBodyValidation; hashMap_Param : access HashMap_Package.HashMap'Class);
   function isValid (This : in out TitleBodyValidation) return Boolean;
   function validationInfo (This : in out TitleBodyValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out TitleBodyValidation) return Document_Access;
   function toValidationInfoNode (This : in out TitleBodyValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out TitleBodyValidation; document_Param : access Document_Package.Document'Class);
   function toXmlNode (This : in out TitleBodyValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out TitleBodyValidation; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package;


