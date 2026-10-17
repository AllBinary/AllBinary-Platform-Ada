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


package body views.admin.payment.gateway.PaymentGatewayViewAbstract_Package is

   procedure Initialize_Fields (This : in out PaymentGatewayViewAbstract'Class) is
   begin
      null;
      This.paymentGatewayPrimaryKey := null;
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentGatewayViewAbstract'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        TransformInfoHttpComposite_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.getFormData (HttpServletRequest_Access (This.getPageContext.getRequest));
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return PaymentGatewayViewAbstract_Access is
      This : constant PaymentGatewayViewAbstract_Access := new PaymentGatewayViewAbstract;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   procedure getFormData (This : in out PaymentGatewayViewAbstract; request : HttpServletRequest_Access) is
      storeName : Unbounded_String;
      gatewayName : Unbounded_String;
   begin
        storeName := This.getWeblisketSession.getStoreName;
        gatewayName := request.getParameter (PaymentGatewayData_Package.NAME.toString);
        This.setPaymentGatewayPrimaryKey (PaymentGatewayPrimaryKey_Package.Create (storeName, gatewayName));
   end getFormData;

   function getPaymentGatewayPrimaryKey (This : in out PaymentGatewayViewAbstract) return PaymentGatewayPrimaryKey_Access is
   begin
        return This.paymentGatewayPrimaryKey;
   end getPaymentGatewayPrimaryKey;

   procedure setPaymentGatewayPrimaryKey (This : in out PaymentGatewayViewAbstract; paymentGatewayPrimaryKey : PaymentGatewayPrimaryKey_Access) is
   begin
        This.paymentGatewayPrimaryKey := paymentGatewayPrimaryKey;
   end setPaymentGatewayPrimaryKey;

   procedure getPaymentGatewayPrimaryKey (This : in out PaymentGatewayViewAbstract) is
      Java_Result : constant PaymentGatewayPrimaryKey_Access := PaymentGatewayViewAbstract'Class (This).getPaymentGatewayPrimaryKey;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPaymentGatewayPrimaryKey;

end views.admin.payment.gateway.PaymentGatewayViewAbstract_Package;


