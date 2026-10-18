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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package; use org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package;

package body org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package PaymentGatewayData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out PaymentType'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentType'Class; basicPaymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class) is
      basicPaymentType : constant BasicPaymentType_Access := BasicPaymentType_Access (basicPaymentType_Param);
   begin
      Initialize_Fields (This);
        This.basicPaymentType := basicPaymentType;
        This.paymentTransactionInterfaceFactoryInterface := null;
        This.paymentProcessorInterfaceFactoryInterface := null;
        PaymentTypeUtil_Package.getInstance.add (PaymentType_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (basicPaymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class) return PaymentType_Access is
      This : constant PaymentType_Access := new PaymentType;
   begin
      PaymentType_Package.Initialize (This.all, basicPaymentType_Param);
      return This;
   end Create;

   procedure Initialize (This : in out PaymentType'Class; basicPaymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class; paymentTransactionInterfaceFactoryInterface_Param : access PaymentTransactionInterfaceFactoryInterface_Package.PaymentTransactionInterfaceFactoryInterface'Class; paymentProcessorInterfaceFactoryInterface_Param : access PaymentProcessorInterfaceFactoryInterface_Package.PaymentProcessorInterfaceFactoryInterface'Class) is
      basicPaymentType : constant BasicPaymentType_Access := BasicPaymentType_Access (basicPaymentType_Param);
      paymentTransactionInterfaceFactoryInterface : constant PaymentTransactionInterfaceFactoryInterface_Access := PaymentTransactionInterfaceFactoryInterface_Access (paymentTransactionInterfaceFactoryInterface_Param);
      paymentProcessorInterfaceFactoryInterface : constant PaymentProcessorInterfaceFactoryInterface_Access := PaymentProcessorInterfaceFactoryInterface_Access (paymentProcessorInterfaceFactoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.basicPaymentType := basicPaymentType;
        This.paymentTransactionInterfaceFactoryInterface := paymentTransactionInterfaceFactoryInterface;
        This.paymentProcessorInterfaceFactoryInterface := paymentProcessorInterfaceFactoryInterface;
        PaymentTypeUtil_Package.getInstance.add (PaymentType_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (basicPaymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class; paymentTransactionInterfaceFactoryInterface_Param : access PaymentTransactionInterfaceFactoryInterface_Package.PaymentTransactionInterfaceFactoryInterface'Class; paymentProcessorInterfaceFactoryInterface_Param : access PaymentProcessorInterfaceFactoryInterface_Package.PaymentProcessorInterfaceFactoryInterface'Class) return PaymentType_Access is
      This : constant PaymentType_Access := new PaymentType;
   begin
      PaymentType_Package.Initialize (This.all, basicPaymentType_Param, paymentTransactionInterfaceFactoryInterface_Param, paymentProcessorInterfaceFactoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function getPaymentTransactionInterfaceFactoryInterface (This : in out PaymentType) return PaymentTransactionInterfaceFactoryInterface_Access is
   begin
        if (This.paymentTransactionInterfaceFactoryInterface) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("PaymentTransactionInterfaceFactoryInterface is Null")));
        end if;
        return This.paymentTransactionInterfaceFactoryInterface;
   end getPaymentTransactionInterfaceFactoryInterface;

   --  throws Exception
   function getPaymentProcessorInterfaceFactoryInterface (This : in out PaymentType) return PaymentProcessorInterfaceFactoryInterface_Access is
   begin
        if (This.paymentProcessorInterfaceFactoryInterface) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("PaymentProcessorInterfaceFactoryInterface is Null")));
        end if;
        return This.paymentProcessorInterfaceFactoryInterface;
   end getPaymentProcessorInterfaceFactoryInterface;

   function toVector (This : in out PaymentType) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
   begin
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        vector.addAllList (PaymentType'Class (This).getBasicPaymentType.toVector);
        if (This.paymentTransactionInterfaceFactoryInterface) /= (null) then
            vector.add (To_Unbounded_String (Ada.Tags.Expanded_Name (This.paymentTransactionInterfaceFactoryInterface.all'Tag)));
        end if;
        if (This.paymentProcessorInterfaceFactoryInterface) /= (null) then
            vector.add (To_Unbounded_String (Ada.Tags.Expanded_Name (This.paymentProcessorInterfaceFactoryInterface.all'Tag)));
        end if;
        return vector;
   end toVector;

   function toHashMap (This : in out PaymentType) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.putAll (PaymentType'Class (This).getBasicPaymentType.toHashMap);
        if (This.paymentTransactionInterfaceFactoryInterface) /= (null) then
            hashMap.put (Java_Box (PaymentGatewayData_Package.PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE.toString), Java_Box (To_Unbounded_String (Ada.Tags.Expanded_Name (This.paymentTransactionInterfaceFactoryInterface.all'Tag))));
        end if;
        if (This.paymentProcessorInterfaceFactoryInterface) /= (null) then
            hashMap.put (Java_Box (PaymentGatewayData_Package.PAYMENTPROCESSORINTERFACEFACTORYINTERFACE.toString), Java_Box (To_Unbounded_String (Ada.Tags.Expanded_Name (This.paymentProcessorInterfaceFactoryInterface.all'Tag))));
        end if;
        return hashMap;
   end toHashMap;

   function getBasicPaymentType (This : in out PaymentType) return BasicPaymentType_Access is
   begin
        return This.basicPaymentType;
   end getBasicPaymentType;

end org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package;


