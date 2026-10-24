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


with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package; use org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package;
with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package; use org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package is

   package StoreFrontsEntity_Package renames Standard.org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package;
   package StoreFrontsEntityFactory_Package renames Standard.org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out StoreFrontFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StoreFrontFactory_Access is
      This : constant StoreFrontFactory_Access := new StoreFrontFactory;
   begin
      StoreFrontFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (storeName : Unbounded_String) return StoreFront_Access is
      logUtil : LogUtil_Access;
      storeFronts : StoreFrontsEntity_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            storeFronts := StoreFrontsEntityFactory_Package.getInstance.getStoreFrontsEntityInstance;
            return storeFronts.getStoreFrontInterface (storeName);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.FACTORYERROR) then
                logUtil.put (commonStrings.EXCEPTION_Id, Java_Box (To_Unbounded_String ("StoreFrontFactory")), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   procedure getInstance (storeName : Unbounded_String) is
      Java_Result : constant StoreFront_Access := getInstance (storeName => storeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;


