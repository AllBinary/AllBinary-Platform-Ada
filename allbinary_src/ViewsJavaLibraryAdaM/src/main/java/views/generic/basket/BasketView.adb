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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketData_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketData_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.control.search.SearchData_Package; use org.allbinary.logic.control.search.SearchData_Package;

package body views.generic_Id.basket.BasketView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasketData_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketData_Package;
   package BasketInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
   package BasicItemView_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package InventoryEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
   package InventoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package SearchData_Package renames Standard.org.allbinary.logic.control.search.SearchData_Package;
   procedure Initialize_Fields (This : in out BasketView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasketView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.request := HttpServletRequest_Access (BasketView'Class (This).getPageContext.getRequest);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return BasketView_Access is
      This : constant BasketView_Access := new BasketView;
   begin
      BasketView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out BasketView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      inventoryEntity : InventoryEntity_Access;
      basketInterface : BasketInterface_Access;
      basketNode : Node_Access;
      itemsAndNumberInBasket : HashMap_Access;
      numberOfResults : Integer;
      items : Set_Access;
      productArray : Java_Object_Access_Array_Access;
      size : Integer;
      product : Unbounded_String;
      itemInterface : ItemInterface_Access;
      basicItemView : BasicItemView_Access;
      node : Node_Access;
      numberInBasket : Unbounded_String;
      itemPrice : Money_Access;
      itemTotal : Money_Access;
      index : Integer;
      totalNumberNode : Node_Access;
      totalNumberTextNode : Node_Access;
      totalWeightNode : Node_Access;
      totalWeightTextNode : Node_Access;
      subTotalNode : Node_Access;
      subTotalTextNode : Node_Access;
   begin
        begin
            inventoryEntity := InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance;
            basketInterface := BasketView'Class (This).getWeblisketSession.getOrder.getBasket;
            basketNode := document.createElement (BasketData_Package.BASKET);
            itemsAndNumberInBasket := basketInterface.getItems;
            numberOfResults := 1;
            items := itemsAndNumberInBasket.keySet;
            productArray := items.toArray;
            size := productArray'Length;
            for index in 0 .. (size) - 1 loop
                product := Java_New_String (Java_Unbox (productArray (index)));
                itemInterface := inventoryEntity.getItem (product);
                if (itemInterface) /= (null) then
                    basicItemView := BasicItemView_Package.Create (itemInterface, BasicArrayListD_Package.Create);
                    node := basicItemView.toXmlNode (document);
                    numberInBasket := basketInterface.getNumberOf (product).toString;
                    node.appendChild (ModDomHelper_Package.createNameValueNodes (document, BasketData_Package.ITEMTOTALINBASKET, numberInBasket));
                    itemPrice := itemInterface.getPrice;
                    itemTotal := Money_Package.Create (itemPrice);
                    itemTotal.multiply (basketInterface.getNumberOf (product).intValue);
                    node.appendChild (ModDomHelper_Package.createNameValueNodes (document, BasketData_Package.ITEMTOTAL, itemTotal.toString));
                    basketNode.appendChild (node);
                else
                    This.logUtil.putF (To_Unbounded_String ("Product Failed: ") & product, BasketView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"));
                end if;
                numberOfResults := numberOfResults + 1;
            end loop;
            totalNumberNode := document.createElement (SearchData_Package.TOTAL_NUMBER_ITEMS);
            totalNumberTextNode := document.createTextNode (basketInterface.getNumberOfItems.toString);
            totalNumberNode.appendChild (totalNumberTextNode);
            totalWeightNode := document.createElement (BasketData_Package.TOTALWEIGHT);
            totalWeightTextNode := document.createTextNode (basketInterface.getTotalWeight.toString);
            totalWeightNode.appendChild (totalWeightTextNode);
            subTotalNode := document.createElement (BasketData_Package.SUBTOTAL);
            subTotalTextNode := document.createTextNode (basketInterface.getSubTotal.toString);
            subTotalNode.appendChild (subTotalTextNode);
            basketNode.appendChild (totalNumberNode);
            basketNode.appendChild (totalWeightNode);
            basketNode.appendChild (subTotalNode);
            return basketNode;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XSLLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, BasketView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end toXmlNode;

   procedure addDomNodeInterfaces (This : in out BasketView) is
   begin
        BasketView'Class (This).addDomNodeInterface (DomNodeInterface_Access (BasketView_Access'(This'Unchecked_Access)));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out BasketView) return Unbounded_String is
   begin
        begin
            BasketView'Class (This).addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasketView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   procedure toXmlNode (This : in out BasketView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := BasketView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.generic_Id.basket.BasketView_Package;


