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


package body org.allbinary.data.tables.user.commerce.inventory.item.customs.CustomItemsEntityFactory_Package is

   procedure Initialize_Fields (This : in out CustomItemsEntityFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return CustomItemsEntityFactory_Access is
   begin
        return CustomItemsEntityFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out CustomItemsEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CustomItemsEntityFactory_Access is
      This : constant CustomItemsEntityFactory_Access := new CustomItemsEntityFactory;
   begin
      CustomItemsEntityFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getCustomItemsEntityInstance (This : in out CustomItemsEntityFactory) return CustomItemsEntity_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            return CustomItemsEntity_Package.Create;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, CustomItemsEntityFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getCustomItemsEntityInstance;

begin
   null;
   instance := CustomItemsEntityFactory_Package.Create;

end org.allbinary.data.tables.user.commerce.inventory.item.customs.CustomItemsEntityFactory_Package;


