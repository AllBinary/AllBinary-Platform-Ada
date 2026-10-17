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


package body views.generic_Id.order.OrderView_Package is

   procedure Initialize_Fields (This : in out OrderView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.order := null;
      This.orderHistory := null;
      This.basketReview := null;
   end Initialize_Fields;


   procedure Initialize (This : in out OrderView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.request := HttpServletRequest_Access (This.getPageContext.getRequest);
        This.getFormData;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return OrderView_Access is
      This : constant OrderView_Access := new OrderView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   procedure getFormData (This : in out OrderView) is
      id : Unbounded_String;
   begin
        id := This.request.getParameter (OrderData_Package.ID);
        if (id) = (Null_Unbounded_String) then
            id := This.getWeblisketSession.getOrder.getId;
        end if;
        This.order := Order_Package.Create (Basket_Package.Create);
        This.order.setId (id);
   end getFormData;

   function toXmlNode (This : in out OrderView; document : Document_Access) return Node_Access is
      orderHistoryNode : Node_Access;
      node : Node_Access;
   begin
        begin
            orderHistoryNode := This.orderHistory.toXmlNode (document);
            node := document.createElement (This.orderHistory.getPaymentMethod);
            orderHistoryNode.appendChild (This.basketReview.toXmlNode (document));
            node.appendChild (orderHistoryNode);
            return node;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XSLLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, To_Unbounded_String ("toXmlNode"), e);
            end if;
            return null;
                end;
        end;
   end toXmlNode;

   procedure addDomNodeInterfaces (This : in out OrderView) is
   begin
        This.addDomNodeInterface (DomNodeInterface_Access (This'Unchecked_Access));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out OrderView) return Unbounded_String is
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

   procedure toXmlNode (This : in out OrderView; document : Document_Access) is
      Java_Result : constant Node_Access := OrderView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure view (This : in out OrderView) is
      Java_Result : constant Unbounded_String := OrderView'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

end views.generic_Id.order.OrderView_Package;


