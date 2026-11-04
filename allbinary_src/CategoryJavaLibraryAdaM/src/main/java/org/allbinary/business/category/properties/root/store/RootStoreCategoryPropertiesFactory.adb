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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package; use org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package;
with org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package;

package body org.allbinary.business.category.properties.root.store.RootStoreCategoryPropertiesFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype CategoryPropertiesInterface_Access is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access;
   function "=" (Left, Right : CategoryPropertiesInterface_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References."=";
   subtype CategoryPropertiesInterface_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array;
   function "=" (Left, Right : CategoryPropertiesInterface_Access_Array) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References."=";
   subtype CategoryPropertiesInterface_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array_Access;
   function "=" (Left, Right : CategoryPropertiesInterface_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References."=";
   subtype CategoryPropertiesInterface_Access_Array_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryPropertiesInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References."=";
   subtype CategoryPropertiesInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryPropertiesInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   function "=" (Left, Right : AbPath_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   function "=" (Left, Right : AbPath_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   function "=" (Left, Right : AbPath_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   function "=" (Left, Right : AbPath_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbPath_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   function "=" (Left, Right : TransformInfoInterface_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   function "=" (Left, Right : TransformInfoInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   function "=" (Left, Right : Node_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   function "=" (Left, Right : Node_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   function "=" (Left, Right : Node_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
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


