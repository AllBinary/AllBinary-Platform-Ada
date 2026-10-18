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


with org.allbinary.business.context.modules.storefront.StoreFront_Package; use org.allbinary.business.context.modules.storefront.StoreFront_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketData_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketData_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;

package body admin.taghelpers.BasketRequestHelper_Package is

   package StoreFront_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFront_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package BasketData_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketData_Package;
   package BasketInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
   package InventoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
   procedure Initialize_Fields (This : in out BasketRequestHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      
      This.storeFrontInterface := null;
      
      
      
      This.id := Null_Unbounded_String;
      This.num := Null_Unbounded_String;
      This.MAX := 200;
   end Initialize_Fields;


   procedure Initialize (This : in out BasketRequestHelper'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      storeName : Unbounded_String;
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        This.propertiesHashMap := propertiesHashMap;
        This.pageContext := pageContext;
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        storeName := Java_Unbox (propertiesHashMap.get (StoreFrontData_Package.getInstance.NAME));
        if (storeName) /= (Null_Unbounded_String) then
            This.storeFrontInterface := StoreFrontInterface_Access (StoreFrontFactory_Package.getInstance (storeName));
        else
            This.storeFrontInterface := StoreFrontInterface_Access (StoreFront_Package.Create);
        end if;
        This.weblisketSession := WeblisketSession_Package.Create (propertiesHashMap, pageContext);
        BasketRequestHelper'Class (This).getFormData;
   end Initialize;

   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return BasketRequestHelper_Access is
      This : constant BasketRequestHelper_Access := new BasketRequestHelper;
   begin
      BasketRequestHelper_Package.Initialize (This.all, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure getFormData (This : in out BasketRequestHelper) is
   begin
        This.id := This.request.getParameter (This.basicItemData.ID);
        This.num := This.request.getParameter (BasketData_Package.ITEMTOTALINBASKET);
   end getFormData;

   function addItemToBasket (This : in out BasketRequestHelper) return Boolean is
      basket : BasketInterface_Access;
   begin
        begin
            if ((This.id) /= (Null_Unbounded_String)) and then ((This.num) /= (Null_Unbounded_String)) then
                basket := BasketInterface_Access (This.weblisketSession.getOrder.getBasket);
                if (InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance.getItem (This.id)) = (null) then
                    return False;
                end if;
                basket.addItem (This.id, This.num);
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (To_Unbounded_String ("Successfully added item to Basket"), BasketRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("addItemToBasket()"));
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasketRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("addItemToBasket()"), e);
            end if;
            return False;
                end;
        end;
   end addItemToBasket;

   function removeItemFromBasket (This : in out BasketRequestHelper) return Boolean is
      basket : BasketInterface_Access;
   begin
        begin
            if (This.id) /= (Null_Unbounded_String) then
                basket := BasketInterface_Access (This.weblisketSession.getOrder.getBasket);
                basket.removeItem (This.id);
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (To_Unbounded_String ("Successfully removed item from Basket"), BasketRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("removeItemFromBasket()"));
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasketRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("removeItemFromBasket()"), e);
            end if;
            return False;
                end;
        end;
   end removeItemFromBasket;

   function adjustBasket (This : in out BasketRequestHelper) return Boolean is
      basket : BasketInterface_Access;
   begin
        begin
            basket := BasketInterface_Access (This.weblisketSession.getOrder.getBasket);
            if ((This.id) /= (Null_Unbounded_String)) and then ((This.num) /= (Null_Unbounded_String)) then
                basket.adjustItem (This.id, This.num);
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (To_Unbounded_String ("Successfull Adjusted Basket"), BasketRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("adjustBasket()"));
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasketRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("adjustBasket()"), e);
            end if;
            return False;
                end;
        end;
   end adjustBasket;

end admin.taghelpers.BasketRequestHelper_Package;


