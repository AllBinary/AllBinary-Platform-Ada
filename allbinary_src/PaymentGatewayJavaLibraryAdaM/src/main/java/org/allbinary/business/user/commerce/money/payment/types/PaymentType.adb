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


package body org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package is

   procedure Initialize_Fields (This : in out PaymentType'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentType'Class; basicPaymentType : BasicPaymentType_Access) is
   begin
      Initialize_Fields (This);
        This.basicPaymentType := basicPaymentType;
        This.paymentTransactionInterfaceFactoryInterface := null;
        This.paymentProcessorInterfaceFactoryInterface := null;
        PaymentTypeUtil_Package.getInstance.add (This'Unchecked_Access);
   end Initialize;

   function Create (basicPaymentType : BasicPaymentType_Access) return PaymentType_Access is
      This : constant PaymentType_Access := new PaymentType;
   begin
      Initialize (This.all, basicPaymentType);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out PaymentType'Class; basicPaymentType : BasicPaymentType_Access; paymentTransactionInterfaceFactoryInterface : PaymentTransactionInterfaceFactoryInterface_Access; paymentProcessorInterfaceFactoryInterface : PaymentProcessorInterfaceFactoryInterface_Access) is
   begin
      Initialize_Fields (This);
        This.basicPaymentType := basicPaymentType;
        This.paymentTransactionInterfaceFactoryInterface := paymentTransactionInterfaceFactoryInterface;
        This.paymentProcessorInterfaceFactoryInterface := paymentProcessorInterfaceFactoryInterface;
        PaymentTypeUtil_Package.getInstance.add (This'Unchecked_Access);
   end Initialize;

   function Create (basicPaymentType : BasicPaymentType_Access; paymentTransactionInterfaceFactoryInterface : PaymentTransactionInterfaceFactoryInterface_Access; paymentProcessorInterfaceFactoryInterface : PaymentProcessorInterfaceFactoryInterface_Access) return PaymentType_Access is
      This : constant PaymentType_Access := new PaymentType;
   begin
      Initialize (This.all, basicPaymentType, paymentTransactionInterfaceFactoryInterface, paymentProcessorInterfaceFactoryInterface);
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
        vector := BasicArrayListD_Package.Create;
        vector.addAllList (This.getBasicPaymentType.toVector);
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
        hashMap.putAll (This.getBasicPaymentType.toHashMap);
        if (This.paymentTransactionInterfaceFactoryInterface) /= (null) then
            hashMap.put (PaymentGatewayData_Package.PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE.toString, To_Unbounded_String (Ada.Tags.Expanded_Name (This.paymentTransactionInterfaceFactoryInterface.all'Tag)));
        end if;
        if (This.paymentProcessorInterfaceFactoryInterface) /= (null) then
            hashMap.put (PaymentGatewayData_Package.PAYMENTPROCESSORINTERFACEFACTORYINTERFACE.toString, To_Unbounded_String (Ada.Tags.Expanded_Name (This.paymentProcessorInterfaceFactoryInterface.all'Tag)));
        end if;
        return hashMap;
   end toHashMap;

   function getBasicPaymentType (This : in out PaymentType) return BasicPaymentType_Access is
   begin
        return This.basicPaymentType;
   end getBasicPaymentType;

   procedure getPaymentTransactionInterfaceFactoryInterface (This : in out PaymentType) is
      Java_Result : constant PaymentTransactionInterfaceFactoryInterface_Access := PaymentType'Class (This).getPaymentTransactionInterfaceFactoryInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPaymentTransactionInterfaceFactoryInterface;

   procedure getPaymentProcessorInterfaceFactoryInterface (This : in out PaymentType) is
      Java_Result : constant PaymentProcessorInterfaceFactoryInterface_Access := PaymentType'Class (This).getPaymentProcessorInterfaceFactoryInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPaymentProcessorInterfaceFactoryInterface;

   procedure toVector (This : in out PaymentType) is
      Java_Result : constant BasicArrayList_Access := PaymentType'Class (This).toVector;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toVector;

   procedure toHashMap (This : in out PaymentType) is
      Java_Result : constant HashMap_Access := PaymentType'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure getBasicPaymentType (This : in out PaymentType) is
      Java_Result : constant BasicPaymentType_Access := PaymentType'Class (This).getBasicPaymentType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBasicPaymentType;

end org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package;


