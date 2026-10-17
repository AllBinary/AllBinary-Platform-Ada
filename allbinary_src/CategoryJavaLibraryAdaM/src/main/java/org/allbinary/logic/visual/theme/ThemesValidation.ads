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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.control.validate.Validation_Package; use org.allbinary.logic.control.validate.Validation_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.theme.ThemesData_Package; use org.allbinary.logic.visual.theme.ThemesData_Package;

package org.allbinary.logic.visual.theme.ThemesValidation_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package Validation_Package renames Standard.org.allbinary.logic.control.validate.Validation_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type ThemesValidation is tagged;
   type ThemesValidation_Access is access all ThemesValidation'Class;
   type ThemesValidation_Access_Array is array (Natural range <>) of ThemesValidation_Access;
   type ThemesValidation_Access_Array_Access is access all ThemesValidation_Access_Array;

   type ThemesValidation is new Validation and DomNodeInterface with record
      themeVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out ThemesValidation'Class);
   function Create return ThemesValidation_Access;
   procedure Initialize (This : in out ThemesValidation'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return ThemesValidation_Access;
   procedure Initialize (This : in out ThemesValidation'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return ThemesValidation_Access;
   function isValid (This : in out ThemesValidation) return Boolean;
   function validationInfo (This : in out ThemesValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out ThemesValidation) return Document_Access;
   function toValidationInfoNode (This : in out ThemesValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out ThemesValidation; document_Param : access Document_Package.Document'Class);
   function toXmlNode (This : in out ThemesValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out ThemesValidation; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.visual.theme.ThemesValidation_Package;


