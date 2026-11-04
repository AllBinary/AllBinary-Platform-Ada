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
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package; use org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package;
with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References;
with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package;

package body org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype StoreFrontsEntity_Access is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access;
   function "=" (Left, Right : StoreFrontsEntity_Access) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References."=";
   subtype StoreFrontsEntity_Access_Array is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access_Array;
   function "=" (Left, Right : StoreFrontsEntity_Access_Array) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References."=";
   subtype StoreFrontsEntity_Access_Array_Access is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access_Array_Access;
   function "=" (Left, Right : StoreFrontsEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References."=";
   subtype StoreFrontsEntity_Access_Array_Access_Array is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontsEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References."=";
   subtype StoreFrontsEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontsEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References."=";
   procedure Initialize_Fields (This : in out StoreFrontsEntityFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return StoreFrontsEntityFactory_Access is
   begin
        return StoreFrontsEntityFactory_Access (StoreFrontsEntityFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out StoreFrontsEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StoreFrontsEntityFactory_Access is
      This : constant StoreFrontsEntityFactory_Access := new StoreFrontsEntityFactory;
   begin
      StoreFrontsEntityFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getStoreFrontsEntityInstance (This : in out StoreFrontsEntityFactory) return StoreFrontsEntity_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            return StoreFrontsEntity_Package.Create;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, StoreFrontsEntityFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getStoreFrontsEntityInstance;

begin
   null;
   instance := StoreFrontsEntityFactory_Package.Create;

end org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package;


