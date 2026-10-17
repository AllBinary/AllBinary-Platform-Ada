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


package body org.allbinary.business.category.CategoryAbstractFactory_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   function getRootInstance (This : in out CategoryAbstractFactory) return CategoryInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getRootInstance;

   function getRootInstance (This : in out CategoryAbstractFactory; categoryAbPath : AbPath_Access) return CategoryInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getRootInstance;

   function getRootInstanceFromNode (This : in out CategoryAbstractFactory; node : Node_Access) return CategoryInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getRootInstanceFromNode;

   function getInstance (This : in out CategoryAbstractFactory; categoryName : Unbounded_String) return CategoryInterface_Access is
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
                This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("getInstance(String)"));
            end if;
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (CategoryPropertiesFactory_Package.Create (categoryName));
            return CategoryInterface_Access (Category_Package.Create (categoryPropertiesFactoryInterface));
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getInstance(String, int)"), e);
            end if;
            return null;
        end;
   end getInstance;

   function getInstance (This : in out CategoryAbstractFactory; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; categoryName : Unbounded_String) return CategoryInterface_Access is
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
                This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("getInstance(CategoryInterface, CategoryInterface, String)"));
            end if;
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (CategoryPropertiesFactory_Package.Create (categoryName));
            return CategoryInterface_Access (Category_Package.Create (rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface));
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getInstance(CategoryInterface, CategoryInterface , String, int)"), e);
            end if;
            return null;
        end;
   end getInstance;

   function getInstance (This : in out CategoryAbstractFactory; node : Node_Access) return CategoryInterface_Access is
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
                This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("getInstance(Node)"));
            end if;
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (CategoryPropertiesFactory_Package.Create (node));
            return CategoryInterface_Access (Category_Package.Create (categoryPropertiesFactoryInterface));
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getInstance(Node, int)"), e);
            end if;
            return null;
        end;
   end getInstance;

   function getInstance (This : in out CategoryAbstractFactory; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; node : Node_Access) return CategoryInterface_Access is
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
                This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("getInstance(CategoryInterface, CategoryInterface, Node)"));
            end if;
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (CategoryPropertiesFactory_Package.Create (node));
            return CategoryInterface_Access (Category_Package.Create (rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface));
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getInstance(CategoryInterface, CategoryInterface, Node, int)"), e);
            end if;
            return null;
        end;
   end getInstance;

   function getInstance (This : in out CategoryAbstractFactory; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; categoryPropertiesHashMap : HashMap_Access) return CategoryInterface_Access is
      categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
                This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("getInstance(CategoryInterface, CategoryInterface, HashMap)"));
            end if;
            categoryPropertiesFactoryInterface := CategoryPropertiesFactoryInterface_Access (CategoryPropertiesFactory_Package.Create (categoryPropertiesHashMap));
            return CategoryInterface_Access (Category_Package.Create (rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface));
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getInstance(CategoryInterface, CategoryInterface, HashMap)"), e);
            end if;
            return null;
        end;
   end getInstance;

   procedure getRootInstance (This : in out CategoryAbstractFactory) is
      Java_Result : constant CategoryInterface_Access := CategoryAbstractFactory'Class (This).getRootInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRootInstance;

   procedure getRootInstance (This : in out CategoryAbstractFactory; categoryAbPath : AbPath_Access) is
      Java_Result : constant CategoryInterface_Access := CategoryAbstractFactory'Class (This).getRootInstance (categoryAbPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRootInstance;

   procedure getRootInstanceFromNode (This : in out CategoryAbstractFactory; node : Node_Access) is
      Java_Result : constant CategoryInterface_Access := CategoryAbstractFactory'Class (This).getRootInstanceFromNode (node);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRootInstanceFromNode;

   procedure getInstance (This : in out CategoryAbstractFactory; categoryName : Unbounded_String) is
      Java_Result : constant CategoryInterface_Access := CategoryAbstractFactory'Class (This).getInstance (categoryName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out CategoryAbstractFactory; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; categoryName : Unbounded_String) is
      Java_Result : constant CategoryInterface_Access := CategoryAbstractFactory'Class (This).getInstance (rootCategoryInterface, parentCategoryInterface, categoryName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out CategoryAbstractFactory; node : Node_Access) is
      Java_Result : constant CategoryInterface_Access := CategoryAbstractFactory'Class (This).getInstance (node);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out CategoryAbstractFactory; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; node : Node_Access) is
      Java_Result : constant CategoryInterface_Access := CategoryAbstractFactory'Class (This).getInstance (rootCategoryInterface, parentCategoryInterface, node);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out CategoryAbstractFactory; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; categoryPropertiesHashMap : HashMap_Access) is
      Java_Result : constant CategoryInterface_Access := CategoryAbstractFactory'Class (This).getInstance (rootCategoryInterface, parentCategoryInterface, categoryPropertiesHashMap);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.category.CategoryAbstractFactory_Package;


