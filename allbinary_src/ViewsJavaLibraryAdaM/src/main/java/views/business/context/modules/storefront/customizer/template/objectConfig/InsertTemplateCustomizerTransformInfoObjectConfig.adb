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


package body views.business.context.modules.storefront.customizer.template.objectConfig.InsertTemplateCustomizerTransformInfoObjectConfig_Package is

   procedure Initialize_Fields (This : in out InsertTemplateCustomizerTransformInfoObjectConfig'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out InsertTemplateCustomizerTransformInfoObjectConfig'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        NoTemplateTransformInfoObjectConfig_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return InsertTemplateCustomizerTransformInfoObjectConfig_Access is
      This : constant InsertTemplateCustomizerTransformInfoObjectConfig_Access := new InsertTemplateCustomizerTransformInfoObjectConfig;
   begin
      InsertTemplateCustomizerTransformInfoObjectConfig_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out InsertTemplateCustomizerTransformInfoObjectConfig'Class; transformInfoInterface : TransformInfoInterface_Access; document : Document_Access) is
   begin
        NoTemplateTransformInfoObjectConfig_Package.Initialize (This, transformInfoInterface, document);
        Initialize_Fields (This);
        This.setDocument (This.generate (This.toXmlDoc));
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; document : Document_Access) return InsertTemplateCustomizerTransformInfoObjectConfig_Access is
      This : constant InsertTemplateCustomizerTransformInfoObjectConfig_Access := new InsertTemplateCustomizerTransformInfoObjectConfig;
   begin
      InsertTemplateCustomizerTransformInfoObjectConfig_Package.Initialize (This.all, transformInfoInterface, document);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out InsertTemplateCustomizerTransformInfoObjectConfig'Class; transformInfoInterface : TransformInfoInterface_Access; name : Unbounded_String; type_Id : Unbounded_String) is
   begin
        NoTemplateTransformInfoObjectConfig_Package.Initialize (This, transformInfoInterface, name, type_Id);
        Initialize_Fields (This);
        This.setDocument (This.generate (This.toXmlDoc));
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; name : Unbounded_String; type_Id : Unbounded_String) return InsertTemplateCustomizerTransformInfoObjectConfig_Access is
      This : constant InsertTemplateCustomizerTransformInfoObjectConfig_Access := new InsertTemplateCustomizerTransformInfoObjectConfig;
   begin
      InsertTemplateCustomizerTransformInfoObjectConfig_Package.Initialize (This.all, transformInfoInterface, name, type_Id);
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
            This.logUtil.putF (To_Unbounded_String ("Setting: ") & aParentViewName, This'Unchecked_Access, To_Unbounded_String ("set()"));
        end if;
        document := This.toXmlDoc;
        parentComponentsNodeList := document.getElementsByTagName (TransformInfosData_Package.getInstance.NAME);
        if ((parentComponentsNodeList) /= (null)) and then ((parentComponentsNodeList.getLength) > (0)) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Replacing"), This'Unchecked_Access, To_Unbounded_String ("set()"));
            end if;
            componentNode := parentComponentsNodeList.item (0).getChildNodes.item (0);
            if (componentNode) /= (null) then
                document.removeChild (componentNode);
            end if;
            parentComponentsNodeList.item (0).appendChild (TransformInfoDomNodeView_Package.Create (aParentViewName).toXmlNode (document));
        else
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Setting"), This'Unchecked_Access, To_Unbounded_String ("set()"));
            end if;
            objectConfigNode := document.getElementsByTagName (TransformInfoObjectConfigData_Package.getInstance.NAME).item (0);
            parentComponentsNode := document.createElement (TransformInfosData_Package.getInstance.NAME);
            objectConfigNode.appendChild (parentComponentsNode);
            transformInfoDomNodeView := TransformInfoDomNodeView_Package.Create (aParentViewName);
            parentComponentsNode.appendChild (transformInfoDomNodeView.toXmlNode (document));
        end if;
   end set;

end views.business.context.modules.storefront.customizer.template.objectConfig.InsertTemplateCustomizerTransformInfoObjectConfig_Package;


