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

limited with org.allbinary.logic.control.validate.GenericValidator_Package;
package org.allbinary.logic.control.validate.GenericValidator_Package_References is
   type GenericValidator_Access is access all org.allbinary.logic.control.validate.GenericValidator_Package.GenericValidator'Class;
   type GenericValidator_Access_Array is array (Natural range <>) of GenericValidator_Access;
   type GenericValidator_Access_Array_Access is access all GenericValidator_Access_Array;
   type GenericValidator_Access_Array_Access_Array is array (Natural range <>) of GenericValidator_Access_Array_Access;
   type GenericValidator_Access_Array_Access_Array_Access is access all GenericValidator_Access_Array_Access_Array;
end org.allbinary.logic.control.validate.GenericValidator_Package_References;

with org.allbinary.logic.control.validate.GenericValidator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.logic.control.validate.ValidatorBase_Package; use org.allbinary.logic.control.validate.ValidatorBase_Package;

package org.allbinary.logic.control.validate.GenericValidator_Package is

   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
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


   subtype GenericValidator_Access is org.allbinary.logic.control.validate.GenericValidator_Package_References.GenericValidator_Access;
   function "=" (Left, Right : GenericValidator_Access) return Boolean renames org.allbinary.logic.control.validate.GenericValidator_Package_References."=";
   subtype GenericValidator_Access_Array is org.allbinary.logic.control.validate.GenericValidator_Package_References.GenericValidator_Access_Array;
   function "=" (Left, Right : GenericValidator_Access_Array) return Boolean renames org.allbinary.logic.control.validate.GenericValidator_Package_References."=";
   subtype GenericValidator_Access_Array_Access is org.allbinary.logic.control.validate.GenericValidator_Package_References.GenericValidator_Access_Array_Access;
   function "=" (Left, Right : GenericValidator_Access_Array_Access) return Boolean renames org.allbinary.logic.control.validate.GenericValidator_Package_References."=";
   subtype GenericValidator_Access_Array_Access_Array is org.allbinary.logic.control.validate.GenericValidator_Package_References.GenericValidator_Access_Array_Access_Array;
   function "=" (Left, Right : GenericValidator_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.validate.GenericValidator_Package_References."=";
   subtype GenericValidator_Access_Array_Access_Array_Access is org.allbinary.logic.control.validate.GenericValidator_Package_References.GenericValidator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericValidator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.validate.GenericValidator_Package_References."=";

   type GenericValidator is new ValidatorBase with null record;

   procedure Initialize (This : in out GenericValidator'Class);
   function Create return GenericValidator_Access;
   function toValidationInfoDoc (This : in out GenericValidator) return Document_Access;
   function toValidationInfoNode (This : in out GenericValidator; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out GenericValidator; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.control.validate.GenericValidator_Package;


