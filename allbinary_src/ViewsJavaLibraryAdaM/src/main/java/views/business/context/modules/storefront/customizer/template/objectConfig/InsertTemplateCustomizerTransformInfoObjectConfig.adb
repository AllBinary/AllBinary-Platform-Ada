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


with org.allbinary.logic.visual.transform.info.TransformInfoDomNodeView_Package; use org.allbinary.logic.visual.transform.info.TransformInfoDomNodeView_Package;
with org.allbinary.logic.visual.transform.info.TransformInfosData_Package; use org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package body views.business.context.modules.storefront.customizer.template.objectConfig.InsertTemplateCustomizerTransformInfoObjectConfig_Package is

   package TransformInfoDomNodeView_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoDomNodeView_Package;
   package TransformInfosData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
   package TransformInfoObjectConfigData_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out InsertTemplateCustomizerTransformInfoObjectConfig'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out InsertTemplateCustomizerTransformInfoObjectConfig'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        NoTemplateTransformInfoObjectConfig_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return InsertTemplateCustomizerTransformInfoObjectConfig_Access is
      This : constant InsertTemplateCustomizerTransformInfoObjectConfig_Access := new InsertTemplateCustomizerTransformInfoObjectConfig;
   begin
      InsertTemplateCustomizerTransformInfoObjectConfig_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out InsertTemplateCustomizerTransformInfoObjectConfig'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      document : constant Document_Access := Document_Access (document_Param);
   begin
        NoTemplateTransformInfoObjectConfig_Package.Initialize (This, transformInfoInterface, document);
        Initialize_Fields (This);
        InsertTemplateCustomizerTransformInfoObjectConfig'Class (This).setDocument (InsertTemplateCustomizerTransformInfoObjectConfig'Class (This).generate (InsertTemplateCustomizerTransformInfoObjectConfig'Class (This).toXmlDoc));
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class) return InsertTemplateCustomizerTransformInfoObjectConfig_Access is
      This : constant InsertTemplateCustomizerTransformInfoObjectConfig_Access := new InsertTemplateCustomizerTransformInfoObjectConfig;
   begin
      InsertTemplateCustomizerTransformInfoObjectConfig_Package.Initialize (This.all, transformInfoInterface_Param, document_Param);
      return This;
   end Create;

   procedure Initialize (This : in out InsertTemplateCustomizerTransformInfoObjectConfig'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        NoTemplateTransformInfoObjectConfig_Package.Initialize (This, transformInfoInterface, name, type_Id);
        Initialize_Fields (This);
        InsertTemplateCustomizerTransformInfoObjectConfig'Class (This).setDocument (InsertTemplateCustomizerTransformInfoObjectConfig'Class (This).generate (InsertTemplateCustomizerTransformInfoObjectConfig'Class (This).toXmlDoc));
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String) return InsertTemplateCustomizerTransformInfoObjectConfig_Access is
      This : constant InsertTemplateCustomizerTransformInfoObjectConfig_Access := new InsertTemplateCustomizerTransformInfoObjectConfig;
   begin
      InsertTemplateCustomizerTransformInfoObjectConfig_Package.Initialize (This.all, transformInfoInterface_Param, name, type_Id);
      return This;
   end Create;

   --  throws Exception
   procedure set (This : in out InsertTemplateCustomizerTransformInfoObjectConfig; aParentViewName : Unbounded_String) is
      document : Document_Access;
      parentComponentsNodeList : NodeList_Access;
      objectConfigNode : Node_Access;
      parentComponentsNode : Node_Access;
      transformInfoDomNodeView : TransformInfoDomNodeView_Access;
      componentNode : Node_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Setting: ") & aParentViewName, InsertTemplateCustomizerTransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("set()"));
        end if;
        document := InsertTemplateCustomizerTransformInfoObjectConfig'Class (This).toXmlDoc;
        parentComponentsNodeList := document.getElementsByTagName (TransformInfosData_Package.getInstance.NAME);
        if ((parentComponentsNodeList) /= (null)) and then ((parentComponentsNodeList.getLength) > (0)) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Replacing"), InsertTemplateCustomizerTransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("set()"));
            end if;
            componentNode := parentComponentsNodeList.item (0).getChildNodes.item (0);
            if (componentNode) /= (null) then
                document.removeChild (componentNode);
            end if;
            parentComponentsNodeList.item (0).appendChild (TransformInfoDomNodeView_Package.Create (aParentViewName).toXmlNode (document));
        else
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Setting"), InsertTemplateCustomizerTransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("set()"));
            end if;
            objectConfigNode := document.getElementsByTagName (TransformInfoObjectConfigData_Package.getInstance.NAME).item (0);
            parentComponentsNode := document.createElement (TransformInfosData_Package.getInstance.NAME);
            objectConfigNode.appendChild (parentComponentsNode);
            transformInfoDomNodeView := TransformInfoDomNodeView_Package.Create (aParentViewName);
            parentComponentsNode.appendChild (transformInfoDomNodeView.toXmlNode (document));
        end if;
   end set;

end views.business.context.modules.storefront.customizer.template.objectConfig.InsertTemplateCustomizerTransformInfoObjectConfig_Package;


