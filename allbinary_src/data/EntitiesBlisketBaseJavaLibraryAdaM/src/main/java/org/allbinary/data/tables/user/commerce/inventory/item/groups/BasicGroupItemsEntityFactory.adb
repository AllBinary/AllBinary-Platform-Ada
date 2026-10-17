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


package body org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package is

   procedure Initialize_Fields (This : in out BasicGroupItemsEntityFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return BasicGroupItemsEntityFactory_Access is
   begin
        return BasicGroupItemsEntityFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out BasicGroupItemsEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicGroupItemsEntityFactory_Access is
      This : constant BasicGroupItemsEntityFactory_Access := new BasicGroupItemsEntityFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getBasicGroupItemsEntityInstance (This : in out BasicGroupItemsEntityFactory) return BasicGroupItemsEntity_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            return BasicGroupItemsEntity_Package.Create;
        exception
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.GET_INSTANCE, e);
            end if;
            return null;
        end;
   end getBasicGroupItemsEntityInstance;

   procedure getInstance is
      Java_Result : constant BasicGroupItemsEntityFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getBasicGroupItemsEntityInstance (This : in out BasicGroupItemsEntityFactory) is
      Java_Result : constant BasicGroupItemsEntity_Access := BasicGroupItemsEntityFactory'Class (This).getBasicGroupItemsEntityInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBasicGroupItemsEntityInstance;

begin
   null;
   instance := BasicGroupItemsEntityFactory_Package.Create;

end org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package;


