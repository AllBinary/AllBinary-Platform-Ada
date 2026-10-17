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


package body org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package is

   procedure Initialize_Fields (This : in out GenericStoreTransformInfoObjectConfig'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GenericStoreTransformInfoObjectConfig'Class; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        TransformInfoObjectConfig_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.abeClientInformation := abeClientInformation;
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) return GenericStoreTransformInfoObjectConfig_Access is
      This : constant GenericStoreTransformInfoObjectConfig_Access := new GenericStoreTransformInfoObjectConfig;
   begin
      GenericStoreTransformInfoObjectConfig_Package.Initialize (This.all, abeClientInformation, transformInfoInterface);
      return This;
   end Create;

   procedure Initialize (This : in out GenericStoreTransformInfoObjectConfig'Class; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; document : Document_Access) is
   begin
        TransformInfoObjectConfig_Package.Initialize (This, transformInfoInterface, document);
        Initialize_Fields (This);
        This.abeClientInformation := abeClientInformation;
        This.setDocument (This.generate (This.toXmlDoc));
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; document : Document_Access) return GenericStoreTransformInfoObjectConfig_Access is
      This : constant GenericStoreTransformInfoObjectConfig_Access := new GenericStoreTransformInfoObjectConfig;
   begin
      GenericStoreTransformInfoObjectConfig_Package.Initialize (This.all, abeClientInformation, transformInfoInterface, document);
      return This;
   end Create;

   procedure Initialize (This : in out GenericStoreTransformInfoObjectConfig'Class; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; name : Unbounded_String; type_Id : Unbounded_String) is
   begin
        TransformInfoObjectConfig_Package.Initialize (This, transformInfoInterface, name, type_Id);
        Initialize_Fields (This);
        This.abeClientInformation := abeClientInformation;
        This.setDocument (This.generate (This.toXmlDoc));
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; name : Unbounded_String; type_Id : Unbounded_String) return GenericStoreTransformInfoObjectConfig_Access is
      This : constant GenericStoreTransformInfoObjectConfig_Access := new GenericStoreTransformInfoObjectConfig;
   begin
      GenericStoreTransformInfoObjectConfig_Package.Initialize (This.all, abeClientInformation, transformInfoInterface, name, type_Id);
      return This;
   end Create;

   --  throws Exception
   function generate (This : in out GenericStoreTransformInfoObjectConfig; objectConfigDocument : Document_Access) return Document_Access is
      stringBuffer : StringMaker_Access;
      transformInfoHttpStoreInterface : TransformInfoHttp_Access;
      objectConfigDocumentString : Unbounded_String;
      replaceHashMap : HashMap_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("TransformInfo: "));
            if (This.getTransformInfoInterface) /= (null) then
                stringBuffer.append (This.getTransformInfoInterface.getName);
            else
                stringBuffer.append (To_Unbounded_String ("No Owner!?#@"));
            end if;
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("generate()"));
        end if;
        transformInfoHttpStoreInterface := TransformInfoHttp_Access (This.getTransformInfoInterface);
        objectConfigDocumentString := XmlDocumentHelper_Package.toString (objectConfigDocument);
        replaceHashMap := This.createReplaceHashMap (transformInfoHttpStoreInterface, objectConfigDocumentString);
        return This.generate (objectConfigDocumentString, replaceHashMap);
   end generate;

   --  throws Exception
   function createReplaceHashMap (This : in out GenericStoreTransformInfoObjectConfig; transformInfoHttpStoreInterface : TransformInfoHttp_Access; objectConfigDocumentString : Unbounded_String) return HashMap_Access is
      storeName : Unbounded_String;
      hashMap : HashMap_Access;
      transformInfoObjectConfigData : TransformInfoObjectConfigData_Access;
      pageName : Unbounded_String;
   begin
        storeName := transformInfoHttpStoreInterface.getStoreName;
        hashMap := This.createHashMap (transformInfoHttpStoreInterface, objectConfigDocumentString);
        transformInfoObjectConfigData := TransformInfoObjectConfigData_Package.getInstance;
        hashMap.put ((transformInfoObjectConfigData.VARKEY) + (StoreFrontData_Package.getInstance.NAME), storeName);
        pageName := TransformTemplateCustomizerUtil_Package.getInstance.getPageNameHack (This.getTransformInfoInterface.getName, storeName);
        hashMap.put ((transformInfoObjectConfigData.VARKEY) + (TransformInfoData_Package.getInstance.PARTIAL), pageName);
        return hashMap;
   end createReplaceHashMap;

   --  throws Exception
   function createHashMap (This : in out GenericStoreTransformInfoObjectConfig; transformInfoHttpStoreInterface : TransformInfoHttp_Access; objectConfigDocumentString : Unbounded_String) return HashMap_Access is
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
        templateNameOverride := StringUtil_Package.getInstance.getNonNull (Unbounded_String (propertiesHashMap.get (TransformInfoData_Package.getInstance.PARTIAL)));
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("TemplateNameOverride: ") & templateNameOverride, This'Unchecked_Access, To_Unbounded_String ("generate()"));
        end if;
        templateNameStringBuffer := StringMaker_Package.Create;
        templateNameStringBuffer.append (storeName);
        templateNameStringBuffer.append (templateNameOverride);
        templateNameStringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        templateNameStringBuffer.append (RootTransformInfoData_Package.NAME);
        templateNameKey := (TransformInfoObjectConfigData_Package.getInstance.VARKEY) + (TransformInfoData_Package.getInstance.OWNER);
        if ((Index (objectConfigDocumentString, To_String (templateNameKey)) - 1)) /= (-(1)) then
            templateInterface := TransformTemplateFactory_Package.getInstance.getInstance (This.abeClientInformation, templateNameStringBuffer.toString, transformInfoHttpStoreInterface.getPropertiesHashMap, transformInfoHttpStoreInterface.getPageContext);
            selectedTemplate := templateInterface.getName;
            hashMap.put (templateNameKey, selectedTemplate);
        end if;
        return hashMap;
   end createHashMap;

   --  throws Exception
   function generate (This : in out GenericStoreTransformInfoObjectConfig; objectConfigDocumentString : Unbounded_String; hashMap : HashMap_Access) return Document_Access is
      replace : Replace_Access;
      newObjectConfigDocument : Document_Access;
   begin
        replace := Replace_Package.Create (hashMap);
        newObjectConfigDocument := DomDocumentHelper_Package.create (replace.all_Id (objectConfigDocumentString));
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Final ObjectConfig: ") & XmlDocumentHelper_Package.toString (newObjectConfigDocument), This'Unchecked_Access, To_Unbounded_String ("generate()"));
        end if;
        return newObjectConfigDocument;
   end generate;

   procedure generate (This : in out GenericStoreTransformInfoObjectConfig; objectConfigDocument : Document_Access) is
      Java_Result : constant Document_Access := GenericStoreTransformInfoObjectConfig'Class (This).generate (objectConfigDocument);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end generate;

   procedure createReplaceHashMap (This : in out GenericStoreTransformInfoObjectConfig; transformInfoHttpStoreInterface : TransformInfoHttp_Access; objectConfigDocumentString : Unbounded_String) is
      Java_Result : constant HashMap_Access := GenericStoreTransformInfoObjectConfig'Class (This).createReplaceHashMap (transformInfoHttpStoreInterface, objectConfigDocumentString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createReplaceHashMap;

   procedure createHashMap (This : in out GenericStoreTransformInfoObjectConfig; transformInfoHttpStoreInterface : TransformInfoHttp_Access; objectConfigDocumentString : Unbounded_String) is
      Java_Result : constant HashMap_Access := GenericStoreTransformInfoObjectConfig'Class (This).createHashMap (transformInfoHttpStoreInterface, objectConfigDocumentString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createHashMap;

   procedure generate (This : in out GenericStoreTransformInfoObjectConfig; objectConfigDocumentString : Unbounded_String; hashMap : HashMap_Access) is
      Java_Result : constant Document_Access := GenericStoreTransformInfoObjectConfig'Class (This).generate (objectConfigDocumentString, hashMap);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end generate;

end org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package;


