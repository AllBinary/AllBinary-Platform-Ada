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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package; use org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package;

package org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type CssElementValidation is tagged;
   type CssElementValidation_Access is access all CssElementValidation'Class;
   type CssElementValidation_Access_Array is array (Natural range <>) of CssElementValidation_Access;
   type CssElementValidation_Access_Array_Access is access all CssElementValidation_Access_Array;

   type CssElementValidation is new CssElementView and ValidationInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out CssElementValidation'Class);
   function Create return CssElementValidation_Access;
   procedure Initialize (This : in out CssElementValidation'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return CssElementValidation_Access;
   function isValid (This : in out CssElementValidation) return Boolean;
   function validationInfo (This : in out CssElementValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out CssElementValidation) return Document_Access;
   function toValidationInfoNode (This : in out CssElementValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out CssElementValidation; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package;


