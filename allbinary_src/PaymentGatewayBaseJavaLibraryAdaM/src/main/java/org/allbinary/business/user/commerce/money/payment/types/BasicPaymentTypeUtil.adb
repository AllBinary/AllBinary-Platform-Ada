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


package body org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package is

   procedure Initialize_Fields (This : in out BasicPaymentTypeUtil'Class) is
   begin
      null;
      This.paymentTypeVector := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   --  Java static initializer: call this once
   procedure Initializer is
   begin
        null;
   end Initializer;

   function getInstance return BasicPaymentTypeUtil_Access is
   begin
        return BasicPaymentTypeUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out BasicPaymentTypeUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicPaymentTypeUtil_Access is
      This : constant BasicPaymentTypeUtil_Access := new BasicPaymentTypeUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure add (This : in out BasicPaymentTypeUtil; paymentType : BasicPaymentType_Access) is
   begin
        This.paymentTypeVector.add (paymentType);
   end add;

   --  throws Exception
   function get (This : in out BasicPaymentTypeUtil; paymentTypeString : Unbounded_String) return BasicPaymentType_Access is
      size : Integer;
      paymentType : BasicPaymentType_Access;
      i : Integer;
   begin
        size := This.paymentTypeVector.size;
        for i in 0 .. (size) - 1 loop
            paymentType := BasicPaymentType_Access (This.paymentTypeVector.get (i));
            if (paymentType.getName.compareTo (paymentTypeString)) = (0) then
                return paymentType;
            end if;
        end loop;
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Unknown PaymentType: ") & paymentTypeString));
   end get;

   function isContain (This : in out BasicPaymentTypeUtil; paymentType : BasicPaymentType_Access) return Boolean is
   begin
        return This.paymentTypeVector.contains (paymentType);
   end isContain;

   function difference (This : in out BasicPaymentTypeUtil; a_PaymentTypeVector : BasicArrayList_Access) return BasicArrayList_Access is
      diff : BasicArrayList_Access;
      size : Integer;
      paymentType : BasicPaymentType_Access;
      i : Integer;
   begin
        diff := BasicArrayListD_Package.Create;
        size := This.paymentTypeVector.size;
        for i in 0 .. (size) - 1 loop
            paymentType := BasicPaymentType_Access (This.paymentTypeVector.get (i));
            if not (a_PaymentTypeVector.contains (paymentType)) then
                diff.add (paymentType);
            end if;
        end loop;
        return diff;
   end difference;

   procedure getInstance is
      Java_Result : constant BasicPaymentTypeUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure get (This : in out BasicPaymentTypeUtil; paymentTypeString : Unbounded_String) is
      Java_Result : constant BasicPaymentType_Access := BasicPaymentTypeUtil'Class (This).get (paymentTypeString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure isContain (This : in out BasicPaymentTypeUtil; paymentType : BasicPaymentType_Access) is
      Java_Result : constant Boolean := BasicPaymentTypeUtil'Class (This).isContain (paymentType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isContain;

   procedure difference (This : in out BasicPaymentTypeUtil; a_PaymentTypeVector : BasicArrayList_Access) is
      Java_Result : constant BasicArrayList_Access := BasicPaymentTypeUtil'Class (This).difference (a_PaymentTypeVector);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end difference;

begin
   null;
   instance := BasicPaymentTypeUtil_Package.Create;

end org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package;


