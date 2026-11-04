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

limited with org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package;
package org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package_References is
   type CssElementValidation_Access is access all org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package.CssElementValidation'Class;
   type CssElementValidation_Access_Array is array (Natural range <>) of CssElementValidation_Access;
   type CssElementValidation_Access_Array_Access is access all CssElementValidation_Access_Array;
   type CssElementValidation_Access_Array_Access_Array is array (Natural range <>) of CssElementValidation_Access_Array_Access;
   type CssElementValidation_Access_Array_Access_Array_Access is access all CssElementValidation_Access_Array_Access_Array;
end org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package_References;

with org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package; use org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package;

package org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
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


   subtype CssElementValidation_Access is org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package_References.CssElementValidation_Access;
   function "=" (Left, Right : CssElementValidation_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package_References."=";
   subtype CssElementValidation_Access_Array is org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package_References.CssElementValidation_Access_Array;
   function "=" (Left, Right : CssElementValidation_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package_References."=";
   subtype CssElementValidation_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package_References.CssElementValidation_Access_Array_Access;
   function "=" (Left, Right : CssElementValidation_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package_References."=";
   subtype CssElementValidation_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package_References.CssElementValidation_Access_Array_Access_Array;
   function "=" (Left, Right : CssElementValidation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package_References."=";
   subtype CssElementValidation_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package_References.CssElementValidation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CssElementValidation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package_References."=";

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


