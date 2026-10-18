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


with org.allbinary.business.category.properties.CategoryPropertiesFactory_Package; use org.allbinary.business.category.properties.CategoryPropertiesFactory_Package;
with org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
with org.allbinary.business.category.Category_Package; use org.allbinary.business.category.Category_Package;

package body org.allbinary.business.category.CategoryAbstractFactory_Package is

   package CategoryPropertiesFactory_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesFactory_Package;
   package CategoryPropertiesFactoryInterface_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
   procedure Initialize_Fields (This : in out CategoryAbstractFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryAbstractFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CategoryAbstractFactory_Access is
      This : constant CategoryAbstractFactory_Access := new CategoryAbstractFactory;
   begin
      CategoryAbstractFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getRootInstance (This : in out CategoryAbstractFactory) return CategoryInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getRootInstance;

   function getRootInstance (This : in out CategoryAbstractFactory; categoryAbPath_Param : access AbPath_Package.AbPath'Class) return CategoryInterface_Access is
      categoryAbPath : constant AbPath_Access := AbPath_Access (categoryAbPath_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getRootInstance;

   function getRootInstanceFromNode (This : in out CategoryAbstractFactory; node_Param : access Node_Package.Node'Class) return CategoryInterface_Access is
      node : constant Node_Access := Node_Access (node_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getRootInstanceFromNode;

   function getInstance (This : in out CategoryAbstractFactory; categoryName : Unbounded_String) return CategoryInterface_Access is
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
                This.logUtil.putF (This.commonStrings.START, CategoryAbstractFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(String)"));
            end if;
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (CategoryPropertiesFactory_Package.Create (categoryName));
            return CategoryInterface_Access (Category_Package.Create (categoryPropertiesFactoryInterface));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, CategoryAbstractFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(String, int)"), e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   function getInstance (This : in out CategoryAbstractFactory; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryName : Unbounded_String) return CategoryInterface_Access is
      rootCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (rootCategoryInterface_Param);
      parentCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (parentCategoryInterface_Param);
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
                This.logUtil.putF (This.commonStrings.START, CategoryAbstractFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(CategoryInterface, CategoryInterface, String)"));
            end if;
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (CategoryPropertiesFactory_Package.Create (categoryName));
            return CategoryInterface_Access (Category_Package.Create (rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, CategoryAbstractFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(CategoryInterface, CategoryInterface , String, int)"), e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   function getInstance (This : in out CategoryAbstractFactory; node_Param : access Node_Package.Node'Class) return CategoryInterface_Access is
      node : constant Node_Access := Node_Access (node_Param);
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
                This.logUtil.putF (This.commonStrings.START, CategoryAbstractFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(Node)"));
            end if;
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (CategoryPropertiesFactory_Package.Create (node));
            return CategoryInterface_Access (Category_Package.Create (categoryPropertiesFactoryInterface));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, CategoryAbstractFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(Node, int)"), e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   function getInstance (This : in out CategoryAbstractFactory; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; node_Param : access Node_Package.Node'Class) return CategoryInterface_Access is
      rootCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (rootCategoryInterface_Param);
      parentCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (parentCategoryInterface_Param);
      node : constant Node_Access := Node_Access (node_Param);
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
                This.logUtil.putF (This.commonStrings.START, CategoryAbstractFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(CategoryInterface, CategoryInterface, Node)"));
            end if;
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (CategoryPropertiesFactory_Package.Create (node));
            return CategoryInterface_Access (Category_Package.Create (rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, CategoryAbstractFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(CategoryInterface, CategoryInterface, Node, int)"), e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   function getInstance (This : in out CategoryAbstractFactory; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return CategoryInterface_Access is
      rootCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (rootCategoryInterface_Param);
      parentCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (parentCategoryInterface_Param);
      categoryPropertiesHashMap : constant HashMap_Access := HashMap_Access (categoryPropertiesHashMap_Param);
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
                This.logUtil.putF (This.commonStrings.START, CategoryAbstractFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(CategoryInterface, CategoryInterface, HashMap)"));
            end if;
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (CategoryPropertiesFactory_Package.Create (categoryPropertiesHashMap));
            return CategoryInterface_Access (Category_Package.Create (rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, CategoryAbstractFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(CategoryInterface, CategoryInterface, HashMap)"), e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   procedure getRootInstance (This : in out CategoryAbstractFactory; categoryAbPath_Param : access AbPath_Package.AbPath'Class) is
      Java_Result : constant CategoryInterface_Access := CategoryAbstractFactory'Class (This).getRootInstance (categoryAbPath_Param => categoryAbPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRootInstance;

   procedure getRootInstanceFromNode (This : in out CategoryAbstractFactory; node_Param : access Node_Package.Node'Class) is
      Java_Result : constant CategoryInterface_Access := CategoryAbstractFactory'Class (This).getRootInstanceFromNode (node_Param => node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRootInstanceFromNode;

   procedure getInstance (This : in out CategoryAbstractFactory; categoryName : Unbounded_String) is
      Java_Result : constant CategoryInterface_Access := CategoryAbstractFactory'Class (This).getInstance (categoryName => categoryName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out CategoryAbstractFactory; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryName : Unbounded_String) is
      Java_Result : constant CategoryInterface_Access := CategoryAbstractFactory'Class (This).getInstance (rootCategoryInterface_Param => rootCategoryInterface_Param, parentCategoryInterface_Param => parentCategoryInterface_Param, categoryName => categoryName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out CategoryAbstractFactory; node_Param : access Node_Package.Node'Class) is
      Java_Result : constant CategoryInterface_Access := CategoryAbstractFactory'Class (This).getInstance (node_Param => node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out CategoryAbstractFactory; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; node_Param : access Node_Package.Node'Class) is
      Java_Result : constant CategoryInterface_Access := CategoryAbstractFactory'Class (This).getInstance (rootCategoryInterface_Param => rootCategoryInterface_Param, parentCategoryInterface_Param => parentCategoryInterface_Param, node_Param => node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out CategoryAbstractFactory; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant CategoryInterface_Access := CategoryAbstractFactory'Class (This).getInstance (rootCategoryInterface_Param => rootCategoryInterface_Param, parentCategoryInterface_Param => parentCategoryInterface_Param, categoryPropertiesHashMap_Param => categoryPropertiesHashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.category.CategoryAbstractFactory_Package;


