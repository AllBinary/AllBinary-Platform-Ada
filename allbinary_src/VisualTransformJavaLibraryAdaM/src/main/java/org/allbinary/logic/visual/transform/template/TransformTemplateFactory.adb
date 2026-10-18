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


with org.allbinary.data.tables.transform.info.TransformInfoEntity_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package; use org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package;

package body org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package is

   package TransformInfoEntity_Package renames Standard.org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;
   package TransformInfoEntityBuilder_Package renames Standard.org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformInfoObjectFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package;
   procedure Initialize_Fields (This : in out TransformTemplateFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return TransformTemplateFactory_Access is
   begin
        return TransformTemplateFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TransformTemplateFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformTemplateFactory_Access is
      This : constant TransformTemplateFactory_Access := new TransformTemplateFactory;
   begin
      TransformTemplateFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out TransformTemplateFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; templateName : Unbounded_String; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformTemplateInterface_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      transformInfoEntity : TransformInfoEntity_Access;
      transformInfoInterface : TransformInfoInterface_Access;
      error : Unbounded_String;
   begin
        begin
            transformInfoEntity := TransformInfoEntityBuilder_Package.getInstance;
            transformInfoInterface := transformInfoEntity.get (templateName, propertiesHashMap, pageContext);
            return TransformTemplateInterface_Access (TransformInfoObjectFactory_Package.getInstance.getInstance (abeClientInformation, transformInfoInterface));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed To Get Instance");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                This.logUtil.put (error & templateName & To_Unbounded_String ("->TemplateFactory"), TransformTemplateFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(viewName, HashMap, PageContext)"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out TransformTemplateFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; templateName : Unbounded_String; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      Java_Result : constant TransformTemplateInterface_Access := TransformTemplateFactory'Class (This).getInstance (abeClientInformation_Param => abeClientInformation_Param, templateName => templateName, propertiesHashMap_Param => propertiesHashMap_Param, pageContext_Param => pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TransformTemplateFactory_Package.Create;

end org.allbinary.logic.visual.transform.template.TransformTemplateFactory_Package;


