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


package body org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out PaymentTransactionInterfaceFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return PaymentTransactionInterfaceFactory_Access is
   begin
        return PaymentTransactionInterfaceFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out PaymentTransactionInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PaymentTransactionInterfaceFactory_Access is
      This : constant PaymentTransactionInterfaceFactory_Access := new PaymentTransactionInterfaceFactory;
   begin
      PaymentTransactionInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out PaymentTransactionInterfaceFactory; orderReview : OrderHistory_Access) return PaymentTransactionInterface_Access is
      gatewayName : Unbounded_String;
      paymentType : PaymentType_Access;
      paymentTransactionInterfaceFactoryInterface : PaymentTransactionInterfaceFactoryInterface_Access;
      paymentTransactionInterface : PaymentTransactionInterface_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            gatewayName := orderReview.getPaymentMethod;
            if (gatewayName) /= (Null_Unbounded_String) then
                paymentType := PaymentTypeUtil_Package.getInstance.get (gatewayName);
                paymentTransactionInterfaceFactoryInterface := paymentType.getPaymentTransactionInterfaceFactoryInterface;
                paymentTransactionInterface := paymentTransactionInterfaceFactoryInterface.getInstance (orderReview);
                return paymentTransactionInterface;
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Failed to create PaymentTransactionInterface: ") & To_Unbounded_String ("GatewayName is: ") & gatewayName));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PAYMENTERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (To_Unbounded_String ("Failed to generate test data"), This'Unchecked_Access, commonStrings.GET_INSTANCE, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out PaymentTransactionInterfaceFactory; orderReview : OrderHistory_Access) is
      Java_Result : constant PaymentTransactionInterface_Access := PaymentTransactionInterfaceFactory'Class (This).getInstance (orderReview);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := PaymentTransactionInterfaceFactory_Package.Create;

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package;


