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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package; use org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
with org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package; use org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;

package body views.admin.payment.gateways.PaymentGatewaysView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package PaymentGatewayData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
   package PaymentGatewaysData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData_Package;
   package BasicPaymentType_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
   package PaymentTypeUtil_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   procedure Initialize_Fields (This : in out PaymentGatewaysView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentGatewaysView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; gatewayVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      gatewayVector : constant BasicArrayList_Access := BasicArrayList_Access (gatewayVector_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.paymentGatewayVector := gatewayVector;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; gatewayVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return PaymentGatewaysView_Access is
      This : constant PaymentGatewaysView_Access := new PaymentGatewaysView;
   begin
      PaymentGatewaysView_Package.Initialize (This.all, transformInfoInterface_Param, gatewayVector_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out PaymentGatewaysView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      storeName : Unbounded_String;
      paymentGatewaysNode : Node_Access;
      size : Integer;
      paymentType : BasicPaymentType_Access;
      hashMap : HashMap_Access;
      paymentGatewayNode : Node_Access;
      index : Integer;
   begin
        begin
            storeName := PaymentGatewaysView'Class (This).getTransformInfoInterface.getStoreName;
            paymentGatewaysNode := document.createElement (PaymentGatewaysData_Package.NAME);
            size := This.paymentGatewayVector.size;
            for index in 0 .. (size) - 1 loop
                paymentType := BasicPaymentType_Access (This.paymentGatewayVector.get (index));
                hashMap := paymentType.toHashMap;
                hashMap.put (EntryData_Package.getInstance.DEFAULT, Java_Box (PaymentTypeUtil_Package.getInstance.getDefault (storeName).getBasicPaymentType.getName));
                paymentGatewayNode := ModDomHelper_Package.createNodeWithValueNodes (document, PaymentGatewayData_Package.NAME.toString, hashMap);
                paymentGatewaysNode.appendChild (paymentGatewayNode);
            end loop;
            return paymentGatewaysNode;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XSLLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, PaymentGatewaysView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end toXmlNode;

   procedure addDomNodeInterfaces (This : in out PaymentGatewaysView) is
   begin
        PaymentGatewaysView'Class (This).addDomNodeInterface (DomNodeInterface_Access (PaymentGatewaysView_Access'(This'Unchecked_Access)));
   end addDomNodeInterfaces;

   function view (This : in out PaymentGatewaysView) return Unbounded_String is
      error : Unbounded_String;
   begin
        begin
            PaymentGatewaysView'Class (This).addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to view payment gateways");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentGatewaysView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            return error;
                end;
        end;
   end view;

   procedure toXmlNode (This : in out PaymentGatewaysView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := PaymentGatewaysView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.admin.payment.gateways.PaymentGatewaysView_Package;


