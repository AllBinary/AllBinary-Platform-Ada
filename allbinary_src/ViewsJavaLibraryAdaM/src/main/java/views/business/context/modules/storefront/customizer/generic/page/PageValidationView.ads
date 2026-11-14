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
limited with views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package;
package views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package_References is
   type PageValidationView_Access is access all views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package.PageValidationView'Class;
   type PageValidationView_Access_Array is array (Natural range <>) of PageValidationView_Access;
   type PageValidationView_Access_Array_Access is access all PageValidationView_Access_Array;
   type PageValidationView_Access_Array_Access_Array is array (Natural range <>) of PageValidationView_Access_Array_Access;
   type PageValidationView_Access_Array_Access_Array_Access is access all PageValidationView_Access_Array_Access_Array;
   type PageValidationView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PageValidationView_Access_Array_Access;
   end record;
   function Java_Box (Value : PageValidationView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PageValidationView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PageValidationView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PageValidationView_Access_Array_Access is (if Value /= null and then Value.all in PageValidationView_Access_Array_Object'Class then PageValidationView_Access_Array_Object'Class (Value.all).Value else null);
   type PageValidationView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PageValidationView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PageValidationView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PageValidationView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PageValidationView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PageValidationView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PageValidationView_Access_Array_Access_Array_Object'Class then PageValidationView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package_References;

with views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package_References;
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
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package; use views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package;

package views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package is

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


   subtype PageValidationView_Access is views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package_References.PageValidationView_Access;
   function "=" (Left, Right : PageValidationView_Access) return Boolean renames views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package_References."=";
   subtype PageValidationView_Access_Array is views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package_References.PageValidationView_Access_Array;
   function "=" (Left, Right : PageValidationView_Access_Array) return Boolean renames views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package_References."=";
   subtype PageValidationView_Access_Array_Access is views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package_References.PageValidationView_Access_Array_Access;
   function "=" (Left, Right : PageValidationView_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package_References."=";
   function Java_Box (Value : PageValidationView_Access_Array_Access) return Java_Object_Access renames views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package_References.Java_Box;
   function Java_Unbox_PageValidationView_Access_Array (Value : access Java_Object'Class) return PageValidationView_Access_Array_Access renames views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package_References.Java_Unbox_PageValidationView_Access_Array;
   subtype PageValidationView_Access_Array_Access_Array is views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package_References.PageValidationView_Access_Array_Access_Array;
   function "=" (Left, Right : PageValidationView_Access_Array_Access_Array) return Boolean renames views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package_References."=";
   subtype PageValidationView_Access_Array_Access_Array_Access is views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package_References.PageValidationView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PageValidationView_Access_Array_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package_References."=";
   function Java_Box (Value : PageValidationView_Access_Array_Access_Array_Access) return Java_Object_Access renames views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package_References.Java_Box;
   function Java_Unbox_PageValidationView_Access_Array_Access_Array (Value : access Java_Object'Class) return PageValidationView_Access_Array_Access_Array_Access renames views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package_References.Java_Unbox_PageValidationView_Access_Array_Access_Array;

   type PageValidationView is new PageView and ValidationComponentInterface with record
      PageValidationView_Field_logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out PageValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return PageValidationView_Access;
   function isValid (This : in out PageValidationView) return Boolean;
   function validationInfo (This : in out PageValidationView) return Unbounded_String;
   function toValidationInfoDoc (This : in out PageValidationView) return Document_Access;
   function toValidationInfoNode (This : in out PageValidationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out PageValidationView; document_Param : access Document_Package.Document'Class);
   function getTransformInfoInterface (This : in out PageValidationView) return TransformInfoInterface_Access;

end views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package;


