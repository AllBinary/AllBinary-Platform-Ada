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
with org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package; use org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package views.CustomUriTransformView_Package is

   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package ServiceClientInformationInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
   package TransformInfoCustomUriTransformer_Package renames Standard.org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package;
   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;
   package TransformDocumentFactory_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package;
   package TransformDocumentInterface_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type CustomUriTransformView is tagged;
   type CustomUriTransformView_Access is access all CustomUriTransformView'Class;
   type CustomUriTransformView_Access_Array is array (Natural range <>) of CustomUriTransformView_Access;
   type CustomUriTransformView_Access_Array_Access is access all CustomUriTransformView_Access_Array;

   type CustomUriTransformView is new TransformInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      transformInfoInterface : TransformInfoInterface_Access;
      transformDocumentInterface : TransformDocumentInterface_Access;
      NO_TYPE : Integer;
   end record;

   procedure Initialize (This : in out CustomUriTransformView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return CustomUriTransformView_Access;
   function getTypeId (This : in out CustomUriTransformView) return Integer;
   function getTransformInfoInterface (This : in out CustomUriTransformView) return TransformInfoInterface_Access;
   procedure setTransformInfoInterface (This : in out CustomUriTransformView; transformInfoInterface_Param : access TransformInfoInterface'Class);
   function getTransformDocumentInterface (This : in out CustomUriTransformView) return TransformDocumentInterface_Access;
   procedure setTransformDocumentInterface (This : in out CustomUriTransformView; transformDocumentInterface_Param : access TransformDocumentInterface'Class);
   function toXmlDoc (This : in out CustomUriTransformView) return Document_Access;
   function getDoc (This : in out CustomUriTransformView) return Document_Access;
   function view (This : in out CustomUriTransformView) return Unbounded_String;

end views.CustomUriTransformView_Package;


