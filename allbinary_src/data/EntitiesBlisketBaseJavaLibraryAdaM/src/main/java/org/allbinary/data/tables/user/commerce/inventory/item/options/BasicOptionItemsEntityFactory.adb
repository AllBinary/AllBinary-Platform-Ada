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
with org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package_References;
with org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityFactory_Package is

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
   subtype BasicOptionItemsEntity_Access is org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package_References.BasicOptionItemsEntity_Access;
   function "=" (Left, Right : BasicOptionItemsEntity_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package_References."=";
   subtype BasicOptionItemsEntity_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package_References.BasicOptionItemsEntity_Access_Array;
   function "=" (Left, Right : BasicOptionItemsEntity_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package_References."=";
   subtype BasicOptionItemsEntity_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package_References.BasicOptionItemsEntity_Access_Array_Access;
   function "=" (Left, Right : BasicOptionItemsEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package_References."=";
   subtype BasicOptionItemsEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package_References.BasicOptionItemsEntity_Access_Array_Access_Array;
   function "=" (Left, Right : BasicOptionItemsEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package_References."=";
   subtype BasicOptionItemsEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package_References.BasicOptionItemsEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicOptionItemsEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package_References."=";
   procedure Initialize_Fields (This : in out BasicOptionItemsEntityFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return BasicOptionItemsEntityFactory_Access is
   begin
        return BasicOptionItemsEntityFactory_Access (BasicOptionItemsEntityFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out BasicOptionItemsEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicOptionItemsEntityFactory_Access is
      This : constant BasicOptionItemsEntityFactory_Access := new BasicOptionItemsEntityFactory;
   begin
      BasicOptionItemsEntityFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getBasicOptionItemsEntityInstance (This : in out BasicOptionItemsEntityFactory) return BasicOptionItemsEntity_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            return BasicOptionItemsEntity_Package.Create;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, BasicOptionItemsEntityFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getBasicOptionItemsEntityInstance;

begin
   null;
   instance := BasicOptionItemsEntityFactory_Package.Create;

end org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityFactory_Package;


