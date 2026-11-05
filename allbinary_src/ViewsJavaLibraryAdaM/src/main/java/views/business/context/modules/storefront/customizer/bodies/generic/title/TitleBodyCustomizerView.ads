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

limited with views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package;
package views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package_References is
   type TitleBodyCustomizerView_Access is access all views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package.TitleBodyCustomizerView'Class;
   type TitleBodyCustomizerView_Access_Array is array (Natural range <>) of TitleBodyCustomizerView_Access;
   type TitleBodyCustomizerView_Access_Array_Access is access all TitleBodyCustomizerView_Access_Array;
   type TitleBodyCustomizerView_Access_Array_Access_Array is array (Natural range <>) of TitleBodyCustomizerView_Access_Array_Access;
   type TitleBodyCustomizerView_Access_Array_Access_Array_Access is access all TitleBodyCustomizerView_Access_Array_Access_Array;
end views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package_References;

with views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package;
with org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TitleBodyValidation_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;
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
   subtype TitleBodyValidation_Access is org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package_References.TitleBodyValidation_Access;
   use type TitleBodyValidation_Access;
   subtype TitleBodyValidation_Access_Array is org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package_References.TitleBodyValidation_Access_Array;
   use type TitleBodyValidation_Access_Array;
   subtype TitleBodyValidation_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package_References.TitleBodyValidation_Access_Array_Access;
   use type TitleBodyValidation_Access_Array_Access;
   subtype TitleBodyValidation_Access_Array_Access_Array is org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package_References.TitleBodyValidation_Access_Array_Access_Array;
   use type TitleBodyValidation_Access_Array_Access_Array;
   subtype TitleBodyValidation_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package_References.TitleBodyValidation_Access_Array_Access_Array_Access;
   use type TitleBodyValidation_Access_Array_Access_Array_Access;
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


   subtype TitleBodyCustomizerView_Access is views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package_References.TitleBodyCustomizerView_Access;
   function "=" (Left, Right : TitleBodyCustomizerView_Access) return Boolean renames views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package_References."=";
   subtype TitleBodyCustomizerView_Access_Array is views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package_References.TitleBodyCustomizerView_Access_Array;
   function "=" (Left, Right : TitleBodyCustomizerView_Access_Array) return Boolean renames views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package_References."=";
   subtype TitleBodyCustomizerView_Access_Array_Access is views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package_References.TitleBodyCustomizerView_Access_Array_Access;
   function "=" (Left, Right : TitleBodyCustomizerView_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package_References."=";
   subtype TitleBodyCustomizerView_Access_Array_Access_Array is views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package_References.TitleBodyCustomizerView_Access_Array_Access_Array;
   function "=" (Left, Right : TitleBodyCustomizerView_Access_Array_Access_Array) return Boolean renames views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package_References."=";
   subtype TitleBodyCustomizerView_Access_Array_Access_Array_Access is views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package_References.TitleBodyCustomizerView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TitleBodyCustomizerView_Access_Array_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package_References."=";

   type TitleBodyCustomizerView is new HttpStoreComponentView and DomNodeInterface with record
      TitleBodyCustomizerView_Field_logUtil : LogUtil_Access;
      titleBody : TitleBodyValidation_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out TitleBodyCustomizerView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TitleBodyCustomizerView_Access;
   procedure addDomNodeInterfaces (This : in out TitleBodyCustomizerView);
   function toXmlNode (This : in out TitleBodyCustomizerView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out TitleBodyCustomizerView; document_Param : access Document_Package.Document'Class);
   function view (This : in out TitleBodyCustomizerView) return Unbounded_String;

end views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package;


