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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package; use org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.money.tax.TaxFactory_Package; use org.allbinary.business.user.commerce.money.tax.TaxFactory_Package;
with org.allbinary.business.user.commerce.shipping.ShippingMethodsData_Package; use org.allbinary.business.user.commerce.shipping.ShippingMethodsData_Package;
with org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package; use org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;
with org.allbinary.data.tables.user.address.StreetAddressesEntityInterface_Package; use org.allbinary.data.tables.user.address.StreetAddressesEntityInterface_Package;
with org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package; use org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;

package body views.generic_Id.shipping.ShippingMethodsView_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package BasketInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
   package OrderInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package TaxFactory_Package renames Standard.org.allbinary.business.user.commerce.money.tax.TaxFactory_Package;
   package ShippingMethodsData_Package renames Standard.org.allbinary.business.user.commerce.shipping.ShippingMethodsData_Package;
   package ShippingInterface_Package renames Standard.org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;
   package StreetAddressesEntityInterface_Package renames Standard.org.allbinary.data.tables.user.address.StreetAddressesEntityInterface_Package;
   package ShippingAddressesEntityFactory_Package renames Standard.org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   procedure Initialize_Fields (This : in out ShippingMethodsView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out ShippingMethodsView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.storeFrontInterface := StoreFrontFactory_Package.getInstance (ShippingMethodsView'Class (This).getTransformInfoInterface.getStoreName);
        This.shippingMethods := ShippingMethods_Package.Create (This.abeClientInformation, This.storeFrontInterface);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return ShippingMethodsView_Access is
      This : constant ShippingMethodsView_Access := new ShippingMethodsView;
   begin
      ShippingMethodsView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out ShippingMethodsView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      shippingMethodsNode : Node_Access;
      order : OrderInterface_Access;
      basket : BasketInterface_Access;
      shippingAddressesEntityInterface : StreetAddressesEntityInterface_Access;
      streetAddress : StreetAddress_Access;
      shippingVector : BasicArrayList_Access;
      size : Integer;
      shippingMethodNode : Node_Access;
      shipping : ShippingInterface_Access;
      shippingView : DomNodeInterface_Access;
      shippingCost : Money_Access;
      subTotal : Money_Access;
      taxRate : Float;
      tax : Money_Access;
      total : Money_Access;
      index : Integer;
   begin
        begin
            shippingMethodsNode := document.createElement (ShippingMethodsData_Package.SHIPPINGMETHODSORDERSUMMARIES);
            order := ShippingMethodsView'Class (This).getWeblisketSession.getOrder;
            basket := ShippingMethodsView'Class (This).getWeblisketSession.getOrder.getBasket;
            shippingAddressesEntityInterface := ShippingAddressesEntityFactory_Package.getInstance.getInstance (ShippingMethodsView'Class (This).getWeblisketSession.getUserName);
            streetAddress := shippingAddressesEntityInterface.getDefault;
            shippingVector := This.shippingMethods.get;
            size := shippingVector.size;
            for index in 0 .. (size) - 1 loop
                shippingMethodNode := document.createElement (ShippingMethodsData_Package.SHIPPINGMETHODORDERSUMMARY);
                shipping := ShippingInterface_Access (shippingVector.get (index));
                shippingView := DomNodeInterface_Access (shipping);
                shippingMethodNode.appendChild (shippingView.toXmlNode (document));
                shippingCost := shipping.getCost (order);
                subTotal := basket.getSubTotal;
                taxRate := TaxFactory_Package.getInstance.getInstance (This.abeClientInformation, This.storeFrontInterface).getTaxRate (streetAddress, This.storeFrontInterface);
                tax := Money_Package.Create;
                total := Money_Package.Create;
                total.add (shippingCost.toString);
                total.add (subTotal.toString);
                tax.add (total.toString);
                tax.multiply (taxRate);
                total.add (tax.toString);
                shippingMethodNode.appendChild (ModDomHelper_Package.createNameValueNodes (document, ShippingMethodsData_Package.SHIPPINGCOST, shippingCost.toString));
                shippingMethodNode.appendChild (ModDomHelper_Package.createNameValueNodes (document, ShippingMethodsData_Package.TAXRATE, To_Unbounded_String (Java_Image (taxRate))));
                shippingMethodNode.appendChild (ModDomHelper_Package.createNameValueNodes (document, ShippingMethodsData_Package.SUBTOTAL, subTotal.toString));
                shippingMethodNode.appendChild (ModDomHelper_Package.createNameValueNodes (document, ShippingMethodsData_Package.TAX, tax.toString));
                shippingMethodNode.appendChild (ModDomHelper_Package.createNameValueNodes (document, ShippingMethodsData_Package.TOTAL, total.toString));
                shippingMethodNode.appendChild (ModDomHelper_Package.createNameValueNodes (document, EntryData_Package.getInstance.DEFAULT, This.shippingMethods.getDefault.getName));
                shippingMethodsNode.appendChild (shippingMethodNode);
            end loop;
            return shippingMethodsNode;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XSLLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, ShippingMethodsView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end toXmlNode;

   procedure addDomNodeInterfaces (This : in out ShippingMethodsView) is
   begin
        ShippingMethodsView'Class (This).addDomNodeInterface (DomNodeInterface_Access (ShippingMethodsView_Access'(This'Unchecked_Access)));
   end addDomNodeInterfaces;

   function view (This : in out ShippingMethodsView) return Unbounded_String is
      error : Unbounded_String;
   begin
        begin
            ShippingMethodsView'Class (This).addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to view ShippingMethods");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, ShippingMethodsView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            return error;
                end;
        end;
   end view;

   procedure toXmlNode (This : in out ShippingMethodsView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := ShippingMethodsView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.generic_Id.shipping.ShippingMethodsView_Package;


