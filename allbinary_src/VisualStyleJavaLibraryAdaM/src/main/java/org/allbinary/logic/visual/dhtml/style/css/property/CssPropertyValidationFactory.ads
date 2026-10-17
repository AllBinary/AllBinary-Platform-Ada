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
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyValidation_Package; use org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyValidation_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package is

   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package FontFamilyValidation_Package renames Standard.org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyValidation_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type CssPropertyValidationFactory is tagged;
   type CssPropertyValidationFactory_Access is access all CssPropertyValidationFactory'Class;
   type CssPropertyValidationFactory_Access_Array is array (Natural range <>) of CssPropertyValidationFactory_Access;
   type CssPropertyValidationFactory_Access_Array_Access is access all CssPropertyValidationFactory_Access_Array;

   type CssPropertyValidationFactory is new Java_Object with null record;

   procedure Initialize (This : in out CssPropertyValidationFactory'Class);
   function Create return CssPropertyValidationFactory_Access;
   function getInstance (node_Param : access Node'Class) return ValidationInterface_Access;
   procedure getInstance (node_Param : access Node'Class);

end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package;


