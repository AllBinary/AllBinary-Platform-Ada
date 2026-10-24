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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.data.tree.category.CategoryLoader_Package; use org.allbinary.data.tree.category.CategoryLoader_Package;

package body org.allbinary.data.tree.category.CategoryLoaderFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out CategoryLoaderFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryLoaderFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CategoryLoaderFactory_Access is
      This : constant CategoryLoaderFactory_Access := new CategoryLoaderFactory;
   begin
      CategoryLoaderFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class) return CategoryLoaderInterface_Access is
      categoryFactoryInterface : constant CategoryFactoryInterface_Access := CategoryFactoryInterface_Access (categoryFactoryInterface_Param);
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            return CategoryLoaderInterface_Access (CategoryLoader_Package.Create (categoryFactoryInterface));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                logUtil.put (commonStrings.EXCEPTION_Id, Java_Box (To_Unbounded_String ("CategoryNodeFactory")), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   procedure getInstance (categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class) is
      Java_Result : constant CategoryLoaderInterface_Access := getInstance (categoryFactoryInterface_Param => categoryFactoryInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.data.tree.category.CategoryLoaderFactory_Package;


