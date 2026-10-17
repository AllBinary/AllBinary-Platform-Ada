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


package body org.allbinary.business.category.store.theme.StoreThemeCategoryFactory_Package is

   procedure Initialize_Fields (This : in out StoreThemeCategoryFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreThemeCategoryFactory'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
            This.logUtil.putF (This.commonStrings.START, StoreThemeCategoryFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("StoreCategoryFactory(TransformInfoInterface transformInfoInterface)"));
        end if;
        This.transformInfoInterface := transformInfoInterface;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return StoreThemeCategoryFactory_Access is
      This : constant StoreThemeCategoryFactory_Access := new StoreThemeCategoryFactory;
   begin
      StoreThemeCategoryFactory_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function getRootInstance (This : in out StoreThemeCategoryFactory) return CategoryInterface_Access is
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (RootStoreThemeCategoryPropertiesFactory_Package.Create (This.transformInfoInterface));
            return CategoryInterface_Access (StoreThemeCategory_Package.Create (This.transformInfoInterface, categoryPropertiesFactoryInterface, 0));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreThemeCategoryFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getRootInstance()"), e);
            end if;
            return null;
                end;
        end;
   end getRootInstance;

   function getRootInstance (This : in out StoreThemeCategoryFactory; categoryAbPath_Param : access AbPath_Package.AbPath'Class) return CategoryInterface_Access is
      categoryAbPath : constant AbPath_Access := AbPath_Access (categoryAbPath_Param);
      level : Integer;
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            level := CategoryUtil_Package.getPathLevel (categoryAbPath);
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (RootStoreThemeCategoryPropertiesFactory_Package.Create (This.transformInfoInterface, categoryAbPath));
            return CategoryInterface_Access (StoreThemeCategory_Package.Create (This.transformInfoInterface, categoryPropertiesFactoryInterface, level));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreThemeCategoryFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getRootInstance(String)"), e);
            end if;
            return null;
                end;
        end;
   end getRootInstance;

   function getRootInstanceFromNode (This : in out StoreThemeCategoryFactory; node_Param : access Node_Package.Node'Class) return CategoryInterface_Access is
      node : constant Node_Access := Node_Access (node_Param);
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
      categoryPath : AbPath_Access;
      level : Integer;
   begin
        begin
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (RootStoreThemeCategoryPropertiesFactory_Package.Create (This.transformInfoInterface, node));
            categoryPath := AbPath_Package.Create (CategoryUtil_Package.getNameFromNode (node), StringUtil_Package.getInstance.EMPTY_STRING);
            level := CategoryUtil_Package.getPathLevel (categoryPath);
            return CategoryInterface_Access (StoreThemeCategory_Package.Create (This.transformInfoInterface, node, categoryPropertiesFactoryInterface, level));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreThemeCategoryFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getRootInstance(node)"), e);
            end if;
            return null;
                end;
        end;
   end getRootInstanceFromNode;

   function getInstance (This : in out StoreThemeCategoryFactory; categoryPath : Unbounded_String; level : Integer) return CategoryInterface_Access is
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (CategoryPropertiesFactory_Package.Create (categoryPath));
            return CategoryInterface_Access (StoreThemeCategory_Package.Create (This.transformInfoInterface, categoryPropertiesFactoryInterface, level));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreThemeCategoryFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(String, int)"), e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   function getInstance (This : in out StoreThemeCategoryFactory; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPath : Unbounded_String) return CategoryInterface_Access is
      rootCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (rootCategoryInterface_Param);
      parentCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (parentCategoryInterface_Param);
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (CategoryPropertiesFactory_Package.Create (categoryPath));
            return CategoryInterface_Access (StoreThemeCategory_Package.Create (This.transformInfoInterface, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreThemeCategoryFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(CategoryInterface, CategoryInterface , String, int)"), e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   function getInstance (This : in out StoreThemeCategoryFactory; node_Param : access Node_Package.Node'Class; level : Integer) return CategoryInterface_Access is
      node : constant Node_Access := Node_Access (node_Param);
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (CategoryPropertiesFactory_Package.Create (node));
            return CategoryInterface_Access (StoreThemeCategory_Package.Create (This.transformInfoInterface, categoryPropertiesFactoryInterface, level));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreThemeCategoryFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(Node, int)"), e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   function getInstance (This : in out StoreThemeCategoryFactory; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; node_Param : access Node_Package.Node'Class) return CategoryInterface_Access is
      rootCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (rootCategoryInterface_Param);
      parentCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (parentCategoryInterface_Param);
      node : constant Node_Access := Node_Access (node_Param);
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (CategoryPropertiesFactory_Package.Create (node));
            return CategoryInterface_Access (StoreThemeCategory_Package.Create (This.transformInfoInterface, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreThemeCategoryFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(CategoryInterface, CategoryInterface, Node, int)"), e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   function getInstance (This : in out StoreThemeCategoryFactory; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class; level : Integer) return CategoryInterface_Access is
      categoryPropertiesHashMap : constant HashMap_Access := HashMap_Access (categoryPropertiesHashMap_Param);
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (CategoryPropertiesFactory_Package.Create (categoryPropertiesHashMap));
            return CategoryInterface_Access (StoreThemeCategory_Package.Create (This.transformInfoInterface, categoryPropertiesFactoryInterface, level));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreThemeCategoryFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(HashMap)"), e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   function getInstance (This : in out StoreThemeCategoryFactory; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return CategoryInterface_Access is
      rootCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (rootCategoryInterface_Param);
      parentCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (parentCategoryInterface_Param);
      categoryPropertiesHashMap : constant HashMap_Access := HashMap_Access (categoryPropertiesHashMap_Param);
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (CategoryPropertiesFactory_Package.Create (categoryPropertiesHashMap));
            return CategoryInterface_Access (StoreThemeCategory_Package.Create (This.transformInfoInterface, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreThemeCategoryFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(CategoryInterface, CategoryInterface, HashMap)"), e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   procedure getRootInstance (This : in out StoreThemeCategoryFactory; categoryAbPath_Param : access AbPath_Package.AbPath'Class) is
      Java_Result : constant CategoryInterface_Access := StoreThemeCategoryFactory'Class (This).getRootInstance (categoryAbPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRootInstance;

   procedure getRootInstanceFromNode (This : in out StoreThemeCategoryFactory; node_Param : access Node_Package.Node'Class) is
      Java_Result : constant CategoryInterface_Access := StoreThemeCategoryFactory'Class (This).getRootInstanceFromNode (node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRootInstanceFromNode;

   procedure getInstance (This : in out StoreThemeCategoryFactory; categoryPath : Unbounded_String; level : Integer) is
      Java_Result : constant CategoryInterface_Access := StoreThemeCategoryFactory'Class (This).getInstance (categoryPath, level);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out StoreThemeCategoryFactory; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPath : Unbounded_String) is
      Java_Result : constant CategoryInterface_Access := StoreThemeCategoryFactory'Class (This).getInstance (rootCategoryInterface_Param, parentCategoryInterface_Param, categoryPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out StoreThemeCategoryFactory; node_Param : access Node_Package.Node'Class; level : Integer) is
      Java_Result : constant CategoryInterface_Access := StoreThemeCategoryFactory'Class (This).getInstance (node_Param, level);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out StoreThemeCategoryFactory; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; node_Param : access Node_Package.Node'Class) is
      Java_Result : constant CategoryInterface_Access := StoreThemeCategoryFactory'Class (This).getInstance (rootCategoryInterface_Param, parentCategoryInterface_Param, node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out StoreThemeCategoryFactory; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class; level : Integer) is
      Java_Result : constant CategoryInterface_Access := StoreThemeCategoryFactory'Class (This).getInstance (categoryPropertiesHashMap_Param, level);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out StoreThemeCategoryFactory; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant CategoryInterface_Access := StoreThemeCategoryFactory'Class (This).getInstance (rootCategoryInterface_Param, parentCategoryInterface_Param, categoryPropertiesHashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.category.store.theme.StoreThemeCategoryFactory_Package;


