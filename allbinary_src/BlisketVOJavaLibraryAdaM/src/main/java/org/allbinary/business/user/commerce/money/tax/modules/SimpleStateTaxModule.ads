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
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.address.StreetAddressData_Package; use org.allbinary.business.user.address.StreetAddressData_Package;
with org.allbinary.business.user.commerce.money.tax.components.TaxData_Package; use org.allbinary.business.user.commerce.money.tax.components.TaxData_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.crypt.file.CryptFileReader_Package; use org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package; use org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package;

package org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package is

   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package StreetAddressData_Package renames Standard.org.allbinary.business.user.address.StreetAddressData_Package;
   package TaxData_Package renames Standard.org.allbinary.business.user.commerce.money.tax.components.TaxData_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CryptFileReader_Package renames Standard.org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package TransformInfoObjectConfigData_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type SimpleStateTaxModule is tagged;
   type SimpleStateTaxModule_Access is access all SimpleStateTaxModule'Class;
   type SimpleStateTaxModule_Access_Array is array (Natural range <>) of SimpleStateTaxModule_Access;
   type SimpleStateTaxModule_Access_Array_Access is access all SimpleStateTaxModule_Access_Array;

   type SimpleStateTaxModule is new TaxModuleInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      streetAddress : StreetAddress_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      ALL_Id : Unbounded_String;
      STATETAXPATH : Unbounded_String;
      STATETAXFILE : Unbounded_String;
      document : Document_Access;
   end record;

   procedure Initialize (This : in out SimpleStateTaxModule'Class);
   function Create return SimpleStateTaxModule_Access;
   function getTaxRate (This : in out SimpleStateTaxModule; streetAddress_Param : access StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface'Class) return Float;
   procedure getTaxRate (This : in out SimpleStateTaxModule; streetAddress_Param : access StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface'Class);
   function isValid (This : in out SimpleStateTaxModule; streetAddress_Param : access StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface'Class) return Boolean;
   procedure isValid (This : in out SimpleStateTaxModule; streetAddress_Param : access StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface'Class);

end org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package;


