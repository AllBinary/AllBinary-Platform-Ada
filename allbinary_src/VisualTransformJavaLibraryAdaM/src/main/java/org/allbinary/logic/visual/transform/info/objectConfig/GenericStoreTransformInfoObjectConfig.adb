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


with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.regex.replace.Replace_Package; use org.allbinary.logic.string_Id.regex.replace.Replace_Package;
with org.allbinary.logic.visual.transform.info.RootTransformInfoData_Package; use org.allbinary.logic.visual.transform.info.RootTransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package; use org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package;
with org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package; use org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package;
with org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package; use org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;

package body org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package is

   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Replace_Package renames Standard.org.allbinary.logic.string_Id.regex.replace.Replace_Package;
   package RootTransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.RootTransformInfoData_Package;
   package TransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
   package TransformTemplateFactory_Package renames Standard.org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package;
   package TransformTemplateInterface_Package renames Standard.org.allbinary.logic.visual.transform.template.TransformTemplateInterface_Package;
   package TransformTemplateCustomizerUtil_Package renames Standard.org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out GenericStoreTransformInfoObjectConfig'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GenericStoreTransformInfoObjectConfig'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        TransformInfoObjectConfig_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.abeClientInformation := abeClientInformation;
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return GenericStoreTransformInfoObjectConfig_Access is
      This : constant GenericStoreTransformInfoObjectConfig_Access := new GenericStoreTransformInfoObjectConfig;
   begin
      GenericStoreTransformInfoObjectConfig_Package.Initialize (This.all, abeClientInformation_Param, transformInfoInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out GenericStoreTransformInfoObjectConfig'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      document : constant Document_Access := Document_Access (document_Param);
   begin
        TransformInfoObjectConfig_Package.Initialize (This, transformInfoInterface, document);
        Initialize_Fields (This);
        This.abeClientInformation := abeClientInformation;
        GenericStoreTransformInfoObjectConfig'Class (This).setDocument (GenericStoreTransformInfoObjectConfig'Class (This).generate (GenericStoreTransformInfoObjectConfig'Class (This).toXmlDoc));
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class) return GenericStoreTransformInfoObjectConfig_Access is
      This : constant GenericStoreTransformInfoObjectConfig_Access := new GenericStoreTransformInfoObjectConfig;
   begin
      GenericStoreTransformInfoObjectConfig_Package.Initialize (This.all, abeClientInformation_Param, transformInfoInterface_Param, document_Param);
      return This;
   end Create;

   procedure Initialize (This : in out GenericStoreTransformInfoObjectConfig'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        TransformInfoObjectConfig_Package.Initialize (This, transformInfoInterface, name, type_Id);
        Initialize_Fields (This);
        This.abeClientInformation := abeClientInformation;
        GenericStoreTransformInfoObjectConfig'Class (This).setDocument (GenericStoreTransformInfoObjectConfig'Class (This).generate (GenericStoreTransformInfoObjectConfig'Class (This).toXmlDoc));
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String) return GenericStoreTransformInfoObjectConfig_Access is
      This : constant GenericStoreTransformInfoObjectConfig_Access := new GenericStoreTransformInfoObjectConfig;
   begin
      GenericStoreTransformInfoObjectConfig_Package.Initialize (This.all, abeClientInformation_Param, transformInfoInterface_Param, name, type_Id);
      return This;
   end Create;

   --  throws Exception
   function generate (This : in out GenericStoreTransformInfoObjectConfig; objectConfigDocument_Param : access Document_Package.Document'Class) return Document_Access is
      objectConfigDocument : constant Document_Access := Document_Access (objectConfigDocument_Param);
      stringBuffer : StringMaker_Access;
      transformInfoHttpStoreInterface : TransformInfoHttp_Access;
      objectConfigDocumentString : Unbounded_String;
      replaceHashMap : HashMap_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("TransformInfo: "));
            if (GenericStoreTransformInfoObjectConfig'Class (This).getTransformInfoInterface) /= (null) then
                stringBuffer.append (GenericStoreTransformInfoObjectConfig'Class (This).getTransformInfoInterface.getName);
            else
                stringBuffer.append (To_Unbounded_String ("No Owner!?#@"));
            end if;
            This.logUtil.putF (stringBuffer.toString, GenericStoreTransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("generate()"));
        end if;
        transformInfoHttpStoreInterface := TransformInfoHttp_Access (GenericStoreTransformInfoObjectConfig'Class (This).getTransformInfoInterface);
        objectConfigDocumentString := XmlDocumentHelper_Package.toString (objectConfigDocument);
        replaceHashMap := GenericStoreTransformInfoObjectConfig'Class (This).createReplaceHashMap (transformInfoHttpStoreInterface, objectConfigDocumentString);
        return GenericStoreTransformInfoObjectConfig'Class (This).generate (objectConfigDocumentString, replaceHashMap);
   end generate;

   --  throws Exception
   function createReplaceHashMap (This : in out GenericStoreTransformInfoObjectConfig; transformInfoHttpStoreInterface_Param : access TransformInfoHttp_Package.TransformInfoHttp'Class; objectConfigDocumentString : Unbounded_String) return HashMap_Access is
      transformInfoHttpStoreInterface : constant TransformInfoHttp_Access := TransformInfoHttp_Access (transformInfoHttpStoreInterface_Param);
      storeName : Unbounded_String;
      hashMap : HashMap_Access;
      transformInfoObjectConfigData : TransformInfoObjectConfigData_Access;
      pageName : Unbounded_String;
   begin
        storeName := transformInfoHttpStoreInterface.getStoreName;
        hashMap := GenericStoreTransformInfoObjectConfig'Class (This).createHashMap (transformInfoHttpStoreInterface, objectConfigDocumentString);
        transformInfoObjectConfigData := TransformInfoObjectConfigData_Package.getInstance;
        hashMap.put ((transformInfoObjectConfigData.VARKEY) + (StoreFrontData_Package.getInstance.NAME), Java_Box (storeName));
        pageName := TransformTemplateCustomizerUtil_Package.getInstance.getPageNameHack (GenericStoreTransformInfoObjectConfig'Class (This).getTransformInfoInterface.getName, storeName);
        hashMap.put ((transformInfoObjectConfigData.VARKEY) + (TransformInfoData_Package.getInstance.PARTIAL), Java_Box (pageName));
        return hashMap;
   end createReplaceHashMap;

   --  throws Exception
   function createHashMap (This : in out GenericStoreTransformInfoObjectConfig; transformInfoHttpStoreInterface_Param : access TransformInfoHttp_Package.TransformInfoHttp'Class; objectConfigDocumentString : Unbounded_String) return HashMap_Access is
      transformInfoHttpStoreInterface : constant TransformInfoHttp_Access := TransformInfoHttp_Access (transformInfoHttpStoreInterface_Param);
      hashMap : HashMap_Access;
      storeName : Unbounded_String;
      propertiesHashMap : HashMap_Access;
      templateNameOverride : Unbounded_String;
      templateNameStringBuffer : StringMaker_Access;
      templateNameKey : Unbounded_String;
      templateInterface : TransformTemplateInterface_Access;
      selectedTemplate : Unbounded_String;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        storeName := transformInfoHttpStoreInterface.getStoreName;
        propertiesHashMap := transformInfoHttpStoreInterface.getPropertiesHashMap;
        templateNameOverride := StringUtil_Package.getInstance.getNonNull (Java_Unbox (propertiesHashMap.get (TransformInfoData_Package.getInstance.PARTIAL)));
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("TemplateNameOverride: ") & templateNameOverride, GenericStoreTransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("generate()"));
        end if;
        templateNameStringBuffer := StringMaker_Package.Create;
        templateNameStringBuffer.append (storeName);
        templateNameStringBuffer.append (templateNameOverride);
        templateNameStringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        templateNameStringBuffer.append (RootTransformInfoData_Package.NAME);
        templateNameKey := (TransformInfoObjectConfigData_Package.getInstance.VARKEY) + (TransformInfoData_Package.getInstance.OWNER);
        if (Java_Index_Of (objectConfigDocumentString, Java_Image (templateNameKey))) /= (-(1)) then
            templateInterface := TransformTemplateInterface_Access (TransformTemplateFactory_Package.getInstance.getInstance (This.abeClientInformation, templateNameStringBuffer.toString, transformInfoHttpStoreInterface.getPropertiesHashMap, transformInfoHttpStoreInterface.getPageContext));
            selectedTemplate := templateInterface.getName;
            hashMap.put (Java_Box (templateNameKey), Java_Box (selectedTemplate));
        end if;
        return hashMap;
   end createHashMap;

   --  throws Exception
   function generate (This : in out GenericStoreTransformInfoObjectConfig; objectConfigDocumentString : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) return Document_Access is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      replace : Replace_Access;
      newObjectConfigDocument : Document_Access;
   begin
        replace := Replace_Package.Create (hashMap);
        newObjectConfigDocument := DomDocumentHelper_Package.create (replace.all_Id (objectConfigDocumentString));
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Final ObjectConfig: ") & XmlDocumentHelper_Package.toString (newObjectConfigDocument), GenericStoreTransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("generate()"));
        end if;
        return newObjectConfigDocument;
   end generate;

   procedure generate (This : in out GenericStoreTransformInfoObjectConfig; objectConfigDocument_Param : access Document_Package.Document'Class) is
      Java_Result : constant Document_Access := GenericStoreTransformInfoObjectConfig'Class (This).generate (objectConfigDocument_Param => objectConfigDocument_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end generate;

   procedure createReplaceHashMap (This : in out GenericStoreTransformInfoObjectConfig; transformInfoHttpStoreInterface_Param : access TransformInfoHttp_Package.TransformInfoHttp'Class; objectConfigDocumentString : Unbounded_String) is
      Java_Result : constant HashMap_Access := GenericStoreTransformInfoObjectConfig'Class (This).createReplaceHashMap (transformInfoHttpStoreInterface_Param => transformInfoHttpStoreInterface_Param, objectConfigDocumentString => objectConfigDocumentString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createReplaceHashMap;

   procedure createHashMap (This : in out GenericStoreTransformInfoObjectConfig; transformInfoHttpStoreInterface_Param : access TransformInfoHttp_Package.TransformInfoHttp'Class; objectConfigDocumentString : Unbounded_String) is
      Java_Result : constant HashMap_Access := GenericStoreTransformInfoObjectConfig'Class (This).createHashMap (transformInfoHttpStoreInterface_Param => transformInfoHttpStoreInterface_Param, objectConfigDocumentString => objectConfigDocumentString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createHashMap;

   procedure generate (This : in out GenericStoreTransformInfoObjectConfig; objectConfigDocumentString : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant Document_Access := GenericStoreTransformInfoObjectConfig'Class (This).generate (objectConfigDocumentString => objectConfigDocumentString, hashMap_Param => hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end generate;

end org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package;


