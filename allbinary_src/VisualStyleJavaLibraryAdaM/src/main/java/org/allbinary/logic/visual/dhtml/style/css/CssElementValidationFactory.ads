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
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.logic.visual.dhtml.style.css.CssElementValidationFactory_Package is

   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type CssElementValidationFactory is tagged;
   type CssElementValidationFactory_Access is access all CssElementValidationFactory'Class;
   type CssElementValidationFactory_Access_Array is array (Natural range <>) of CssElementValidationFactory_Access;
   type CssElementValidationFactory_Access_Array_Access is access all CssElementValidationFactory_Access_Array;
   type CssElementValidationFactory_Access_Array_Access_Array is array (Natural range <>) of CssElementValidationFactory_Access_Array_Access;
   type CssElementValidationFactory_Access_Array_Access_Array_Access is access all CssElementValidationFactory_Access_Array_Access_Array;

   type CssElementValidationFactory is new Java_Object with null record;

   procedure Initialize (This : in out CssElementValidationFactory'Class);
   function Create return CssElementValidationFactory_Access;
   function getInstance (node_Param : access Node_Package.Node'Class) return ValidationInterface_Access;
   procedure getInstance (node_Param : access Node_Package.Node'Class);

end org.allbinary.logic.visual.dhtml.style.css.CssElementValidationFactory_Package;


