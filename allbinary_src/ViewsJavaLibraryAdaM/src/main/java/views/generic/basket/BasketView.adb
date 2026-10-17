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


package body views.generic_Id.basket.BasketView_Package is

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
        This.request := HttpServletRequest_Access (This.getPageContext.getRequest);
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
            basketInterface := This.getWeblisketSession.getOrder.getBasket;
            basketNode := document.createElement (BasketData_Package.BASKET);
            itemsAndNumberInBasket := basketInterface.getItems;
            numberOfResults := 1;
            items := itemsAndNumberInBasket.keySet;
            productArray := items.toArray;
            size := productArray'Length;
            for index in 0 .. (size) - 1 loop
                product := Java_New_String (Unbounded_String (productArray (index)));
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
        This.addDomNodeInterface (DomNodeInterface_Access (BasketView_Access'(This'Unchecked_Access)));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out BasketView) return Unbounded_String is
   begin
        begin
            This.addDomNodeInterfaces;
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
      Java_Result : constant Node_Access := BasketView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.generic_Id.basket.BasketView_Package;


