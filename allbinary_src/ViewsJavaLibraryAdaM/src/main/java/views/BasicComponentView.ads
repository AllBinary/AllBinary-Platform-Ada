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
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
with org.allbinary.logic.visual.transform.BasicTransformer_Package; use org.allbinary.logic.visual.transform.BasicTransformer_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package views.BasicComponentView_Package is

   package XmlDocumentHelper_Package renames org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package ServiceClientInformationInterfaceFactory_Package renames org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
   package BasicTransformer_Package renames org.allbinary.logic.visual.transform.BasicTransformer_Package;
   package TransformInterface_Package renames org.allbinary.logic.visual.transform.TransformInterface_Package;
   package TransformDocumentFactory_Package renames org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package;
   package TransformDocumentInterface_Package renames org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type BasicComponentView is tagged;
   type BasicComponentView_Access is access all BasicComponentView'Class;
   type BasicComponentView_Access_Array is array (Natural range <>) of BasicComponentView_Access;
   type BasicComponentView_Access_Array_Access is access all BasicComponentView_Access_Array;

   type BasicComponentView is new TransformInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      transformDocumentInterface : TransformDocumentInterface_Access;
      transformInfoInterface : TransformInfoInterface_Access;
      NO_TYPE : Integer;
   end record;

   procedure Initialize (This : in out BasicComponentView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return BasicComponentView_Access;
   function getTypeId (This : in out BasicComponentView) return Integer;
   procedure getTypeId (This : in out BasicComponentView);
   function getTransformDocumentInterface (This : in out BasicComponentView) return TransformDocumentInterface_Access;
   procedure getTransformDocumentInterface (This : in out BasicComponentView);
   procedure setTransformDocumentInterface (This : in out BasicComponentView; transformDocumentInterface : TransformDocumentInterface_Access);
   function getTransformInfoInterface (This : in out BasicComponentView) return TransformInfoInterface_Access;
   procedure getTransformInfoInterface (This : in out BasicComponentView);
   procedure setTransformInfoInterface (This : in out BasicComponentView; transformInfoInterface : TransformInfoInterface_Access);
   function toXmlDoc (This : in out BasicComponentView) return Document_Access;
   procedure toXmlDoc (This : in out BasicComponentView);
   function getDoc (This : in out BasicComponentView) return Document_Access;
   procedure getDoc (This : in out BasicComponentView);
   function view (This : in out BasicComponentView) return Unbounded_String;
   procedure view (This : in out BasicComponentView);

end views.BasicComponentView_Package;


