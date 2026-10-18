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


with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceRequestFactory_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceRequestFactory_Package;
with org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package; use org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package;
with org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package; use org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package;

package body org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package is

   package PaymentTransactionInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;
   package PaymentTransactionInterfaceRequestFactory_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceRequestFactory_Package;
   package PaymentType_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package;
   package PaymentTypeUtil_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out PaymentProcessorInterfaceFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return PaymentProcessorInterfaceFactory_Access is
   begin
        return PaymentProcessorInterfaceFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out PaymentProcessorInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PaymentProcessorInterfaceFactory_Access is
      This : constant PaymentProcessorInterfaceFactory_Access := new PaymentProcessorInterfaceFactory;
   begin
      PaymentProcessorInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out PaymentProcessorInterfaceFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return PaymentProcessorInterface_Access is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      paymentTransactionInterface : PaymentTransactionInterface_Access;
      gatewayName : Unbounded_String;
      paymentType : PaymentType_Access;
      paymentProcessorInterfaceFactoryInterface : PaymentProcessorInterfaceFactoryInterface_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            paymentTransactionInterface := PaymentTransactionInterfaceRequestFactory_Package.getInstance.getInstance (transformInfoInterface);
            gatewayName := paymentTransactionInterface.getOrderHistory.getPaymentMethod;
            if not (StringValidationUtil_Package.getInstance.isEmpty (gatewayName)) then
                paymentType := PaymentTypeUtil_Package.getInstance.get (gatewayName);
                paymentProcessorInterfaceFactoryInterface := paymentType.getPaymentProcessorInterfaceFactoryInterface;
                return PaymentProcessorInterface_Access (paymentProcessorInterfaceFactoryInterface.getInstance (transformInfoInterface, paymentTransactionInterface));
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Error Getting PaymentProcessorInterface")));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PAYMENTERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, PaymentProcessorInterfaceFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out PaymentProcessorInterfaceFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      Java_Result : constant PaymentProcessorInterface_Access := PaymentProcessorInterfaceFactory'Class (This).getInstance (transformInfoInterface_Param => transformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := PaymentProcessorInterfaceFactory_Package.Create;

end org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package;


