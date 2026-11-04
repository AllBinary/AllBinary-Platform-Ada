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

limited with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package;
package org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package_References is
   type CssPropertyValidationFactory_Access is access all org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package.CssPropertyValidationFactory'Class;
   type CssPropertyValidationFactory_Access_Array is array (Natural range <>) of CssPropertyValidationFactory_Access;
   type CssPropertyValidationFactory_Access_Array_Access is access all CssPropertyValidationFactory_Access_Array;
   type CssPropertyValidationFactory_Access_Array_Access_Array is array (Natural range <>) of CssPropertyValidationFactory_Access_Array_Access;
   type CssPropertyValidationFactory_Access_Array_Access_Array_Access is access all CssPropertyValidationFactory_Access_Array_Access_Array;
end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package_References;

with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package is

   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype ValidationInterface_Access is org.allbinary.logic.control.validate.ValidationInterface_Package_References.ValidationInterface_Access;
   use type ValidationInterface_Access;
   subtype ValidationInterface_Access_Array is org.allbinary.logic.control.validate.ValidationInterface_Package_References.ValidationInterface_Access_Array;
   use type ValidationInterface_Access_Array;
   subtype ValidationInterface_Access_Array_Access is org.allbinary.logic.control.validate.ValidationInterface_Package_References.ValidationInterface_Access_Array_Access;
   use type ValidationInterface_Access_Array_Access;
   subtype ValidationInterface_Access_Array_Access_Array is org.allbinary.logic.control.validate.ValidationInterface_Package_References.ValidationInterface_Access_Array_Access_Array;
   use type ValidationInterface_Access_Array_Access_Array;
   subtype ValidationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.validate.ValidationInterface_Package_References.ValidationInterface_Access_Array_Access_Array_Access;
   use type ValidationInterface_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CssPropertyValidationFactory_Access is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package_References.CssPropertyValidationFactory_Access;
   function "=" (Left, Right : CssPropertyValidationFactory_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package_References."=";
   subtype CssPropertyValidationFactory_Access_Array is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package_References.CssPropertyValidationFactory_Access_Array;
   function "=" (Left, Right : CssPropertyValidationFactory_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package_References."=";
   subtype CssPropertyValidationFactory_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package_References.CssPropertyValidationFactory_Access_Array_Access;
   function "=" (Left, Right : CssPropertyValidationFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package_References."=";
   subtype CssPropertyValidationFactory_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package_References.CssPropertyValidationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CssPropertyValidationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package_References."=";
   subtype CssPropertyValidationFactory_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package_References.CssPropertyValidationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CssPropertyValidationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package_References."=";

   type CssPropertyValidationFactory is new Java_Object with null record;

   procedure Initialize (This : in out CssPropertyValidationFactory'Class);
   function Create return CssPropertyValidationFactory_Access;
   function getInstance (node_Param : access Node_Package.Node'Class) return ValidationInterface_Access;
   procedure getInstance (node_Param : access Node_Package.Node'Class);

end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package;


