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


with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.business.user.commerce.inventory.order.OrderHistoryFactory_Package is

   package OrderHistoryEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out OrderHistoryFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out OrderHistoryFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OrderHistoryFactory_Access is
      This : constant OrderHistoryFactory_Access := new OrderHistoryFactory;
   begin
      OrderHistoryFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (id : Unbounded_String) return OrderHistory_Access is
      logUtil : LogUtil_Access;
      orderHistoryEntityInterface : OrderHistoryEntity_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            orderHistoryEntityInterface := OrderHistoryEntity_Package.Create;
            return OrderHistory_Access (orderHistoryEntityInterface.getOrder (id));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.FACTORYERROR) then
                logUtil.put (commonStrings.EXCEPTION_Id, To_Unbounded_String ("OrderHistoryFactory"), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   procedure getInstance (id : Unbounded_String) is
      Java_Result : constant OrderHistory_Access := getInstance (id => id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.user.commerce.inventory.order.OrderHistoryFactory_Package;


