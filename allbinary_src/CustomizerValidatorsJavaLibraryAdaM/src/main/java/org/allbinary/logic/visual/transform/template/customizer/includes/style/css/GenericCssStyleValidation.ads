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
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.Validation_Package; use org.allbinary.logic.control.validate.Validation_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.visual.dhtml.style.StylesData_Package; use org.allbinary.logic.visual.dhtml.style.StylesData_Package;
with org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package; use org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package is

   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames org.allbinary.data.tree.dom.ModDomHelper_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package Validation_Package renames org.allbinary.logic.control.validate.Validation_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package StylesData_Package renames org.allbinary.logic.visual.dhtml.style.StylesData_Package;
   package BodyData_Package renames org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package NodeList_Package renames org.w3c.dom.NodeList_Package;

   type GenericCssStyleValidation is tagged;
   type GenericCssStyleValidation_Access is access all GenericCssStyleValidation'Class;
   type GenericCssStyleValidation_Access_Array is array (Natural range <>) of GenericCssStyleValidation_Access;
   type GenericCssStyleValidation_Access_Array_Access is access all GenericCssStyleValidation_Access_Array;

   type GenericCssStyleValidation is new Validation and DomNodeInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out GenericCssStyleValidation'Class);
   function Create return GenericCssStyleValidation_Access;
   procedure getFormData (This : in out GenericCssStyleValidation; hashMap : HashMap_Access);
   function isValid (This : in out GenericCssStyleValidation) return Boolean;
   procedure isValid (This : in out GenericCssStyleValidation);
   function validationInfo (This : in out GenericCssStyleValidation) return Unbounded_String;
   procedure validationInfo (This : in out GenericCssStyleValidation);
   function toValidationInfoDoc (This : in out GenericCssStyleValidation) return Document_Access;
   procedure toValidationInfoDoc (This : in out GenericCssStyleValidation);
   function toValidationInfoNode (This : in out GenericCssStyleValidation; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out GenericCssStyleValidation; document : Document_Access);
   function toXmlNode (This : in out GenericCssStyleValidation; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out GenericCssStyleValidation; document : Document_Access);

end org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package;


