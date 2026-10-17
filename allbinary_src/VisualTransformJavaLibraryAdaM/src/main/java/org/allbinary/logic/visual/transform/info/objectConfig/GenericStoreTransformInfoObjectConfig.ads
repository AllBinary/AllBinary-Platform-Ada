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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.regex.replace.Replace_Package; use org.allbinary.logic.string_Id.regex.replace.Replace_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.visual.transform.info.RootTransformInfoData_Package; use org.allbinary.logic.visual.transform.info.RootTransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package; use org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package;
with org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package; use org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package;
with org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package; use org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package is

   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Replace_Package renames Standard.org.allbinary.logic.string_Id.regex.replace.Replace_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package RootTransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.RootTransformInfoData_Package;
   package TransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
   package TransformInfoHttp_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformTemplateFactory_Package renames Standard.org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package;
   package TransformTemplateInterface_Package renames Standard.org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package;
   package TransformTemplateCustomizerUtil_Package renames Standard.org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type GenericStoreTransformInfoObjectConfig is tagged;
   type GenericStoreTransformInfoObjectConfig_Access is access all GenericStoreTransformInfoObjectConfig'Class;
   type GenericStoreTransformInfoObjectConfig_Access_Array is array (Natural range <>) of GenericStoreTransformInfoObjectConfig_Access;
   type GenericStoreTransformInfoObjectConfig_Access_Array_Access is access all GenericStoreTransformInfoObjectConfig_Access_Array;

   type GenericStoreTransformInfoObjectConfig is new TransformInfoObjectConfig with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
   end record;

   procedure Initialize (This : in out GenericStoreTransformInfoObjectConfig'Class; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access);
   function Create (abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) return GenericStoreTransformInfoObjectConfig_Access;
   procedure Initialize (This : in out GenericStoreTransformInfoObjectConfig'Class; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; document : Document_Access);
   function Create (abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; document : Document_Access) return GenericStoreTransformInfoObjectConfig_Access;
   procedure Initialize (This : in out GenericStoreTransformInfoObjectConfig'Class; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; name : Unbounded_String; type_Id : Unbounded_String);
   function Create (abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; name : Unbounded_String; type_Id : Unbounded_String) return GenericStoreTransformInfoObjectConfig_Access;
   function generate (This : in out GenericStoreTransformInfoObjectConfig; objectConfigDocument : Document_Access) return Document_Access;
   procedure generate (This : in out GenericStoreTransformInfoObjectConfig; objectConfigDocument : Document_Access);
   function createReplaceHashMap (This : in out GenericStoreTransformInfoObjectConfig; transformInfoHttpStoreInterface : TransformInfoHttp_Access; objectConfigDocumentString : Unbounded_String) return HashMap_Access;
   procedure createReplaceHashMap (This : in out GenericStoreTransformInfoObjectConfig; transformInfoHttpStoreInterface : TransformInfoHttp_Access; objectConfigDocumentString : Unbounded_String);
   function createHashMap (This : in out GenericStoreTransformInfoObjectConfig; transformInfoHttpStoreInterface : TransformInfoHttp_Access; objectConfigDocumentString : Unbounded_String) return HashMap_Access;
   procedure createHashMap (This : in out GenericStoreTransformInfoObjectConfig; transformInfoHttpStoreInterface : TransformInfoHttp_Access; objectConfigDocumentString : Unbounded_String);
   function generate (This : in out GenericStoreTransformInfoObjectConfig; objectConfigDocumentString : Unbounded_String; hashMap : HashMap_Access) return Document_Access;
   procedure generate (This : in out GenericStoreTransformInfoObjectConfig; objectConfigDocumentString : Unbounded_String; hashMap : HashMap_Access);

end org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package;


