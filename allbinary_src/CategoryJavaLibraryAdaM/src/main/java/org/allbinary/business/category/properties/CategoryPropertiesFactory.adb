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


with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.business.category.properties.CategoryProperties_Package; use org.allbinary.business.category.properties.CategoryProperties_Package;

package body org.allbinary.business.category.properties.CategoryPropertiesFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out CategoryPropertiesFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryPropertiesFactory'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (CategoryProperties_Package.Create (name));
   end Initialize;

   function Create (name : Unbounded_String) return CategoryPropertiesFactory_Access is
      This : constant CategoryPropertiesFactory_Access := new CategoryPropertiesFactory;
   begin
      CategoryPropertiesFactory_Package.Initialize (This.all, name);
      return This;
   end Create;

   procedure Initialize (This : in out CategoryPropertiesFactory'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (CategoryProperties_Package.Create (node));
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return CategoryPropertiesFactory_Access is
      This : constant CategoryPropertiesFactory_Access := new CategoryPropertiesFactory;
   begin
      CategoryPropertiesFactory_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out CategoryPropertiesFactory'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) is
      categoryPropertiesHashMap : constant HashMap_Access := HashMap_Access (categoryPropertiesHashMap_Param);
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (CategoryProperties_Package.Create (categoryPropertiesHashMap));
   end Initialize;

   function Create (categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return CategoryPropertiesFactory_Access is
      This : constant CategoryPropertiesFactory_Access := new CategoryPropertiesFactory;
   begin
      CategoryPropertiesFactory_Package.Initialize (This.all, categoryPropertiesHashMap_Param);
      return This;
   end Create;

   function getInstance (This : in out CategoryPropertiesFactory) return CategoryPropertiesInterface_Access is
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
                This.logUtil.put (commonStrings.EXCEPTION_Id, CategoryPropertiesFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

end org.allbinary.business.category.properties.CategoryPropertiesFactory_Package;


