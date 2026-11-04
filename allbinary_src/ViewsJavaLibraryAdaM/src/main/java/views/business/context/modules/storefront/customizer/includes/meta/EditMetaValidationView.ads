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

limited with views.business.context.modules.storefront.customizer.includes.meta.EditMetaValidationView_Package;
package views.business.context.modules.storefront.customizer.includes.meta.EditMetaValidationView_Package_References is
   type EditMetaValidationView_Access is access all views.business.context.modules.storefront.customizer.includes.meta.EditMetaValidationView_Package.EditMetaValidationView'Class;
   type EditMetaValidationView_Access_Array is array (Natural range <>) of EditMetaValidationView_Access;
   type EditMetaValidationView_Access_Array_Access is access all EditMetaValidationView_Access_Array;
   type EditMetaValidationView_Access_Array_Access_Array is array (Natural range <>) of EditMetaValidationView_Access_Array_Access;
   type EditMetaValidationView_Access_Array_Access_Array_Access is access all EditMetaValidationView_Access_Array_Access_Array;
end views.business.context.modules.storefront.customizer.includes.meta.EditMetaValidationView_Package_References;

with views.business.context.modules.storefront.customizer.includes.meta.EditMetaValidationView_Package_References;
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
with views.business.context.modules.storefront.customizer.includes.meta.MetaView_Package; use views.business.context.modules.storefront.customizer.includes.meta.MetaView_Package;

package views.business.context.modules.storefront.customizer.includes.meta.EditMetaValidationView_Package is

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


   subtype EditMetaValidationView_Access is views.business.context.modules.storefront.customizer.includes.meta.EditMetaValidationView_Package_References.EditMetaValidationView_Access;
   function "=" (Left, Right : EditMetaValidationView_Access) return Boolean renames views.business.context.modules.storefront.customizer.includes.meta.EditMetaValidationView_Package_References."=";
   subtype EditMetaValidationView_Access_Array is views.business.context.modules.storefront.customizer.includes.meta.EditMetaValidationView_Package_References.EditMetaValidationView_Access_Array;
   function "=" (Left, Right : EditMetaValidationView_Access_Array) return Boolean renames views.business.context.modules.storefront.customizer.includes.meta.EditMetaValidationView_Package_References."=";
   subtype EditMetaValidationView_Access_Array_Access is views.business.context.modules.storefront.customizer.includes.meta.EditMetaValidationView_Package_References.EditMetaValidationView_Access_Array_Access;
   function "=" (Left, Right : EditMetaValidationView_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.customizer.includes.meta.EditMetaValidationView_Package_References."=";
   subtype EditMetaValidationView_Access_Array_Access_Array is views.business.context.modules.storefront.customizer.includes.meta.EditMetaValidationView_Package_References.EditMetaValidationView_Access_Array_Access_Array;
   function "=" (Left, Right : EditMetaValidationView_Access_Array_Access_Array) return Boolean renames views.business.context.modules.storefront.customizer.includes.meta.EditMetaValidationView_Package_References."=";
   subtype EditMetaValidationView_Access_Array_Access_Array_Access is views.business.context.modules.storefront.customizer.includes.meta.EditMetaValidationView_Package_References.EditMetaValidationView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EditMetaValidationView_Access_Array_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.customizer.includes.meta.EditMetaValidationView_Package_References."=";

   type EditMetaValidationView is new MetaView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out EditMetaValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return EditMetaValidationView_Access;
   function isValid (This : in out EditMetaValidationView) return Boolean;
   function validationInfo (This : in out EditMetaValidationView) return Unbounded_String;
   function toValidationInfoDoc (This : in out EditMetaValidationView) return Document_Access;
   function toValidationInfoNode (This : in out EditMetaValidationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out EditMetaValidationView; document_Param : access Document_Package.Document'Class);

end views.business.context.modules.storefront.customizer.includes.meta.EditMetaValidationView_Package;


