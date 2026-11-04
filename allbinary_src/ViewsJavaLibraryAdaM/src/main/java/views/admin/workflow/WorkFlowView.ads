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

limited with views.admin.workflow.WorkFlowView_Package;
package views.admin.workflow.WorkFlowView_Package_References is
   type WorkFlowView_Access is access all views.admin.workflow.WorkFlowView_Package.WorkFlowView'Class;
   type WorkFlowView_Access_Array is array (Natural range <>) of WorkFlowView_Access;
   type WorkFlowView_Access_Array_Access is access all WorkFlowView_Access_Array;
   type WorkFlowView_Access_Array_Access_Array is array (Natural range <>) of WorkFlowView_Access_Array_Access;
   type WorkFlowView_Access_Array_Access_Array_Access is access all WorkFlowView_Access_Array_Access_Array;
end views.admin.workflow.WorkFlowView_Package_References;

with views.admin.workflow.WorkFlowView_Package_References;
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
limited with org.allbinary.logic.control.workflow.WorkFlowInterface_Package;
with org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.admin.workflow.WorkFlowView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package WorkFlowInterface_Package renames Standard.org.allbinary.logic.control.workflow.WorkFlowInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
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
   subtype WorkFlowInterface_Access is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access;
   use type WorkFlowInterface_Access;
   subtype WorkFlowInterface_Access_Array is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array;
   use type WorkFlowInterface_Access_Array;
   subtype WorkFlowInterface_Access_Array_Access is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array_Access;
   use type WorkFlowInterface_Access_Array_Access;
   subtype WorkFlowInterface_Access_Array_Access_Array is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array_Access_Array;
   use type WorkFlowInterface_Access_Array_Access_Array;
   subtype WorkFlowInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array_Access_Array_Access;
   use type WorkFlowInterface_Access_Array_Access_Array_Access;
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


   subtype WorkFlowView_Access is views.admin.workflow.WorkFlowView_Package_References.WorkFlowView_Access;
   function "=" (Left, Right : WorkFlowView_Access) return Boolean renames views.admin.workflow.WorkFlowView_Package_References."=";
   subtype WorkFlowView_Access_Array is views.admin.workflow.WorkFlowView_Package_References.WorkFlowView_Access_Array;
   function "=" (Left, Right : WorkFlowView_Access_Array) return Boolean renames views.admin.workflow.WorkFlowView_Package_References."=";
   subtype WorkFlowView_Access_Array_Access is views.admin.workflow.WorkFlowView_Package_References.WorkFlowView_Access_Array_Access;
   function "=" (Left, Right : WorkFlowView_Access_Array_Access) return Boolean renames views.admin.workflow.WorkFlowView_Package_References."=";
   subtype WorkFlowView_Access_Array_Access_Array is views.admin.workflow.WorkFlowView_Package_References.WorkFlowView_Access_Array_Access_Array;
   function "=" (Left, Right : WorkFlowView_Access_Array_Access_Array) return Boolean renames views.admin.workflow.WorkFlowView_Package_References."=";
   subtype WorkFlowView_Access_Array_Access_Array_Access is views.admin.workflow.WorkFlowView_Package_References.WorkFlowView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WorkFlowView_Access_Array_Access_Array_Access) return Boolean renames views.admin.workflow.WorkFlowView_Package_References."=";

   type WorkFlowView is new HttpStoreComponentView and DomNodeInterface with record
      logUtil : LogUtil_Access;
      workFlowInterface : WorkFlowInterface_Access;
   end record;

   procedure Initialize (This : in out WorkFlowView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return WorkFlowView_Access;
   function toXmlNode (This : in out WorkFlowView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out WorkFlowView; document_Param : access Document_Package.Document'Class);
   procedure addDomNodeInterfaces (This : in out WorkFlowView);
   function view (This : in out WorkFlowView) return Unbounded_String;

end views.admin.workflow.WorkFlowView_Package;


