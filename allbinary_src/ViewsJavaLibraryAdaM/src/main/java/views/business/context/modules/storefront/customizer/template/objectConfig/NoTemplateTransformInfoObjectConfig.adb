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


package body views.business.context.modules.storefront.customizer.template.objectConfig.NoTemplateTransformInfoObjectConfig_Package is

   procedure Initialize_Fields (This : in out NoTemplateTransformInfoObjectConfig'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out NoTemplateTransformInfoObjectConfig'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        TransformInfoObjectConfig_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return NoTemplateTransformInfoObjectConfig_Access is
      This : constant NoTemplateTransformInfoObjectConfig_Access := new NoTemplateTransformInfoObjectConfig;
   begin
      NoTemplateTransformInfoObjectConfig_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out NoTemplateTransformInfoObjectConfig'Class; transformInfoInterface_Param : access TransformInfoInterface'Class; document_Param : access Document'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      document : Document_Access := Document_Access (document_Param);
   begin
        TransformInfoObjectConfig_Package.Initialize (This, transformInfoInterface, document);
        Initialize_Fields (This);
        This.setDocument (This.generate (This.toXmlDoc));
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class; document_Param : access Document'Class) return NoTemplateTransformInfoObjectConfig_Access is
      This : constant NoTemplateTransformInfoObjectConfig_Access := new NoTemplateTransformInfoObjectConfig;
   begin
      NoTemplateTransformInfoObjectConfig_Package.Initialize (This.all, transformInfoInterface_Param, document_Param);
      return This;
   end Create;

   procedure Initialize (This : in out NoTemplateTransformInfoObjectConfig'Class; transformInfoInterface_Param : access TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        TransformInfoObjectConfig_Package.Initialize (This, transformInfoInterface, name, type_Id);
        Initialize_Fields (This);
        This.setDocument (This.generate (This.toXmlDoc));
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String) return NoTemplateTransformInfoObjectConfig_Access is
      This : constant NoTemplateTransformInfoObjectConfig_Access := new NoTemplateTransformInfoObjectConfig;
   begin
      NoTemplateTransformInfoObjectConfig_Package.Initialize (This.all, transformInfoInterface_Param, name, type_Id);
      return This;
   end Create;

   --  throws Exception
   function generate (This : in out NoTemplateTransformInfoObjectConfig; objectConfigDocument_Param : access Document'Class) return Document_Access is
      objectConfigDocument : Document_Access := Document_Access (objectConfigDocument_Param);
      docString : Unbounded_String;
      storeName : Unbounded_String;
      viewName : Unbounded_String;
      hashMap : HashMap_Access;
      VARKEY : Unbounded_String;
      pageName : Unbounded_String;
      replace : Replace_Access;
      newObjectConfigDocument : Document_Access;
   begin
        docString := XmlDocumentHelper_Package.toString (objectConfigDocument);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Initial ObjectConfig: ") & docString, NoTemplateTransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("generate()"));
        end if;
        storeName := This.getTransformInfoInterface.getStoreName;
        viewName := This.getTransformInfoInterface.getName;
        hashMap := StdUtil_Package.getInstance.createHashMap;
        VARKEY := TransformInfoObjectConfigData_Package.getInstance.VARKEY;
        hashMap.put (VARKEY & Java_Image (StoreFrontData_Package.getInstance.NAME), storeName);
        hashMap.put (VARKEY & Java_Image (TransformInfoData_Package.getInstance.OWNER), viewName);
        pageName := TransformTemplateCustomizerUtil_Package.getInstance.getPageNameHack (This.getTransformInfoInterface.getName, This.getTransformInfoInterface.getStoreName);
        hashMap.put (VARKEY & Java_Image (TransformInfoData_Package.getInstance.PARTIAL), pageName);
        replace := Replace_Package.Create (hashMap);
        newObjectConfigDocument := DomDocumentHelper_Package.create (replace.all_Id (docString));
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Final ObjectConfig: ") & XmlDocumentHelper_Package.toString (newObjectConfigDocument), NoTemplateTransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("generate()"));
        end if;
        return newObjectConfigDocument;
   end generate;

   procedure generate (This : in out NoTemplateTransformInfoObjectConfig; objectConfigDocument_Param : access Document'Class) is
      Java_Result : constant Document_Access := NoTemplateTransformInfoObjectConfig'Class (This).generate (objectConfigDocument_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end generate;

end views.business.context.modules.storefront.customizer.template.objectConfig.NoTemplateTransformInfoObjectConfig_Package;


