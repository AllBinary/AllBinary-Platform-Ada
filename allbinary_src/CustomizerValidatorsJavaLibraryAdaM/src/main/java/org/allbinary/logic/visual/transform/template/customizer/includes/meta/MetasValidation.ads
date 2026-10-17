--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- II
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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.Validation_Package; use org.allbinary.logic.control.validate.Validation_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package; use org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package;
with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeValuesData_Package; use org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeValuesData_Package;
with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetasData_Package; use org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetasData_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetaValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetaValidation_Package;

package org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetasValidation_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Validation_Package renames Standard.org.allbinary.logic.control.validate.Validation_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package HtmlMetaAttributeDataFactory_Package renames Standard.org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package;
   package HtmlMetaAttributeValuesData_Package renames Standard.org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeValuesData_Package;
   package HtmlMetasData_Package renames Standard.org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetasData_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type MetasValidation is tagged;
   type MetasValidation_Access is access all MetasValidation'Class;
   type MetasValidation_Access_Array is array (Natural range <>) of MetasValidation_Access;
   type MetasValidation_Access_Array_Access is access all MetasValidation_Access_Array;

   type MetasValidation is new Validation and DomNodeInterface with record
      logUtil : LogUtil_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      metaValidationVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out MetasValidation'Class; storeName : Unbounded_String);
   function Create (storeName : Unbounded_String) return MetasValidation_Access;
   procedure Initialize (This : in out MetasValidation'Class; document_Param : access Document'Class);
   function Create (document_Param : access Document'Class) return MetasValidation_Access;
   function isValid (This : in out MetasValidation) return Boolean;
   function validationInfo (This : in out MetasValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out MetasValidation) return Document_Access;
   function toValidationInfoNode (This : in out MetasValidation; document_Param : access Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out MetasValidation; document_Param : access Document'Class);
   function toXmlNode (This : in out MetasValidation; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out MetasValidation; document_Param : access Document'Class);

end org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetasValidation_Package;


