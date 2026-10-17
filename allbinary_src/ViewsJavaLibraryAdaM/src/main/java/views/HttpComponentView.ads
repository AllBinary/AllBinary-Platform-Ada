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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
with org.allbinary.logic.visual.transform.BasicTransformer_Package; use org.allbinary.logic.visual.transform.BasicTransformer_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package; use org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package views.HttpComponentView_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package ServiceClientInformationInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
   package BasicTransformer_Package renames Standard.org.allbinary.logic.visual.transform.BasicTransformer_Package;
   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;
   package TransformDocumentInterface_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
   package TransformHttpRequestDocumentFactory_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package;
   package TransformInfoHttpComposite_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type HttpComponentView is tagged;
   type HttpComponentView_Access is access all HttpComponentView'Class;
   type HttpComponentView_Access_Array is array (Natural range <>) of HttpComponentView_Access;
   type HttpComponentView_Access_Array_Access is access all HttpComponentView_Access_Array;

   type HttpComponentView is new TransformInfoHttpComposite and TransformInterface with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      domNodeInterfaceVector : BasicArrayList_Access;
      transformDocumentInterface : TransformDocumentInterface_Access;
      NO_TYPE : Integer;
   end record;

   procedure Initialize (This : in out HttpComponentView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return HttpComponentView_Access;
   function getTypeId (This : in out HttpComponentView) return Integer;
   function getTransformDocumentInterface (This : in out HttpComponentView) return TransformDocumentInterface_Access;
   procedure setTransformDocumentInterface (This : in out HttpComponentView; transformDocumentInterface_Param : access TransformDocumentInterface_Package.TransformDocumentInterface'Class);
   procedure addDomNodeInterface (This : in out HttpComponentView; domNodeInterface_Param : access DomNodeInterface_Package.DomNodeInterface'Class);
   function toXmlDoc (This : in out HttpComponentView) return Document_Access;
   function getDoc (This : in out HttpComponentView) return Document_Access;
   function view (This : in out HttpComponentView) return Unbounded_String;

end views.HttpComponentView_Package;


