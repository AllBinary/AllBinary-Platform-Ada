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


package body views.business.context.modules.storefront.customizer.CustomizerUtil_Package is

   procedure Initialize_Fields (This : in out CustomizerUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return CustomizerUtil_Access is
   begin
        return CustomizerUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out CustomizerUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CustomizerUtil_Access is
      This : constant CustomizerUtil_Access := new CustomizerUtil;
   begin
      CustomizerUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getTransformInfoInterfaceToCustomize (This : in out CustomizerUtil; customizerTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInfoInterface_Access is
      customizerTransformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (customizerTransformInfoInterface_Param);
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      transformInfoEntityInterface : TransformInfoEntity_Access;
      viewName : Unbounded_String;
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
      customizedTransformInfoInterface : TransformInfoInterface_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & customizerTransformInfoInterface.getName, CustomizerUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getTransformInfoInterfaceToCustomize()"));
        end if;
        transformInfoEntityInterface := TransformInfoEntityBuilder_Package.getInstance;
        viewName := transformInfoInterface.getName;
        httpTransformInfoInterface := TransformInfoHttpInterface_Access (customizerTransformInfoInterface);
        customizedTransformInfoInterface := transformInfoEntityInterface.get (viewName, httpTransformInfoInterface.getPropertiesHashMap, httpTransformInfoInterface.getPageContext);
        return customizedTransformInfoInterface;
   end getTransformInfoInterfaceToCustomize;

   --  throws Exception
   function getTransformInfoObjectConfigComponentNodesToCustomize (This : in out CustomizerUtil; customizerTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return BasicArrayList_Access is
      customizerTransformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (customizerTransformInfoInterface_Param);
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      transformInfoEntityInterface : TransformInfoEntity_Access;
      viewName : Unbounded_String;
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
      customizedTransformInfoInterface : TransformInfoInterface_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & customizerTransformInfoInterface.getName, CustomizerUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getTransformInfoObjectConfigComponentNodesToCustomize()"));
        end if;
        transformInfoEntityInterface := TransformInfoEntityBuilder_Package.getInstance;
        viewName := transformInfoInterface.getName;
        httpTransformInfoInterface := TransformInfoHttpInterface_Access (customizerTransformInfoInterface);
        customizedTransformInfoInterface := transformInfoEntityInterface.get (viewName, httpTransformInfoInterface.getPropertiesHashMap, httpTransformInfoInterface.getPageContext);
        return CustomizerUtil'Class (This).getTransformInfoObjectConfigComponentNodes (customizedTransformInfoInterface);
   end getTransformInfoObjectConfigComponentNodesToCustomize;

   --  throws Exception
   function getTransformInfoObjectConfigComponentNodes (This : in out CustomizerUtil; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return BasicArrayList_Access is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      transformInfoObjectConfigInterface : TransformInfoObjectConfigInterface_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & transformInfoInterface.getName, CustomizerUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getTransformInfoObjectConfigComponentNodes()"));
        end if;
        transformInfoObjectConfigInterface := transformInfoInterface.getObjectConfigInterface;
        return transformInfoObjectConfigInterface.getTransforms;
   end getTransformInfoObjectConfigComponentNodes;

   --  throws Exception
   function getTransformInfoObjectConfigGroupComponentNodes (This : in out CustomizerUtil; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return BasicArrayList_Access is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      transformInfoObjectConfigInterface : TransformInfoObjectConfigInterface_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & transformInfoInterface.getName, CustomizerUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getTransformInfoObjectConfigComponentNodes()"));
        end if;
        transformInfoObjectConfigInterface := transformInfoInterface.getObjectConfigInterface;
        return transformInfoObjectConfigInterface.getGroupTransforms;
   end getTransformInfoObjectConfigGroupComponentNodes;

   --  throws Exception
   procedure insert (This : in out CustomizerUtil; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; domNodeInterface_Param : access DomNodeInterface_Package.DomNodeInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      domNodeInterface : constant DomNodeInterface_Access := DomNodeInterface_Access (domNodeInterface_Param);
      transformInfoEntityInterface : TransformInfoEntity_Access;
      allViewsToBeModified : BasicArrayList_Access;
      document : Document_Access;
      documentString : Unbounded_String;
      stringBuffer : StringMaker_Access;
      size : Integer;
      transformInfo : TransformInfo_Access;
      viewNameOfViewToBeModified : Unbounded_String;
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
      specifiedTransformInfoInterface : TransformInfoInterface_Access;
      index : Integer;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & transformInfoInterface.getName, CustomizerUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("insert()"));
        end if;
        transformInfoEntityInterface := TransformInfoEntityBuilder_Package.getInstance;
        allViewsToBeModified := CustomizerUtil'Class (This).getTransformInfoObjectConfigGroupComponentNodes (transformInfoInterface);
        document := DomDocumentHelper_Package.create;
        document.appendChild (domNodeInterface.toXmlNode (document));
        documentString := XmlDocumentHelper_Package.toString (document);
        stringBuffer := StringMaker_Package.Create;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            stringBuffer.append (To_Unbounded_String ("Total Views For Modification: "));
            stringBuffer.appendint (allViewsToBeModified.size);
            stringBuffer.append (To_Unbounded_String (" New Xml/Data: "));
            stringBuffer.append (documentString);
            This.logUtil.putF (stringBuffer.toString, CustomizerUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("insert()"));
        end if;
        transformInfoInterface.setData (documentString);
        size := allViewsToBeModified.size;
        for index in 0 .. (size) - 1 loop
            transformInfo := TransformInfo_Access (allViewsToBeModified.get (index));
            viewNameOfViewToBeModified := transformInfo.getName;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (transformInfoInterface.getName);
                stringBuffer.append (To_Unbounded_String (" is modifying view: "));
                stringBuffer.append (viewNameOfViewToBeModified);
                This.logUtil.putF (stringBuffer.toString, CustomizerUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("insert()"));
            end if;
            httpTransformInfoInterface := TransformInfoHttpInterface_Access (transformInfoInterface);
            specifiedTransformInfoInterface := transformInfoEntityInterface.get (viewNameOfViewToBeModified, httpTransformInfoInterface.getPropertiesHashMap, httpTransformInfoInterface.getPageContext);
            if (specifiedTransformInfoInterface) = (null) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    stringBuffer.delete (0, stringBuffer.length);
                    stringBuffer.append (transformInfoInterface.getName);
                    stringBuffer.append (To_Unbounded_String (" is unable to add data to view: "));
                    stringBuffer.append (viewNameOfViewToBeModified);
                    stringBuffer.append (To_Unbounded_String (" since it does not exist"));
                    This.logUtil.putF (stringBuffer.toString, CustomizerUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("insert()"));
                end if;
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (transformInfoInterface.getName & To_Unbounded_String (" is adding data to view: ") & viewNameOfViewToBeModified, CustomizerUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("insert()"));
                end if;
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    stringBuffer.delete (0, stringBuffer.length);
                    stringBuffer.append (viewNameOfViewToBeModified);
                    stringBuffer.append (To_Unbounded_String (" is changing data in "));
                    stringBuffer.append (specifiedTransformInfoInterface.getDataFilePath.toString);
                    stringBuffer.append (To_Unbounded_String (" to the following data:" & ASCII.LF & ""));
                    stringBuffer.append (documentString);
                    This.logUtil.putF (stringBuffer.toString, CustomizerUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("insert()"));
                end if;
                CustomizerUtil'Class (This).write (specifiedTransformInfoInterface, documentString);
            end if;
        end loop;
   end insert;

   --  throws Exception
   procedure write (This : in out CustomizerUtil; specifiedTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; documentString : Unbounded_String) is
      specifiedTransformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (specifiedTransformInfoInterface_Param);
      transformInfoEntityInterface : TransformInfoEntity_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & specifiedTransformInfoInterface.getName, CustomizerUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("write()"));
        end if;
        transformInfoEntityInterface := TransformInfoEntityBuilder_Package.getInstance;
        specifiedTransformInfoInterface.setData (documentString);
        transformInfoEntityInterface.update (specifiedTransformInfoInterface.toHashMap);
   end write;

   --  throws Exception
   function getViewDataForComponentsInObjectConfig (This : in out CustomizerUtil; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return Document_Access is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      transformInfoObjectConfigInterface : TransformInfoObjectConfigInterface_Access;
      allViewsToBeModified : BasicArrayList_Access;
      transformInfoEntityInterface : TransformInfoEntity_Access;
      size : Integer;
      nextTransformInfoInterface : TransformInfo_Access;
      viewNameOfViewToBeModified : Unbounded_String;
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
      specifiedTransformInfoInterface : TransformInfoInterface_Access;
      index : Integer;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & transformInfoInterface.getName, CustomizerUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getViewDataForComponentsInObjectConfig()"));
        end if;
        transformInfoObjectConfigInterface := transformInfoInterface.getObjectConfigInterface;
        allViewsToBeModified := transformInfoObjectConfigInterface.getGroupTransforms;
        transformInfoEntityInterface := TransformInfoEntityBuilder_Package.getInstance;
        size := allViewsToBeModified.size;
        for index in 0 .. (size) - 1 loop
            nextTransformInfoInterface := TransformInfo_Access (allViewsToBeModified.get (index));
            viewNameOfViewToBeModified := nextTransformInfoInterface.getName;
            httpTransformInfoInterface := TransformInfoHttpInterface_Access (transformInfoInterface);
            specifiedTransformInfoInterface := transformInfoEntityInterface.get (viewNameOfViewToBeModified, httpTransformInfoInterface.getPropertiesHashMap, httpTransformInfoInterface.getPageContext);
            return specifiedTransformInfoInterface.getDataDocument;
        end loop;
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Components Specified in ObjectConfig")));
   end getViewDataForComponentsInObjectConfig;

   procedure getTransformInfoInterfaceToCustomize (This : in out CustomizerUtil; customizerTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      Java_Result : constant TransformInfoInterface_Access := CustomizerUtil'Class (This).getTransformInfoInterfaceToCustomize (customizerTransformInfoInterface_Param, transformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransformInfoInterfaceToCustomize;

   procedure getTransformInfoObjectConfigComponentNodesToCustomize (This : in out CustomizerUtil; customizerTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      Java_Result : constant BasicArrayList_Access := CustomizerUtil'Class (This).getTransformInfoObjectConfigComponentNodesToCustomize (customizerTransformInfoInterface_Param, transformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransformInfoObjectConfigComponentNodesToCustomize;

   procedure getTransformInfoObjectConfigComponentNodes (This : in out CustomizerUtil; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      Java_Result : constant BasicArrayList_Access := CustomizerUtil'Class (This).getTransformInfoObjectConfigComponentNodes (transformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransformInfoObjectConfigComponentNodes;

   procedure getTransformInfoObjectConfigGroupComponentNodes (This : in out CustomizerUtil; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      Java_Result : constant BasicArrayList_Access := CustomizerUtil'Class (This).getTransformInfoObjectConfigGroupComponentNodes (transformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransformInfoObjectConfigGroupComponentNodes;

   procedure getViewDataForComponentsInObjectConfig (This : in out CustomizerUtil; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      Java_Result : constant Document_Access := CustomizerUtil'Class (This).getViewDataForComponentsInObjectConfig (transformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getViewDataForComponentsInObjectConfig;

begin
   null;
   instance := CustomizerUtil_Package.Create;

end views.business.context.modules.storefront.customizer.CustomizerUtil_Package;


