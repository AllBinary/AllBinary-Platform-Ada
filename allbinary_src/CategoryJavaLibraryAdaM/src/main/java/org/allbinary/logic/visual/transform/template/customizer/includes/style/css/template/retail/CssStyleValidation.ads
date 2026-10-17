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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.Validation_Package; use org.allbinary.logic.control.validate.Validation_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.dhtml.style.StyleData_Package; use org.allbinary.logic.visual.dhtml.style.StyleData_Package;
with org.allbinary.logic.visual.dhtml.style.StylesData_Package; use org.allbinary.logic.visual.dhtml.style.StylesData_Package;
with org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package; use org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.CssStyleValidation_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Validation_Package renames Standard.org.allbinary.logic.control.validate.Validation_Package;
   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StyleData_Package renames Standard.org.allbinary.logic.visual.dhtml.style.StyleData_Package;
   package StylesData_Package renames Standard.org.allbinary.logic.visual.dhtml.style.StylesData_Package;
   package StylesValidationFactory_Package renames Standard.org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type CssStyleValidation is tagged;
   type CssStyleValidation_Access is access all CssStyleValidation'Class;
   type CssStyleValidation_Access_Array is array (Natural range <>) of CssStyleValidation_Access;
   type CssStyleValidation_Access_Array_Access is access all CssStyleValidation_Access_Array;

   type CssStyleValidation is new Validation and DomNodeInterface with record
      logUtil : LogUtil_Access;
      cssStyleElementVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out CssStyleValidation'Class);
   function Create return CssStyleValidation_Access;
   procedure Initialize (This : in out CssStyleValidation'Class; document_Param : access Document'Class);
   function Create (document_Param : access Document'Class) return CssStyleValidation_Access;
   procedure Initialize (This : in out CssStyleValidation'Class; hashMap_Param : access HashMap'Class);
   function Create (hashMap_Param : access HashMap'Class) return CssStyleValidation_Access;
   function isValid (This : in out CssStyleValidation) return Boolean;
   function validationInfo (This : in out CssStyleValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out CssStyleValidation) return Document_Access;
   function toValidationInfoNode (This : in out CssStyleValidation; document_Param : access Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out CssStyleValidation; document_Param : access Document'Class);
   function toXmlNode (This : in out CssStyleValidation; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out CssStyleValidation; document_Param : access Document'Class);

end org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.CssStyleValidation_Package;


