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

limited with views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package;
package views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package_References is
   type InsertThemeValidationView_Access is access all views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package.InsertThemeValidationView'Class;
   type InsertThemeValidationView_Access_Array is array (Natural range <>) of InsertThemeValidationView_Access;
   type InsertThemeValidationView_Access_Array_Access is access all InsertThemeValidationView_Access_Array;
   type InsertThemeValidationView_Access_Array_Access_Array is array (Natural range <>) of InsertThemeValidationView_Access_Array_Access;
   type InsertThemeValidationView_Access_Array_Access_Array_Access is access all InsertThemeValidationView_Access_Array_Access_Array;
end views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package_References;

with views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package_References;
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
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with views.business.context.modules.storefront.customizer.includes.style.theme.ThemeCustomizerView_Package; use views.business.context.modules.storefront.customizer.includes.style.theme.ThemeCustomizerView_Package;

package views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
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
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
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


   subtype InsertThemeValidationView_Access is views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package_References.InsertThemeValidationView_Access;
   function "=" (Left, Right : InsertThemeValidationView_Access) return Boolean renames views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package_References."=";
   subtype InsertThemeValidationView_Access_Array is views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package_References.InsertThemeValidationView_Access_Array;
   function "=" (Left, Right : InsertThemeValidationView_Access_Array) return Boolean renames views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package_References."=";
   subtype InsertThemeValidationView_Access_Array_Access is views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package_References.InsertThemeValidationView_Access_Array_Access;
   function "=" (Left, Right : InsertThemeValidationView_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package_References."=";
   subtype InsertThemeValidationView_Access_Array_Access_Array is views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package_References.InsertThemeValidationView_Access_Array_Access_Array;
   function "=" (Left, Right : InsertThemeValidationView_Access_Array_Access_Array) return Boolean renames views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package_References."=";
   subtype InsertThemeValidationView_Access_Array_Access_Array_Access is views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package_References.InsertThemeValidationView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InsertThemeValidationView_Access_Array_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package_References."=";

   type InsertThemeValidationView is new ThemeCustomizerView and ValidationComponentInterface with record
      InsertThemeValidationView_Field_logUtil : LogUtil_Access;
      requestHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out InsertThemeValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return InsertThemeValidationView_Access;
   function toXmlDoc (This : in out InsertThemeValidationView) return Document_Access;
   function isValid (This : in out InsertThemeValidationView) return Boolean;
   function validationInfo (This : in out InsertThemeValidationView) return Unbounded_String;
   function toValidationInfoDoc (This : in out InsertThemeValidationView) return Document_Access;
   function toValidationInfoNode (This : in out InsertThemeValidationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out InsertThemeValidationView; document_Param : access Document_Package.Document'Class);
   function view (This : in out InsertThemeValidationView) return Unbounded_String;
   function getTransformInfoInterface (This : in out InsertThemeValidationView) return TransformInfoInterface_Access;

end views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package;


