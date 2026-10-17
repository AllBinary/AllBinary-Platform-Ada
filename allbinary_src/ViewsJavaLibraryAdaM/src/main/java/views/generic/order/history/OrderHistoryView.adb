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


package body views.generic_Id.order.history.OrderHistoryView_Package is

   procedure Initialize_Fields (This : in out OrderHistoryView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out OrderHistoryView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.request := HttpServletRequest_Access (This.getPageContext.getRequest);
        This.preprocessing := This.request.getParameter (OrderHistoryData_Package.PREPROCESSINGNAME);
        This.shipped := This.request.getParameter (OrderHistoryData_Package.SHIPPEDNAME);
        This.partiallyShipped := This.request.getParameter (OrderHistoryData_Package.PARTIALLYSHIPPEDNAME);
        This.processing := This.request.getParameter (OrderHistoryData_Package.PROCESSINGNAME);
        This.cancelled := This.request.getParameter (OrderHistoryData_Package.CANCELLEDNAME);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return OrderHistoryView_Access is
      This : constant OrderHistoryView_Access := new OrderHistoryView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out OrderHistoryView; document : Document_Access) return Node_Access is
      node : Node_Access;
      orderHistoryEntity : OrderHistoryEntity_Access;
      orderReviewVector : BasicArrayList_Access;
      size : Integer;
      orderHistory : OrderHistory_Access;
      orderHistoryNode : Node_Access;
      orderNode : Node_Access;
      index : Integer;
   begin
        begin
            node := document.createElement (OrderData_Package.ORDERS);
            orderHistoryEntity := OrderHistoryEntity_Package.Create;
            orderReviewVector := orderHistoryEntity.getOrders (This.getWeblisketSession.getUserName);
            size := orderReviewVector.size;
            for index in 0 .. (size) - 1 loop
                orderHistory := OrderHistory_Access (orderReviewVector.get (index));
                orderHistoryNode := orderHistory.toXmlNode (document);
                orderNode := document.createElement (orderHistory.getPaymentMethod);
                node.appendChild (orderHistory.toXmlNode (document));
            end loop;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Attempt to View a users order history"), This'Unchecked_Access, To_Unbounded_String ("view"));
            end if;
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, OrderHistoryData_Package.PREPROCESSINGNAME, OrderHistoryData_Package.PREPROCESSING));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, OrderHistoryData_Package.PROCESSINGNAME, OrderHistoryData_Package.PROCESSING));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, OrderHistoryData_Package.CANCELLEDNAME, OrderHistoryData_Package.CANCELLED));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, OrderHistoryData_Package.PARTIALLYSHIPPEDNAME, OrderHistoryData_Package.PARTIALLYSHIPPED));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, OrderHistoryData_Package.SHIPPEDNAME, OrderHistoryData_Package.SHIPPED));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, GLOBALS2.VIEWNAME, GLOBALS2.VIEW));
            return node;
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

   procedure addDomNodeInterfaces (This : in out OrderHistoryView) is
   begin
        This.addDomNodeInterface (DomNodeInterface_Access (This'Unchecked_Access));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out OrderHistoryView) return Unbounded_String is
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
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   procedure toXmlNode (This : in out OrderHistoryView; document : Document_Access) is
      Java_Result : constant Node_Access := OrderHistoryView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure view (This : in out OrderHistoryView) is
      Java_Result : constant Unbounded_String := OrderHistoryView'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

end views.generic_Id.order.history.OrderHistoryView_Package;


