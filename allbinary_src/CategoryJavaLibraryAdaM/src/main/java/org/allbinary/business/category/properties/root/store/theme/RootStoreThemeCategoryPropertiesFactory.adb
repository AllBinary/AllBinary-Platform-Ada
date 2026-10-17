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


   procedure Initialize (This : in out RootStoreThemeCategoryPropertiesFactory'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (RootStoreThemeCategoryProperties_Package.Create (transformInfoInterface));
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return RootStoreThemeCategoryPropertiesFactory_Access is
      This : constant RootStoreThemeCategoryPropertiesFactory_Access := new RootStoreThemeCategoryPropertiesFactory;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out RootStoreThemeCategoryPropertiesFactory'Class; transformInfoInterface : TransformInfoInterface_Access; abPath : AbPath_Access) is
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (RootStoreThemeCategoryProperties_Package.Create (transformInfoInterface, abPath));
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; abPath : AbPath_Access) return RootStoreThemeCategoryPropertiesFactory_Access is
      This : constant RootStoreThemeCategoryPropertiesFactory_Access := new RootStoreThemeCategoryPropertiesFactory;
   begin
      Initialize (This.all, transformInfoInterface, abPath);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out RootStoreThemeCategoryPropertiesFactory'Class; transformInfoInterface : TransformInfoInterface_Access; node : Node_Access) is
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (RootStoreThemeCategoryProperties_Package.Create (transformInfoInterface, node));
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; node : Node_Access) return RootStoreThemeCategoryPropertiesFactory_Access is
      This : constant RootStoreThemeCategoryPropertiesFactory_Access := new RootStoreThemeCategoryPropertiesFactory;
   begin
      Initialize (This.all, transformInfoInterface, node);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out RootStoreThemeCategoryPropertiesFactory'Class; transformInfoInterface : TransformInfoInterface_Access; categoryPropertiesHashMap : HashMap_Access) is
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (RootStoreThemeCategoryProperties_Package.Create (transformInfoInterface, categoryPropertiesHashMap));
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; categoryPropertiesHashMap : HashMap_Access) return RootStoreThemeCategoryPropertiesFactory_Access is
      This : constant RootStoreThemeCategoryPropertiesFactory_Access := new RootStoreThemeCategoryPropertiesFactory;
   begin
      Initialize (This.all, transformInfoInterface, categoryPropertiesHashMap);
      return This;
   end Create;

   function getInstance (This : in out RootStoreThemeCategoryPropertiesFactory) return CategoryPropertiesInterface_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            return CategoryPropertiesInterface_Access (This.categoryPropertiesInterface);
        exception
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.GET_INSTANCE, e);
            end if;
            return null;
        end;
   end getInstance;

   procedure getInstance (This : in out RootStoreThemeCategoryPropertiesFactory) is
      Java_Result : constant CategoryPropertiesInterface_Access := RootStoreThemeCategoryPropertiesFactory'Class (This).getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryPropertiesFactory_Package;


