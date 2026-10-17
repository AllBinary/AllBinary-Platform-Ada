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


package body org.allbinary.business.category.store.StoreCategoryFactory_Package is

   procedure Initialize_Fields (This : in out StoreCategoryFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreCategoryFactory'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
      CategoryAbstractFactory_Package.Initialize (This);
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("StoreCategoryFactory(TransformInfoInterface transformInfoInterface)"));
        end if;
        This.transformInfoInterface := transformInfoInterface;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return StoreCategoryFactory_Access is
      This : constant StoreCategoryFactory_Access := new StoreCategoryFactory;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function getRootInstance (This : in out StoreCategoryFactory) return CategoryInterface_Access is
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (RootStoreCategoryPropertiesFactory_Package.Create (This.transformInfoInterface));
            return CategoryInterface_Access (Category_Package.Create (categoryPropertiesFactoryInterface));
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getInstance(String, int)"), e);
            end if;
            return null;
        end;
   end getRootInstance;

   function getRootInstance (This : in out StoreCategoryFactory; categoryPath : AbPath_Access) return CategoryInterface_Access is
      level : Integer;
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            level := CategoryUtil_Package.getPathLevel (categoryPath);
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (RootStoreCategoryPropertiesFactory_Package.Create (This.transformInfoInterface, categoryPath));
            return CategoryInterface_Access (Category_Package.Create (categoryPropertiesFactoryInterface, level));
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getInstance(String, int)"), e);
            end if;
            return null;
        end;
   end getRootInstance;

   function getRootInstanceFromNode (This : in out StoreCategoryFactory; node : Node_Access) return CategoryInterface_Access is
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
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getInstance(String, int)"), e);
            end if;
            return null;
        end;
   end getRootInstanceFromNode;

   procedure getRootInstance (This : in out StoreCategoryFactory) is
      Java_Result : constant CategoryInterface_Access := StoreCategoryFactory'Class (This).getRootInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRootInstance;

   procedure getRootInstance (This : in out StoreCategoryFactory; categoryPath : AbPath_Access) is
      Java_Result : constant CategoryInterface_Access := StoreCategoryFactory'Class (This).getRootInstance (categoryPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRootInstance;

   procedure getRootInstanceFromNode (This : in out StoreCategoryFactory; node : Node_Access) is
      Java_Result : constant CategoryInterface_Access := StoreCategoryFactory'Class (This).getRootInstanceFromNode (node);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRootInstanceFromNode;

end org.allbinary.business.category.store.StoreCategoryFactory_Package;


