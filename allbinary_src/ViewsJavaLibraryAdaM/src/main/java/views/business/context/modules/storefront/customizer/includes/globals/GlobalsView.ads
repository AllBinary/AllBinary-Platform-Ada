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

limited with views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package;
package views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package_References is
   type GlobalsView_Access is access all views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package.GlobalsView'Class;
   type GlobalsView_Access_Array is array (Natural range <>) of GlobalsView_Access;
   type GlobalsView_Access_Array_Access is access all GlobalsView_Access_Array;
   type GlobalsView_Access_Array_Access_Array is array (Natural range <>) of GlobalsView_Access_Array_Access;
   type GlobalsView_Access_Array_Access_Array_Access is access all GlobalsView_Access_Array_Access_Array;
end views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package_References;

with views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package_References;
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
limited with org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsValidation_Package;
with org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsValidation_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package GlobalsValidation_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsValidation_Package;
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
   subtype GlobalsValidation_Access is org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsValidation_Package_References.GlobalsValidation_Access;
   use type GlobalsValidation_Access;
   subtype GlobalsValidation_Access_Array is org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsValidation_Package_References.GlobalsValidation_Access_Array;
   use type GlobalsValidation_Access_Array;
   subtype GlobalsValidation_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsValidation_Package_References.GlobalsValidation_Access_Array_Access;
   use type GlobalsValidation_Access_Array_Access;
   subtype GlobalsValidation_Access_Array_Access_Array is org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsValidation_Package_References.GlobalsValidation_Access_Array_Access_Array;
   use type GlobalsValidation_Access_Array_Access_Array;
   subtype GlobalsValidation_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsValidation_Package_References.GlobalsValidation_Access_Array_Access_Array_Access;
   use type GlobalsValidation_Access_Array_Access_Array_Access;
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


   subtype GlobalsView_Access is views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package_References.GlobalsView_Access;
   function "=" (Left, Right : GlobalsView_Access) return Boolean renames views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package_References."=";
   subtype GlobalsView_Access_Array is views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package_References.GlobalsView_Access_Array;
   function "=" (Left, Right : GlobalsView_Access_Array) return Boolean renames views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package_References."=";
   subtype GlobalsView_Access_Array_Access is views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package_References.GlobalsView_Access_Array_Access;
   function "=" (Left, Right : GlobalsView_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package_References."=";
   subtype GlobalsView_Access_Array_Access_Array is views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package_References.GlobalsView_Access_Array_Access_Array;
   function "=" (Left, Right : GlobalsView_Access_Array_Access_Array) return Boolean renames views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package_References."=";
   subtype GlobalsView_Access_Array_Access_Array_Access is views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package_References.GlobalsView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GlobalsView_Access_Array_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package_References."=";

   type GlobalsView is new HttpStoreComponentView and DomNodeInterface with record
      logUtil : LogUtil_Access;
      globalsValidation : GlobalsValidation_Access;
   end record;

   procedure Initialize (This : in out GlobalsView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return GlobalsView_Access;
   procedure addDomNodeInterfaces (This : in out GlobalsView);
   function toXmlNode (This : in out GlobalsView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out GlobalsView; document_Param : access Document_Package.Document'Class);
   function view (This : in out GlobalsView) return Unbounded_String;

end views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package;


