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


package body views.generic_Id.shipping.ShippingMethodsView_Package is

   procedure Initialize_Fields (This : in out ShippingMethodsView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out ShippingMethodsView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.storeFrontInterface := StoreFrontFactory_Package.getInstance (This.getTransformInfoInterface.getStoreName);
        This.shippingMethods := ShippingMethods_Package.Create (This.abeClientInformation, This.storeFrontInterface);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return ShippingMethodsView_Access is
      This : constant ShippingMethodsView_Access := new ShippingMethodsView;
   begin
      ShippingMethodsView_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out ShippingMethodsView; document : Document_Access) return Node_Access is
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
            order := This.getWeblisketSession.getOrder;
            basket := This.getWeblisketSession.getOrder.getBasket;
            shippingAddressesEntityInterface := ShippingAddressesEntityFactory_Package.getInstance.getInstance (This.getWeblisketSession.getUserName);
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
                shippingMethodNode.appendChild (ModDomHelper_Package.createNameValueNodes (document, ShippingMethodsData_Package.TAXRATE, taxRate.toString));
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
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, To_Unbounded_String ("toXmlNode"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end toXmlNode;

   procedure addDomNodeInterfaces (This : in out ShippingMethodsView) is
   begin
        This.addDomNodeInterface (DomNodeInterface_Access (This'Unchecked_Access));
   end addDomNodeInterfaces;

   function view (This : in out ShippingMethodsView) return Unbounded_String is
      error : Unbounded_String;
   begin
        begin
            This.addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to view ShippingMethods");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            return error;
                end;
        end;
   end view;

   procedure toXmlNode (This : in out ShippingMethodsView; document : Document_Access) is
      Java_Result : constant Node_Access := ShippingMethodsView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.generic_Id.shipping.ShippingMethodsView_Package;


