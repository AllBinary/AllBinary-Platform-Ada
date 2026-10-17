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


package body org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package is

   procedure Initialize_Fields (This : in out InventoryEntityFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return InventoryEntityFactory_Access is
   begin
        return InventoryEntityFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out InventoryEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InventoryEntityFactory_Access is
      This : constant InventoryEntityFactory_Access := new InventoryEntityFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInventoryEntityInstance (This : in out InventoryEntityFactory) return InventoryEntity_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            return InventoryEntity_Package.Create;
        exception
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getInventoryEntityInstance()"), e);
            end if;
            return null;
        end;
   end getInventoryEntityInstance;

   procedure getInstance is
      Java_Result : constant InventoryEntityFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInventoryEntityInstance (This : in out InventoryEntityFactory) is
      Java_Result : constant InventoryEntity_Access := InventoryEntityFactory'Class (This).getInventoryEntityInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInventoryEntityInstance;

begin
   null;
   instance := InventoryEntityFactory_Package.Create;

end org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;


