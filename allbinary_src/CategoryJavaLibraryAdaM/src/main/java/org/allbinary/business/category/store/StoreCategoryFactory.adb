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


with org.allbinary.business.category.Category_Package; use org.allbinary.business.category.Category_Package;
with org.allbinary.business.category.CategoryUtil_Package; use org.allbinary.business.category.CategoryUtil_Package;
with org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
with org.allbinary.business.category.properties.root.store.RootStoreCategoryPropertiesFactory_Package; use org.allbinary.business.category.properties.root.store.RootStoreCategoryPropertiesFactory_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.business.category.store.StoreCategoryFactory_Package is

   package Category_Package renames Standard.org.allbinary.business.category.Category_Package;
   package CategoryUtil_Package renames Standard.org.allbinary.business.category.CategoryUtil_Package;
   package CategoryPropertiesFactoryInterface_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
   package RootStoreCategoryPropertiesFactory_Package renames Standard.org.allbinary.business.category.properties.root.store.RootStoreCategoryPropertiesFactory_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out StoreCategoryFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreCategoryFactory'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
      CategoryAbstractFactory_Package.Initialize (This);
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
            This.logUtil.putF (This.commonStrings.START, StoreCategoryFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("StoreCategoryFactory(TransformInfoInterface transformInfoInterface)"));
        end if;
        This.transformInfoInterface := transformInfoInterface;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return StoreCategoryFactory_Access is
      This : constant StoreCategoryFactory_Access := new StoreCategoryFactory;
   begin
      StoreCategoryFactory_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function getRootInstance (This : in out StoreCategoryFactory) return CategoryInterface_Access is
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (RootStoreCategoryPropertiesFactory_Package.Create (This.transformInfoInterface));
            return CategoryInterface_Access (Category_Package.Create (categoryPropertiesFactoryInterface));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreCategoryFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(String, int)"), e);
            end if;
            return null;
                end;
        end;
   end getRootInstance;

   function getRootInstance (This : in out StoreCategoryFactory; categoryPath_Param : access AbPath_Package.AbPath'Class) return CategoryInterface_Access is
      categoryPath : constant AbPath_Access := AbPath_Access (categoryPath_Param);
      level : Integer;
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            level := CategoryUtil_Package.getPathLevel (categoryPath);
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (RootStoreCategoryPropertiesFactory_Package.Create (This.transformInfoInterface, categoryPath));
            return CategoryInterface_Access (Category_Package.Create (categoryPropertiesFactoryInterface, level));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreCategoryFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(String, int)"), e);
            end if;
            return null;
                end;
        end;
   end getRootInstance;

   function getRootInstanceFromNode (This : in out StoreCategoryFactory; node_Param : access Node_Package.Node'Class) return CategoryInterface_Access is
      node : constant Node_Access := Node_Access (node_Param);
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
      categoryPath : AbPath_Access;
      level : Integer;
   begin
        begin
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (RootStoreCategoryPropertiesFactory_Package.Create (This.transformInfoInterface, node));
            categoryPath := AbPath_Package.Create (CategoryUtil_Package.getNameFromNode (node), StringUtil_Package.getInstance.EMPTY_STRING);
            level := CategoryUtil_Package.getPathLevel (categoryPath);
            return CategoryInterface_Access (Category_Package.Create (categoryPropertiesFactoryInterface, level));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreCategoryFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(String, int)"), e);
            end if;
            return null;
                end;
        end;
   end getRootInstanceFromNode;

   procedure getRootInstance (This : in out StoreCategoryFactory; categoryPath_Param : access AbPath_Package.AbPath'Class) is
      Java_Result : constant CategoryInterface_Access := StoreCategoryFactory'Class (This).getRootInstance (categoryPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRootInstance;

   procedure getRootInstanceFromNode (This : in out StoreCategoryFactory; node_Param : access Node_Package.Node'Class) is
      Java_Result : constant CategoryInterface_Access := StoreCategoryFactory'Class (This).getRootInstanceFromNode (node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRootInstanceFromNode;

end org.allbinary.business.category.store.StoreCategoryFactory_Package;


