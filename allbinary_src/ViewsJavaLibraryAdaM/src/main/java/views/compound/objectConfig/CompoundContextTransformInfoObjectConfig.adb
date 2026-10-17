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


package body views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package is

   procedure Initialize_Fields (This : in out CompoundContextTransformInfoObjectConfig'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CompoundContextTransformInfoObjectConfig'Class; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        GenericStoreTransformInfoObjectConfig_Package.Initialize (This, abeClientInformation, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) return CompoundContextTransformInfoObjectConfig_Access is
      This : constant CompoundContextTransformInfoObjectConfig_Access := new CompoundContextTransformInfoObjectConfig;
   begin
      CompoundContextTransformInfoObjectConfig_Package.Initialize (This.all, abeClientInformation, transformInfoInterface);
      return This;
   end Create;

   procedure Initialize (This : in out CompoundContextTransformInfoObjectConfig'Class; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; document : Document_Access) is
   begin
        GenericStoreTransformInfoObjectConfig_Package.Initialize (This, abeClientInformation, transformInfoInterface, document);
        Initialize_Fields (This);
        This.setDocument (This.generate (This.toXmlDoc));
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; document : Document_Access) return CompoundContextTransformInfoObjectConfig_Access is
      This : constant CompoundContextTransformInfoObjectConfig_Access := new CompoundContextTransformInfoObjectConfig;
   begin
      CompoundContextTransformInfoObjectConfig_Package.Initialize (This.all, abeClientInformation, transformInfoInterface, document);
      return This;
   end Create;

   procedure Initialize (This : in out CompoundContextTransformInfoObjectConfig'Class; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; name : Unbounded_String; type_Id : Unbounded_String) is
   begin
        GenericStoreTransformInfoObjectConfig_Package.Initialize (This, abeClientInformation, transformInfoInterface, name, type_Id);
        Initialize_Fields (This);
        This.setDocument (This.generate (This.toXmlDoc));
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; name : Unbounded_String; type_Id : Unbounded_String) return CompoundContextTransformInfoObjectConfig_Access is
      This : constant CompoundContextTransformInfoObjectConfig_Access := new CompoundContextTransformInfoObjectConfig;
   begin
      CompoundContextTransformInfoObjectConfig_Package.Initialize (This.all, abeClientInformation, transformInfoInterface, name, type_Id);
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
        storeName := This.getTransformInfoInterface.getStoreName;
        httpTransformInfoInterface := TransformInfoHttpInterface_Access (This.getTransformInfoInterface);
        templateNameOverride := StringUtil_Package.getInstance.getNonNull (Unbounded_String (httpTransformInfoInterface.getPropertiesHashMap.get (TransformInfoData_Package.getInstance.PARTIAL)));
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (storeName);
        stringBuffer.append (templateNameOverride);
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (RootTransformInfoData_Package.NAME);
        rootComponentInterface := TransformFactory_Package.getInstance.getInstance (This.abeClientInformation, stringBuffer.toString, This.getTransformInfoInterface);
        viewVector := This.getTransformDomNodes;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Root View Called with: ") & Java_Image (viewVector.size), This'Unchecked_Access, To_Unbounded_String ("get(transformInfoInterface)"));
        end if;
        rootView := rootComponentInterface.view;
        startXMLHeader := To_Unbounded_String ("<xsl:text disable-output-escaping=""yes"" ><![CDATA[");
        endXMLHeader := To_Unbounded_String ("]]></xsl:text>");
        size := viewVector.size;
        for index in 0 .. (size) - 1 loop
            objectConfigTransformInfoDomNode := TransformInfoDomNode_Access (viewVector.get (index));
            templateKey := objectConfigTransformInfoDomNode.getReplaceKey;
            componentInterface := TransformFactory_Package.getInstance.getInstance (This.abeClientInformation, objectConfigTransformInfoDomNode.getTransformInfoInterface.getName, This.getTransformInfoInterface);
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
                This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("get()"));
            end if;
            replace := Replace_Package.Create (templateKey, templateValue);
            rootView := replace.all_Id (rootView);
        end loop;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("End: Result of a compound view: ") & rootView, This'Unchecked_Access, To_Unbounded_String ("get()"));
        end if;
        return rootView;
   end get;

   --  throws Exception
   function createInputStream (This : in out CompoundContextTransformInfoObjectConfig) return InputStream_Access is
      completeTemplateViewBytes : Short_Short_Integer_Array_Access;
      bais : ByteArrayInputStream_Access;
   begin
        completeTemplateViewBytes := This.get.getBytes;
        bais := ByteArrayInputStream_Package.Create (completeTemplateViewBytes);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Template: ") & Java_New_String (completeTemplateViewBytes).toString, This'Unchecked_Access, To_Unbounded_String ("createInputStream()"));
        end if;
        return bais;
   end createInputStream;

end views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package;


