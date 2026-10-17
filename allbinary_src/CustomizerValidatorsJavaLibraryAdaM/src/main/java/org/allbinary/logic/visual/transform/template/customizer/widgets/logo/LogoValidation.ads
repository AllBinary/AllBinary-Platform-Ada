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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.request.HttpRequestUtil_Package; use org.allbinary.logic.communication.http.request.HttpRequestUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.Validation_Package; use org.allbinary.logic.control.validate.Validation_Package;
with org.allbinary.logic.io.file.FileData_Package; use org.allbinary.logic.io.file.FileData_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.apache.commons.fileupload.FileItem_Package; use org.apache.commons.fileupload.FileItem_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package;

package org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package HttpRequestUtil_Package renames Standard.org.allbinary.logic.communication.http.request.HttpRequestUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Validation_Package renames Standard.org.allbinary.logic.control.validate.Validation_Package;
   package FileData_Package renames Standard.org.allbinary.logic.io.file.FileData_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package FileItem_Package renames Standard.org.apache.commons.fileupload.FileItem_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type LogoValidation is tagged;
   type LogoValidation_Access is access all LogoValidation'Class;
   type LogoValidation_Access_Array is array (Natural range <>) of LogoValidation_Access;
   type LogoValidation_Access_Array_Access is access all LogoValidation_Access_Array;

   type LogoValidation is new Validation and DomNodeInterface with record
      logUtil : LogUtil_Access;
      logoFileItem : FileItem_Access;
      logoAbPath : AbPath_Access;
      logoFile : Unbounded_String;
      isFile : Boolean;
   end record;

   procedure Initialize (This : in out LogoValidation'Class);
   function Create return LogoValidation_Access;
   procedure Initialize (This : in out LogoValidation'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return LogoValidation_Access;
   procedure Initialize (This : in out LogoValidation'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return LogoValidation_Access;
   procedure getFormData (This : in out LogoValidation; hashMap_Param : access HashMap_Package.HashMap'Class);
   function isValid (This : in out LogoValidation) return Boolean;
   function validationInfo (This : in out LogoValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out LogoValidation) return Document_Access;
   function toValidationInfoNode (This : in out LogoValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out LogoValidation; document_Param : access Document_Package.Document'Class);
   function toHashMap (This : in out LogoValidation) return HashMap_Access;
   function toXmlNode (This : in out LogoValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out LogoValidation; document_Param : access Document_Package.Document'Class);
   procedure processLogoFile (This : in out LogoValidation);

end org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package;


