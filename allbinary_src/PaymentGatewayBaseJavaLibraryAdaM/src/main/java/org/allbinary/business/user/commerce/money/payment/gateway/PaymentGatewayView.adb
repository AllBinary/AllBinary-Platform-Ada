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


package body org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package is

   procedure Initialize_Fields (This : in out PaymentGatewayView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentGatewayView'Class; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) is
      paymentGatewayInterface : constant PaymentGatewayInterface_Access := PaymentGatewayInterface_Access (paymentGatewayInterface_Param);
   begin
      Initialize_Fields (This);
        This.paymentGatewayInterface := paymentGatewayInterface;
   end Initialize;

   function Create (paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) return PaymentGatewayView_Access is
      This : constant PaymentGatewayView_Access := new PaymentGatewayView;
   begin
      PaymentGatewayView_Package.Initialize (This.all, paymentGatewayInterface_Param);
      return This;
   end Create;

   function getPaymentGatewayInterface (This : in out PaymentGatewayView) return PaymentGatewayInterface_Access is
   begin
        return This.paymentGatewayInterface;
   end getPaymentGatewayInterface;

   --  throws Exception
   function toHashMap (This : in out PaymentGatewayView) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out PaymentGatewayView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      hashMap : HashMap_Access;
      paymentGatewayNode : Node_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (This.commonStrings.START, PaymentGatewayView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"));
            end if;
            hashMap := PaymentGatewayMapping_Package.Create (This.paymentGatewayInterface).toHashMap;
            hashMap.putAll (PaymentGatewayView'Class (This).toHashMap);
            paymentGatewayNode := ModDomHelper_Package.createNodeWithValueNodes (document, PaymentGatewayData_Package.NAME.toString, hashMap);
            return paymentGatewayNode;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XSLLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentGatewayView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end toXmlNode;

   procedure toXmlNode (This : in out PaymentGatewayView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := PaymentGatewayView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package;


