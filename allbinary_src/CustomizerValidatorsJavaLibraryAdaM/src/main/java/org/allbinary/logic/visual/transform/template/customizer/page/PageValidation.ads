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
limited with org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package;
package org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package_References is
   type PageValidation_Access is access all org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package.PageValidation'Class;
   type PageValidation_Access_Array is array (Natural range <>) of PageValidation_Access;
   type PageValidation_Access_Array_Access is access all PageValidation_Access_Array;
   type PageValidation_Access_Array_Access_Array is array (Natural range <>) of PageValidation_Access_Array_Access;
   type PageValidation_Access_Array_Access_Array_Access is access all PageValidation_Access_Array_Access_Array;
   type PageValidation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PageValidation_Access_Array_Access;
   end record;
   function Java_Box (Value : PageValidation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PageValidation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PageValidation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PageValidation_Access_Array_Access is (if Value /= null and then Value.all in PageValidation_Access_Array_Object'Class then PageValidation_Access_Array_Object'Class (Value.all).Value else null);
   type PageValidation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PageValidation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PageValidation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PageValidation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PageValidation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PageValidation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PageValidation_Access_Array_Access_Array_Object'Class then PageValidation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package_References;

with org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package_References;
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
limited with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Validation_Package renames Standard.org.allbinary.logic.control.validate.Validation_Package;
   package TitleValidation_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package;
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
   subtype TitleValidation_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.TitleValidation_Access;
   use type TitleValidation_Access;
   subtype TitleValidation_Access_Array is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.TitleValidation_Access_Array;
   use type TitleValidation_Access_Array;
   subtype TitleValidation_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.TitleValidation_Access_Array_Access;
   use type TitleValidation_Access_Array_Access;
   subtype TitleValidation_Access_Array_Access_Array is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.TitleValidation_Access_Array_Access_Array;
   use type TitleValidation_Access_Array_Access_Array;
   subtype TitleValidation_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.TitleValidation_Access_Array_Access_Array_Access;
   use type TitleValidation_Access_Array_Access_Array_Access;
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


   subtype PageValidation_Access is org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package_References.PageValidation_Access;
   function "=" (Left, Right : PageValidation_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package_References."=";
   subtype PageValidation_Access_Array is org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package_References.PageValidation_Access_Array;
   function "=" (Left, Right : PageValidation_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package_References."=";
   subtype PageValidation_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package_References.PageValidation_Access_Array_Access;
   function "=" (Left, Right : PageValidation_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package_References."=";
   function Java_Box (Value : PageValidation_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package_References.Java_Box;
   function Java_Unbox_PageValidation_Access_Array (Value : access Java_Object'Class) return PageValidation_Access_Array_Access renames org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package_References.Java_Unbox_PageValidation_Access_Array;
   subtype PageValidation_Access_Array_Access_Array is org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package_References.PageValidation_Access_Array_Access_Array;
   function "=" (Left, Right : PageValidation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package_References."=";
   subtype PageValidation_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package_References.PageValidation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PageValidation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package_References."=";
   function Java_Box (Value : PageValidation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package_References.Java_Box;
   function Java_Unbox_PageValidation_Access_Array_Access_Array (Value : access Java_Object'Class) return PageValidation_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package_References.Java_Unbox_PageValidation_Access_Array_Access_Array;

   type PageValidation is new Validation and DomNodeInterface with record
      logUtil : LogUtil_Access;
      title : TitleValidation_Access;
   end record;

   procedure Initialize (This : in out PageValidation'Class);
   function Create return PageValidation_Access;
   procedure Initialize (This : in out PageValidation'Class; document_Param : access Document_Package.Document'Class);
   function Create (document_Param : access Document_Package.Document'Class) return PageValidation_Access;
   procedure Initialize (This : in out PageValidation'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return PageValidation_Access;
   procedure getFormData (This : in out PageValidation; hashMap_Param : access HashMap_Package.HashMap'Class);
   function isValid (This : in out PageValidation) return Boolean;
   function validationInfo (This : in out PageValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out PageValidation) return Document_Access;
   function toValidationInfoNode (This : in out PageValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out PageValidation; document_Param : access Document_Package.Document'Class);
   function toXmlNode (This : in out PageValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out PageValidation; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package;


