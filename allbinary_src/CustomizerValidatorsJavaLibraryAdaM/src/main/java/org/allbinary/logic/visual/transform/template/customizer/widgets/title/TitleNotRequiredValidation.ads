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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package;

package org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleNotRequiredValidation_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type TitleNotRequiredValidation is tagged;
   type TitleNotRequiredValidation_Access is access all TitleNotRequiredValidation'Class;
   type TitleNotRequiredValidation_Access_Array is array (Natural range <>) of TitleNotRequiredValidation_Access;
   type TitleNotRequiredValidation_Access_Array_Access is access all TitleNotRequiredValidation_Access_Array;
   type TitleNotRequiredValidation_Access_Array_Access_Array is array (Natural range <>) of TitleNotRequiredValidation_Access_Array_Access;
   type TitleNotRequiredValidation_Access_Array_Access_Array_Access is access all TitleNotRequiredValidation_Access_Array_Access_Array;

   type TitleNotRequiredValidation is new TitleView and ValidationInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out TitleNotRequiredValidation'Class);
   function Create return TitleNotRequiredValidation_Access;
   procedure Initialize (This : in out TitleNotRequiredValidation'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return TitleNotRequiredValidation_Access;
   procedure Initialize (This : in out TitleNotRequiredValidation'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return TitleNotRequiredValidation_Access;
   function isValid (This : in out TitleNotRequiredValidation) return Boolean;
   function validationInfo (This : in out TitleNotRequiredValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out TitleNotRequiredValidation) return Document_Access;
   function toValidationInfoNode (This : in out TitleNotRequiredValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out TitleNotRequiredValidation; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleNotRequiredValidation_Package;


