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


package body org.allbinary.data.tree.category.CategoryLoaderFactory_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   function getInstance (categoryFactoryInterface : CategoryFactoryInterface_Access) return CategoryLoaderInterface_Access is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            return CategoryLoader_Package.Create (categoryFactoryInterface);
        exception
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                logUtil.put (commonStrings.EXCEPTION_Id, To_Unbounded_String ("CategoryNodeFactory"), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
        end;
   end getInstance;

   procedure getInstance (categoryFactoryInterface : CategoryFactoryInterface_Access) is
      Java_Result : constant CategoryLoaderInterface_Access := getInstance (categoryFactoryInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.data.tree.category.CategoryLoaderFactory_Package;


