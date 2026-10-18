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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.document.DocumentToNode_Package; use org.allbinary.data.tree.dom.document.DocumentToNode_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.regex.replace.Replace_Package; use org.allbinary.logic.string_Id.regex.replace.Replace_Package;
with org.allbinary.logic.visual.transform.TransformFactory_Package; use org.allbinary.logic.visual.transform.TransformFactory_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.visual.transform.info.RootTransformInfoData_Package; use org.allbinary.logic.visual.transform.info.RootTransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package; use org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DocumentToNode_Package renames Standard.org.allbinary.data.tree.dom.document.DocumentToNode_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Replace_Package renames Standard.org.allbinary.logic.string_Id.regex.replace.Replace_Package;
   package TransformFactory_Package renames Standard.org.allbinary.logic.visual.transform.TransformFactory_Package;
   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;
   package RootTransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.RootTransformInfoData_Package;
   package TransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
   package TransformInfoDomNode_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out CompoundContextTransformInfoObjectConfig'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CompoundContextTransformInfoObjectConfig'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        GenericStoreTransformInfoObjectConfig_Package.Initialize (This, abeClientInformation, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return CompoundContextTransformInfoObjectConfig_Access is
      This : constant CompoundContextTransformInfoObjectConfig_Access := new CompoundContextTransformInfoObjectConfig;
   begin
      CompoundContextTransformInfoObjectConfig_Package.Initialize (This.all, abeClientInformation_Param, transformInfoInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out CompoundContextTransformInfoObjectConfig'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      document : constant Document_Access := Document_Access (document_Param);
   begin
        GenericStoreTransformInfoObjectConfig_Package.Initialize (This, abeClientInformation, transformInfoInterface, document);
        Initialize_Fields (This);
        CompoundContextTransformInfoObjectConfig'Class (This).setDocument (CompoundContextTransformInfoObjectConfig'Class (This).generate (CompoundContextTransformInfoObjectConfig'Class (This).toXmlDoc));
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class) return CompoundContextTransformInfoObjectConfig_Access is
      This : constant CompoundContextTransformInfoObjectConfig_Access := new CompoundContextTransformInfoObjectConfig;
   begin
      CompoundContextTransformInfoObjectConfig_Package.Initialize (This.all, abeClientInformation_Param, transformInfoInterface_Param, document_Param);
      return This;
   end Create;

   procedure Initialize (This : in out CompoundContextTransformInfoObjectConfig'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        GenericStoreTransformInfoObjectConfig_Package.Initialize (This, abeClientInformation, transformInfoInterface, name, type_Id);
        Initialize_Fields (This);
        CompoundContextTransformInfoObjectConfig'Class (This).setDocument (CompoundContextTransformInfoObjectConfig'Class (This).generate (CompoundContextTransformInfoObjectConfig'Class (This).toXmlDoc));
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String) return CompoundContextTransformInfoObjectConfig_Access is
      This : constant CompoundContextTransformInfoObjectConfig_Access := new CompoundContextTransformInfoObjectConfig;
   begin
      CompoundContextTransformInfoObjectConfig_Package.Initialize (This.all, abeClientInformation_Param, transformInfoInterface_Param, name, type_Id);
      return This;
   end Create;

   --  throws Exception
   function get (This : in out CompoundContextTransformInfoObjectConfig) return Unbounded_String is
      storeName : Unbounded_String;
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
      templateNameOverride : Unbounded_String;
      stringBuffer : StringMaker_Access;
      rootComponentInterface : TransformInterface_Access;
      viewVector : BasicArrayList_Access;
      rootView : Unbounded_String;
      startXMLHeader : Unbounded_String;
      endXMLHeader : Unbounded_String;
      size : Integer;
      objectConfigTransformInfoDomNode : TransformInfoDomNode_Access;
      templateKey : Unbounded_String;
      componentInterface : TransformInterface_Access;
      replacementViewString : Unbounded_String;
      templateValue : Unbounded_String;
      replace : Replace_Access;
      index : Integer;
   begin
        storeName := CompoundContextTransformInfoObjectConfig'Class (This).getTransformInfoInterface.getStoreName;
        httpTransformInfoInterface := TransformInfoHttpInterface_Access (CompoundContextTransformInfoObjectConfig'Class (This).getTransformInfoInterface);
        templateNameOverride := StringUtil_Package.getInstance.getNonNull (Java_Unbox (httpTransformInfoInterface.getPropertiesHashMap.get (TransformInfoData_Package.getInstance.PARTIAL)));
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (storeName);
        stringBuffer.append (templateNameOverride);
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (RootTransformInfoData_Package.NAME);
        rootComponentInterface := TransformInterface_Access (TransformFactory_Package.getInstance.getInstance (This.abeClientInformation, stringBuffer.toString, CompoundContextTransformInfoObjectConfig'Class (This).getTransformInfoInterface));
        viewVector := CompoundContextTransformInfoObjectConfig'Class (This).getTransformDomNodes;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Root View Called with: ") & Java_Image (viewVector.size), CompoundContextTransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("get(transformInfoInterface)"));
        end if;
        rootView := rootComponentInterface.view;
        startXMLHeader := To_Unbounded_String ("<xsl:text disable-output-escaping=""yes"" ><![CDATA[");
        endXMLHeader := To_Unbounded_String ("]]></xsl:text>");
        size := viewVector.size;
        for index in 0 .. (size) - 1 loop
            objectConfigTransformInfoDomNode := TransformInfoDomNode_Access (viewVector.get (index));
            templateKey := objectConfigTransformInfoDomNode.getReplaceKey;
            componentInterface := TransformInterface_Access (TransformFactory_Package.getInstance.getInstance (This.abeClientInformation, objectConfigTransformInfoDomNode.getTransformInfoInterface.getName, CompoundContextTransformInfoObjectConfig'Class (This).getTransformInfoInterface));
            replacementViewString := componentInterface.view;
            replacementViewString := DocumentToNode_Package.convertDocumentToNodeString (replacementViewString);
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (startXMLHeader);
            stringBuffer.append (replacementViewString);
            stringBuffer.append (endXMLHeader);
            templateValue := stringBuffer.toString;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (To_Unbounded_String ("Replacing: "));
                stringBuffer.append (templateKey);
                stringBuffer.append (To_Unbounded_String (" with "));
                stringBuffer.append (templateValue);
                This.logUtil.putF (stringBuffer.toString, CompoundContextTransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("get()"));
            end if;
            replace := Replace_Package.Create (templateKey, templateValue);
            rootView := replace.all_Id (rootView);
        end loop;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("End: Result of a compound view: ") & rootView, CompoundContextTransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("get()"));
        end if;
        return rootView;
   end get;

   --  throws Exception
   function createInputStream (This : in out CompoundContextTransformInfoObjectConfig) return InputStream_Access is
      completeTemplateViewBytes : Short_Short_Integer_Array_Access;
      bais : ByteArrayInputStream_Access;
   begin
        completeTemplateViewBytes := CompoundContextTransformInfoObjectConfig'Class (This).get.getBytes;
        bais := ByteArrayInputStream_Package.Create (completeTemplateViewBytes);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Template: ") & Java_New_String (completeTemplateViewBytes).toString, CompoundContextTransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("createInputStream()"));
        end if;
        return InputStream_Access (bais);
   end createInputStream;

end views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package;


