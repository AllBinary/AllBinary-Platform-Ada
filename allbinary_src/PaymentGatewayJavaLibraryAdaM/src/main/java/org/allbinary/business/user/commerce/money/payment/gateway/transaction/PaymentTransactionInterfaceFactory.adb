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


with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References;
with org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package; use org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package;
with org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package; use org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package is

   package PaymentType_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package;
   package PaymentTypeUtil_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   subtype OrderHistory_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access;
   function "=" (Left, Right : OrderHistory_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References."=";
   subtype OrderHistory_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array;
   function "=" (Left, Right : OrderHistory_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References."=";
   subtype OrderHistory_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array_Access;
   function "=" (Left, Right : OrderHistory_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References."=";
   subtype OrderHistory_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array_Access_Array;
   function "=" (Left, Right : OrderHistory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References."=";
   subtype OrderHistory_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderHistory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype PaymentTransactionInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access;
   function "=" (Left, Right : PaymentTransactionInterface_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References."=";
   subtype PaymentTransactionInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array;
   function "=" (Left, Right : PaymentTransactionInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References."=";
   subtype PaymentTransactionInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array_Access;
   function "=" (Left, Right : PaymentTransactionInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References."=";
   subtype PaymentTransactionInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentTransactionInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References."=";
   subtype PaymentTransactionInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentTransactionInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References."=";
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
   function getInstance (This : in out PaymentTransactionInterfaceFactory; orderReview_Param : access OrderHistory_Package.OrderHistory'Class) return PaymentTransactionInterface_Access is
      orderReview : constant OrderHistory_Access := OrderHistory_Access (orderReview_Param);
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
                paymentTransactionInterfaceFactoryInterface := PaymentTransactionInterfaceFactoryInterface_Access (paymentType.getPaymentTransactionInterfaceFactoryInterface);
                paymentTransactionInterface := PaymentTransactionInterface_Access (paymentTransactionInterfaceFactoryInterface.getInstance (orderReview));
                return paymentTransactionInterface;
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Failed to create PaymentTransactionInterface: ") & To_Unbounded_String ("GatewayName is: ") & gatewayName));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PAYMENTERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (To_Unbounded_String ("Failed to generate test data"), PaymentTransactionInterfaceFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out PaymentTransactionInterfaceFactory; orderReview_Param : access OrderHistory_Package.OrderHistory'Class) is
      Java_Result : constant PaymentTransactionInterface_Access := PaymentTransactionInterfaceFactory'Class (This).getInstance (orderReview_Param => orderReview_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := PaymentTransactionInterfaceFactory_Package.Create;

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package;


