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
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
with org.allbinary.business.user.username.UserName_Package; use org.allbinary.business.user.username.UserName_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.globals.GLOBALS2_Package; use org.allbinary.globals.GLOBALS2_Package;

package body views.admin.orderhistory.UserNameOrderHistoryView_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package OrderData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
   package OrderHistory_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
   package OrderHistoryData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
   package UserName_Package renames Standard.org.allbinary.business.user.username.UserName_Package;
   package OrderHistoryEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package GLOBALS2_Package renames Standard.org.allbinary.globals.GLOBALS2_Package;
   procedure Initialize_Fields (This : in out UserNameOrderHistoryView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      
      
      
      
      This.ON := To_Unbounded_String ("on");
   end Initialize_Fields;


   procedure Initialize (This : in out UserNameOrderHistoryView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.request := HttpServletRequest_Access (UserNameOrderHistoryView'Class (This).getPageContext.getRequest);
        This.userName := This.request.getParameter (UserData_Package.USERNAME);
        This.preprocessing := This.request.getParameter (OrderHistoryData_Package.PREPROCESSINGNAME);
        This.shipped := This.request.getParameter (OrderHistoryData_Package.SHIPPEDNAME);
        This.partiallyShipped := This.request.getParameter (OrderHistoryData_Package.PARTIALLYSHIPPEDNAME);
        This.processing := This.request.getParameter (OrderHistoryData_Package.PROCESSINGNAME);
        This.cancelled := This.request.getParameter (OrderHistoryData_Package.CANCELLEDNAME);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return UserNameOrderHistoryView_Access is
      This : constant UserNameOrderHistoryView_Access := new UserNameOrderHistoryView;
   begin
      UserNameOrderHistoryView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   procedure addDomNodeInterfaces (This : in out UserNameOrderHistoryView) is
   begin
        UserNameOrderHistoryView'Class (This).addDomNodeInterface (DomNodeInterface_Access (UserNameOrderHistoryView_Access'(This'Unchecked_Access)));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out UserNameOrderHistoryView) return Unbounded_String is
   begin
        begin
            UserNameOrderHistoryView'Class (This).addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, UserNameOrderHistoryView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   function toXmlNode (This : in out UserNameOrderHistoryView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
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
            orderReviewVector := orderHistoryEntity.getOrders (This.userName);
            size := orderReviewVector.size;
            for index in 0 .. (size) - 1 loop
                orderHistory := OrderHistory_Access (orderReviewVector.get (index));
                orderHistoryNode := orderHistory.toXmlNode (document);
                orderNode := document.createElement (orderHistory.getPaymentMethod);
                node.appendChild (orderHistory.toXmlNode (document));
            end loop;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Attempt to View a users order history"), UserNameOrderHistoryView_Access'(This'Unchecked_Access), To_Unbounded_String ("view"));
            end if;
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, OrderHistoryData_Package.PREPROCESSINGNAME, OrderHistoryData_Package.PREPROCESSING));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, OrderHistoryData_Package.PROCESSINGNAME, OrderHistoryData_Package.PROCESSING));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, OrderHistoryData_Package.CANCELLEDNAME, OrderHistoryData_Package.CANCELLED));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, OrderHistoryData_Package.PARTIALLYSHIPPEDNAME, OrderHistoryData_Package.PARTIALLYSHIPPED));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, OrderHistoryData_Package.SHIPPEDNAME, OrderHistoryData_Package.SHIPPED));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, GLOBALS2_Package.VIEWNAME, GLOBALS2_Package.VIEW));
            return node;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XSLLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, UserNameOrderHistoryView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"), e);
            end if;
            return null;
                end;
        end;
   end toXmlNode;

   function isValid (This : in out UserNameOrderHistoryView) return Boolean is
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Started"), UserNameOrderHistoryView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
        end if;
        if (UserName_Package.getInstance.isValid (This.userName)) = (True) then
            return True;
        end if;
        return False;
   end isValid;

   function toValidationInfoDoc (This : in out UserNameOrderHistoryView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out UserNameOrderHistoryView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   function validationInfo (This : in out UserNameOrderHistoryView) return Unbounded_String is
   begin
        if (This.userName) = (Null_Unbounded_String) then
            return To_Unbounded_String ("No User Name Specified<br />");
        end if;
        if (UserName_Package.getInstance.isValid (This.userName)) = (False) then
            return To_Unbounded_String ("Invalid User Name<br />");
        end if;
        return To_Unbounded_String ("Unknown Error<br />");
   end validationInfo;

   procedure toXmlNode (This : in out UserNameOrderHistoryView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := UserNameOrderHistoryView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure toValidationInfoNode (This : in out UserNameOrderHistoryView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := UserNameOrderHistoryView'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.admin.orderhistory.UserNameOrderHistoryView_Package;


