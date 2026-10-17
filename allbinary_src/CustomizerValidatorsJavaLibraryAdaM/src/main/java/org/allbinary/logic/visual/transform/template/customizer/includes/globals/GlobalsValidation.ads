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
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontView_Package; use org.allbinary.business.context.modules.storefront.StoreFrontView_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.Validation_Package; use org.allbinary.logic.control.validate.Validation_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package; use org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsData_Package;

package org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsValidation_Package is

   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package StoreFrontView_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontView_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Validation_Package renames Standard.org.allbinary.logic.control.validate.Validation_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type GlobalsValidation is tagged;
   type GlobalsValidation_Access is access all GlobalsValidation'Class;
   type GlobalsValidation_Access_Array is array (Natural range <>) of GlobalsValidation_Access;
   type GlobalsValidation_Access_Array_Access is access all GlobalsValidation_Access_Array;

   type GlobalsValidation is new Validation and DomNodeInterface with record
      logUtil : LogUtil_Access;
      storeFrontInterface : StoreFrontInterface_Access;
   end record;

   procedure Initialize (This : in out GlobalsValidation'Class; storeName : Unbounded_String);
   function Create (storeName : Unbounded_String) return GlobalsValidation_Access;
   function isValid (This : in out GlobalsValidation) return Boolean;
   function validationInfo (This : in out GlobalsValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out GlobalsValidation) return Document_Access;
   function toValidationInfoNode (This : in out GlobalsValidation; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out GlobalsValidation; document : Document_Access);
   function toXmlNode (This : in out GlobalsValidation; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out GlobalsValidation; document : Document_Access);

end org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsValidation_Package;


