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
with org.allbinary.business.page.PageData_Package; use org.allbinary.business.page.PageData_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.Validation_Package; use org.allbinary.logic.control.validate.Validation_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package is

   package PageData_Package renames Standard.org.allbinary.business.page.PageData_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Validation_Package renames Standard.org.allbinary.logic.control.validate.Validation_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TitleData_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;
   package TitleValidation_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type PageValidation is tagged;
   type PageValidation_Access is access all PageValidation'Class;
   type PageValidation_Access_Array is array (Natural range <>) of PageValidation_Access;
   type PageValidation_Access_Array_Access is access all PageValidation_Access_Array;

   type PageValidation is new Validation and DomNodeInterface with record
      logUtil : LogUtil_Access;
      title : TitleValidation_Access;
   end record;

   procedure Initialize (This : in out PageValidation'Class);
   function Create return PageValidation_Access;
   procedure getFormData (This : in out PageValidation; hashMap : HashMap_Access);
   function isValid (This : in out PageValidation) return Boolean;
   procedure isValid (This : in out PageValidation);
   function validationInfo (This : in out PageValidation) return Unbounded_String;
   procedure validationInfo (This : in out PageValidation);
   function toValidationInfoDoc (This : in out PageValidation) return Document_Access;
   procedure toValidationInfoDoc (This : in out PageValidation);
   function toValidationInfoNode (This : in out PageValidation; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out PageValidation; document : Document_Access);
   function toXmlNode (This : in out PageValidation; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out PageValidation; document : Document_Access);

end org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package;


