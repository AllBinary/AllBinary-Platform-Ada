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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.Validation_Package; use org.allbinary.logic.control.validate.Validation_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingValidation_Package is

   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomSearchHelper_Package renames org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package Validation_Package renames org.allbinary.logic.control.validate.Validation_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package LogoData_Package renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package;
   package LogoValidation_Package renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package;
   package TitleData_Package renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;
   package TitleValidation_Package renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package NodeList_Package renames org.w3c.dom.NodeList_Package;

   type HeadingValidation is tagged;
   type HeadingValidation_Access is access all HeadingValidation'Class;
   type HeadingValidation_Access_Array is array (Natural range <>) of HeadingValidation_Access;
   type HeadingValidation_Access_Array_Access is access all HeadingValidation_Access_Array;

   type HeadingValidation is new Validation and DomNodeInterface with record
      logUtil : LogUtil_Access;
      title : TitleValidation_Access;
      logo : LogoValidation_Access;
   end record;

   procedure Initialize (This : in out HeadingValidation'Class);
   function Create return HeadingValidation_Access;
   procedure getFormData (This : in out HeadingValidation; hashMap : HashMap_Access);
   function isValid (This : in out HeadingValidation) return Boolean;
   procedure isValid (This : in out HeadingValidation);
   function validationInfo (This : in out HeadingValidation) return Unbounded_String;
   procedure validationInfo (This : in out HeadingValidation);
   function toValidationInfoDoc (This : in out HeadingValidation) return Document_Access;
   procedure toValidationInfoDoc (This : in out HeadingValidation);
   function toValidationInfoNode (This : in out HeadingValidation; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out HeadingValidation; document : Document_Access);
   function toXmlNode (This : in out HeadingValidation; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out HeadingValidation; document : Document_Access);

end org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingValidation_Package;


