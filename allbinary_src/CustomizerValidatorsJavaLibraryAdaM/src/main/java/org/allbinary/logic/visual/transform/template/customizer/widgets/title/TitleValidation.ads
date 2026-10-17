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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package;

package org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationInterface_Package renames org.allbinary.logic.control.validate.ValidationInterface_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringValidationUtil_Package renames org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type TitleValidation is tagged;
   type TitleValidation_Access is access all TitleValidation'Class;
   type TitleValidation_Access_Array is array (Natural range <>) of TitleValidation_Access;
   type TitleValidation_Access_Array_Access is access all TitleValidation_Access_Array;

   type TitleValidation is new TitleView and ValidationInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out TitleValidation'Class);
   function Create return TitleValidation_Access;
   function isValid (This : in out TitleValidation) return Boolean;
   procedure isValid (This : in out TitleValidation);
   function validationInfo (This : in out TitleValidation) return Unbounded_String;
   procedure validationInfo (This : in out TitleValidation);
   function toValidationInfoDoc (This : in out TitleValidation) return Document_Access;
   procedure toValidationInfoDoc (This : in out TitleValidation);
   function toValidationInfoNode (This : in out TitleValidation; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out TitleValidation; document : Document_Access);

end org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package;


