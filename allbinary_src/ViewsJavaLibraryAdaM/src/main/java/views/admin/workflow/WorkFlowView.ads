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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.workflow.WorkFlowInterface_Package; use org.allbinary.logic.control.workflow.WorkFlowInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.admin.workflow.WorkFlowView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package WorkFlowInterface_Package renames Standard.org.allbinary.logic.control.workflow.WorkFlowInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type WorkFlowView is tagged;
   type WorkFlowView_Access is access all WorkFlowView'Class;
   type WorkFlowView_Access_Array is array (Natural range <>) of WorkFlowView_Access;
   type WorkFlowView_Access_Array_Access is access all WorkFlowView_Access_Array;

   type WorkFlowView is new HttpStoreComponentView and DomNodeInterface with record
      logUtil : LogUtil_Access;
      workFlowInterface : WorkFlowInterface_Access;
   end record;

   procedure Initialize (This : in out WorkFlowView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return WorkFlowView_Access;
   function toXmlNode (This : in out WorkFlowView; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out WorkFlowView; document_Param : access Document'Class);
   procedure addDomNodeInterfaces (This : in out WorkFlowView);
   function view (This : in out WorkFlowView) return Unbounded_String;

end views.admin.workflow.WorkFlowView_Package;


