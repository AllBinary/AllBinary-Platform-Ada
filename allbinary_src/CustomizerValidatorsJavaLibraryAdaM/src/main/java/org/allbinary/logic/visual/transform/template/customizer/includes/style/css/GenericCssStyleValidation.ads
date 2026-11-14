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

with AllBinary_Java;
limited with org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package;
package org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package_References is
   type GenericCssStyleValidation_Access is access all org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package.GenericCssStyleValidation'Class;
   type GenericCssStyleValidation_Access_Array is array (Natural range <>) of GenericCssStyleValidation_Access;
   type GenericCssStyleValidation_Access_Array_Access is access all GenericCssStyleValidation_Access_Array;
   type GenericCssStyleValidation_Access_Array_Access_Array is array (Natural range <>) of GenericCssStyleValidation_Access_Array_Access;
   type GenericCssStyleValidation_Access_Array_Access_Array_Access is access all GenericCssStyleValidation_Access_Array_Access_Array;
   type GenericCssStyleValidation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GenericCssStyleValidation_Access_Array_Access;
   end record;
   function Java_Box (Value : GenericCssStyleValidation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GenericCssStyleValidation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GenericCssStyleValidation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GenericCssStyleValidation_Access_Array_Access is (if Value /= null and then Value.all in GenericCssStyleValidation_Access_Array_Object'Class then GenericCssStyleValidation_Access_Array_Object'Class (Value.all).Value else null);
   type GenericCssStyleValidation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GenericCssStyleValidation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GenericCssStyleValidation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GenericCssStyleValidation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GenericCssStyleValidation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GenericCssStyleValidation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GenericCssStyleValidation_Access_Array_Access_Array_Object'Class then GenericCssStyleValidation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package_References;

with org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.control.validate.Validation_Package; use org.allbinary.logic.control.validate.Validation_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Validation_Package renames Standard.org.allbinary.logic.control.validate.Validation_Package;
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


   subtype GenericCssStyleValidation_Access is org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package_References.GenericCssStyleValidation_Access;
   function "=" (Left, Right : GenericCssStyleValidation_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package_References."=";
   subtype GenericCssStyleValidation_Access_Array is org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package_References.GenericCssStyleValidation_Access_Array;
   function "=" (Left, Right : GenericCssStyleValidation_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package_References."=";
   subtype GenericCssStyleValidation_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package_References.GenericCssStyleValidation_Access_Array_Access;
   function "=" (Left, Right : GenericCssStyleValidation_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package_References."=";
   function Java_Box (Value : GenericCssStyleValidation_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package_References.Java_Box;
   function Java_Unbox_GenericCssStyleValidation_Access_Array (Value : access Java_Object'Class) return GenericCssStyleValidation_Access_Array_Access renames org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package_References.Java_Unbox_GenericCssStyleValidation_Access_Array;
   subtype GenericCssStyleValidation_Access_Array_Access_Array is org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package_References.GenericCssStyleValidation_Access_Array_Access_Array;
   function "=" (Left, Right : GenericCssStyleValidation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package_References."=";
   subtype GenericCssStyleValidation_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package_References.GenericCssStyleValidation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericCssStyleValidation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package_References."=";
   function Java_Box (Value : GenericCssStyleValidation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package_References.Java_Box;
   function Java_Unbox_GenericCssStyleValidation_Access_Array_Access_Array (Value : access Java_Object'Class) return GenericCssStyleValidation_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package_References.Java_Unbox_GenericCssStyleValidation_Access_Array_Access_Array;

   type GenericCssStyleValidation is new Validation and DomNodeInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out GenericCssStyleValidation'Class);
   function Create return GenericCssStyleValidation_Access;
   procedure Initialize (This : in out GenericCssStyleValidation'Class; document_Param : access Document_Package.Document'Class);
   function Create (document_Param : access Document_Package.Document'Class) return GenericCssStyleValidation_Access;
   procedure Initialize (This : in out GenericCssStyleValidation'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return GenericCssStyleValidation_Access;
   procedure getFormData (This : in out GenericCssStyleValidation; hashMap_Param : access HashMap_Package.HashMap'Class);
   function isValid (This : in out GenericCssStyleValidation) return Boolean;
   function validationInfo (This : in out GenericCssStyleValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out GenericCssStyleValidation) return Document_Access;
   function toValidationInfoNode (This : in out GenericCssStyleValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out GenericCssStyleValidation; document_Param : access Document_Package.Document'Class);
   function toXmlNode (This : in out GenericCssStyleValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out GenericCssStyleValidation; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package;


