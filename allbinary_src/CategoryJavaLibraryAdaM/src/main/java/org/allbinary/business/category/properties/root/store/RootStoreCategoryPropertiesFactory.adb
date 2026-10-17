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


package body org.allbinary.business.category.properties.root.store.RootStoreCategoryPropertiesFactory_Package is

   procedure Initialize_Fields (This : in out RootStoreCategoryPropertiesFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out RootStoreCategoryPropertiesFactory'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (RootStoreCategoryProperties_Package.Create (transformInfoInterface));
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return RootStoreCategoryPropertiesFactory_Access is
      This : constant RootStoreCategoryPropertiesFactory_Access := new RootStoreCategoryPropertiesFactory;
   begin
      RootStoreCategoryPropertiesFactory_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out RootStoreCategoryPropertiesFactory'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; abPath_Param : access AbPath_Package.AbPath'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      abPath : constant AbPath_Access := AbPath_Access (abPath_Param);
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (RootStoreCategoryProperties_Package.Create (transformInfoInterface, abPath));
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; abPath_Param : access AbPath_Package.AbPath'Class) return RootStoreCategoryPropertiesFactory_Access is
      This : constant RootStoreCategoryPropertiesFactory_Access := new RootStoreCategoryPropertiesFactory;
   begin
      RootStoreCategoryPropertiesFactory_Package.Initialize (This.all, transformInfoInterface_Param, abPath_Param);
      return This;
   end Create;

   procedure Initialize (This : in out RootStoreCategoryPropertiesFactory'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; node_Param : access Node_Package.Node'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      node : constant Node_Access := Node_Access (node_Param);
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (RootStoreCategoryProperties_Package.Create (transformInfoInterface, node));
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; node_Param : access Node_Package.Node'Class) return RootStoreCategoryPropertiesFactory_Access is
      This : constant RootStoreCategoryPropertiesFactory_Access := new RootStoreCategoryPropertiesFactory;
   begin
      RootStoreCategoryPropertiesFactory_Package.Initialize (This.all, transformInfoInterface_Param, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out RootStoreCategoryPropertiesFactory'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      categoryPropertiesHashMap : constant HashMap_Access := HashMap_Access (categoryPropertiesHashMap_Param);
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (RootStoreCategoryProperties_Package.Create (transformInfoInterface, categoryPropertiesHashMap));
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return RootStoreCategoryPropertiesFactory_Access is
      This : constant RootStoreCategoryPropertiesFactory_Access := new RootStoreCategoryPropertiesFactory;
   begin
      RootStoreCategoryPropertiesFactory_Package.Initialize (This.all, transformInfoInterface_Param, categoryPropertiesHashMap_Param);
      return This;
   end Create;

   function getInstance (This : in out RootStoreCategoryPropertiesFactory) return CategoryPropertiesInterface_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            return CategoryPropertiesInterface_Access (This.categoryPropertiesInterface);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, RootStoreCategoryPropertiesFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

end org.allbinary.business.category.properties.root.store.RootStoreCategoryPropertiesFactory_Package;


