--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- III
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
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.Validation_Package; use org.allbinary.logic.control.validate.Validation_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package; use org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package;
with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package; use org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package;
with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaData_Package; use org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaData_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetaValidation_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Validation_Package renames Standard.org.allbinary.logic.control.validate.Validation_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package HtmlMetaAttributeData_Package renames Standard.org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package;
   package HtmlMetaAttributeDataFactory_Package renames Standard.org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package;
   package HtmlMetaData_Package renames Standard.org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaData_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type MetaValidation is tagged;
   type MetaValidation_Access is access all MetaValidation'Class;
   type MetaValidation_Access_Array is array (Natural range <>) of MetaValidation_Access;
   type MetaValidation_Access_Array_Access is access all MetaValidation_Access_Array;

   type MetaValidation is new Validation and DomNodeInterface with record
      logUtil : LogUtil_Access;
      label : Unbounded_String;
      name : Unbounded_String;
      httpEquiv : Unbounded_String;
      content : Unbounded_String;
   end record;

   procedure Initialize (This : in out MetaValidation'Class; htmlMetaAttributeData : HtmlMetaAttributeData_Access; label : Unbounded_String; attributeValue : Unbounded_String; contentValue : Unbounded_String);
   function Create (htmlMetaAttributeData : HtmlMetaAttributeData_Access; label : Unbounded_String; attributeValue : Unbounded_String; contentValue : Unbounded_String) return MetaValidation_Access;
   function isValid (This : in out MetaValidation) return Boolean;
   function validationInfo (This : in out MetaValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out MetaValidation) return Document_Access;
   function toValidationInfoNode (This : in out MetaValidation; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out MetaValidation; document : Document_Access);
   function toHashMap (This : in out MetaValidation) return HashMap_Access;
   function toXmlNode (This : in out MetaValidation; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out MetaValidation; document : Document_Access);

end org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetaValidation_Package;


