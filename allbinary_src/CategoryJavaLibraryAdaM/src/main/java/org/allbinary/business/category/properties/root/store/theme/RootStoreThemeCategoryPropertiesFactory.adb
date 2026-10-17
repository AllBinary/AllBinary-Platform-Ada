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


package body org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryPropertiesFactory_Package is

   procedure Initialize_Fields (This : in out RootStoreThemeCategoryPropertiesFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out RootStoreThemeCategoryPropertiesFactory'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (RootStoreThemeCategoryProperties_Package.Create (transformInfoInterface));
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return RootStoreThemeCategoryPropertiesFactory_Access is
      This : constant RootStoreThemeCategoryPropertiesFactory_Access := new RootStoreThemeCategoryPropertiesFactory;
   begin
      RootStoreThemeCategoryPropertiesFactory_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out RootStoreThemeCategoryPropertiesFactory'Class; transformInfoInterface_Param : access TransformInfoInterface'Class; abPath_Param : access AbPath'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      abPath : AbPath_Access := AbPath_Access (abPath_Param);
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (RootStoreThemeCategoryProperties_Package.Create (transformInfoInterface, abPath));
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class; abPath_Param : access AbPath'Class) return RootStoreThemeCategoryPropertiesFactory_Access is
      This : constant RootStoreThemeCategoryPropertiesFactory_Access := new RootStoreThemeCategoryPropertiesFactory;
   begin
      RootStoreThemeCategoryPropertiesFactory_Package.Initialize (This.all, transformInfoInterface_Param, abPath_Param);
      return This;
   end Create;

   procedure Initialize (This : in out RootStoreThemeCategoryPropertiesFactory'Class; transformInfoInterface_Param : access TransformInfoInterface'Class; node_Param : access Node'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      node : Node_Access := Node_Access (node_Param);
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (RootStoreThemeCategoryProperties_Package.Create (transformInfoInterface, node));
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class; node_Param : access Node'Class) return RootStoreThemeCategoryPropertiesFactory_Access is
      This : constant RootStoreThemeCategoryPropertiesFactory_Access := new RootStoreThemeCategoryPropertiesFactory;
   begin
      RootStoreThemeCategoryPropertiesFactory_Package.Initialize (This.all, transformInfoInterface_Param, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out RootStoreThemeCategoryPropertiesFactory'Class; transformInfoInterface_Param : access TransformInfoInterface'Class; categoryPropertiesHashMap_Param : access HashMap'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      categoryPropertiesHashMap : HashMap_Access := HashMap_Access (categoryPropertiesHashMap_Param);
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (RootStoreThemeCategoryProperties_Package.Create (transformInfoInterface, categoryPropertiesHashMap));
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class; categoryPropertiesHashMap_Param : access HashMap'Class) return RootStoreThemeCategoryPropertiesFactory_Access is
      This : constant RootStoreThemeCategoryPropertiesFactory_Access := new RootStoreThemeCategoryPropertiesFactory;
   begin
      RootStoreThemeCategoryPropertiesFactory_Package.Initialize (This.all, transformInfoInterface_Param, categoryPropertiesHashMap_Param);
      return This;
   end Create;

   function getInstance (This : in out RootStoreThemeCategoryPropertiesFactory) return CategoryPropertiesInterface_Access is
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
                This.logUtil.put (commonStrings.EXCEPTION_Id, RootStoreThemeCategoryPropertiesFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

end org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryPropertiesFactory_Package;


