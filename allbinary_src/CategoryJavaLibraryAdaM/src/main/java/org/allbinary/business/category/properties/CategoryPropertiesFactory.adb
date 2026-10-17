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


package body org.allbinary.business.category.properties.CategoryPropertiesFactory_Package is

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
      Initialize (This.all, name);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out CategoryPropertiesFactory'Class; node : Node_Access) is
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (CategoryProperties_Package.Create (node));
   end Initialize;

   function Create (node : Node_Access) return CategoryPropertiesFactory_Access is
      This : constant CategoryPropertiesFactory_Access := new CategoryPropertiesFactory;
   begin
      Initialize (This.all, node);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out CategoryPropertiesFactory'Class; categoryPropertiesHashMap : HashMap_Access) is
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (CategoryProperties_Package.Create (categoryPropertiesHashMap));
   end Initialize;

   function Create (categoryPropertiesHashMap : HashMap_Access) return CategoryPropertiesFactory_Access is
      This : constant CategoryPropertiesFactory_Access := new CategoryPropertiesFactory;
   begin
      Initialize (This.all, categoryPropertiesHashMap);
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
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out CategoryPropertiesFactory) is
      Java_Result : constant CategoryPropertiesInterface_Access := CategoryPropertiesFactory'Class (This).getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.category.properties.CategoryPropertiesFactory_Package;


