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
limited with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package;
package org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References is
   type TitleValidation_Access is access all org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package.TitleValidation'Class;
   type TitleValidation_Access_Array is array (Natural range <>) of TitleValidation_Access;
   type TitleValidation_Access_Array_Access is access all TitleValidation_Access_Array;
   type TitleValidation_Access_Array_Access_Array is array (Natural range <>) of TitleValidation_Access_Array_Access;
   type TitleValidation_Access_Array_Access_Array_Access is access all TitleValidation_Access_Array_Access_Array;
   type TitleValidation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TitleValidation_Access_Array_Access;
   end record;
   function Java_Box (Value : TitleValidation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TitleValidation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TitleValidation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TitleValidation_Access_Array_Access is (if Value /= null and then Value.all in TitleValidation_Access_Array_Object'Class then TitleValidation_Access_Array_Object'Class (Value.all).Value else null);
   type TitleValidation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TitleValidation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TitleValidation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TitleValidation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TitleValidation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TitleValidation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TitleValidation_Access_Array_Access_Array_Object'Class then TitleValidation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References;

with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package;

package org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
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


   subtype TitleValidation_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.TitleValidation_Access;
   function "=" (Left, Right : TitleValidation_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References."=";
   subtype TitleValidation_Access_Array is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.TitleValidation_Access_Array;
   function "=" (Left, Right : TitleValidation_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References."=";
   subtype TitleValidation_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.TitleValidation_Access_Array_Access;
   function "=" (Left, Right : TitleValidation_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References."=";
   function Java_Box (Value : TitleValidation_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.Java_Box;
   function Java_Unbox_TitleValidation_Access_Array (Value : access Java_Object'Class) return TitleValidation_Access_Array_Access renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.Java_Unbox_TitleValidation_Access_Array;
   subtype TitleValidation_Access_Array_Access_Array is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.TitleValidation_Access_Array_Access_Array;
   function "=" (Left, Right : TitleValidation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References."=";
   subtype TitleValidation_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.TitleValidation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TitleValidation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References."=";
   function Java_Box (Value : TitleValidation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.Java_Box;
   function Java_Unbox_TitleValidation_Access_Array_Access_Array (Value : access Java_Object'Class) return TitleValidation_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.Java_Unbox_TitleValidation_Access_Array_Access_Array;

   type TitleValidation is new TitleView and ValidationInterface with record
      TitleValidation_Field_logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out TitleValidation'Class);
   function Create return TitleValidation_Access;
   procedure Initialize (This : in out TitleValidation'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return TitleValidation_Access;
   procedure Initialize (This : in out TitleValidation'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return TitleValidation_Access;
   function isValid (This : in out TitleValidation) return Boolean;
   function validationInfo (This : in out TitleValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out TitleValidation) return Document_Access;
   function toValidationInfoNode (This : in out TitleValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out TitleValidation; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package;


