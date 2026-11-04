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


with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

package body views.admin.payment.gateway.PaymentGatewayViewAbstract_Package is

   package PaymentGatewayData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
   subtype PaymentGatewayPrimaryKey_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.PaymentGatewayPrimaryKey_Access;
   function "=" (Left, Right : PaymentGatewayPrimaryKey_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References."=";
   subtype PaymentGatewayPrimaryKey_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.PaymentGatewayPrimaryKey_Access_Array;
   function "=" (Left, Right : PaymentGatewayPrimaryKey_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References."=";
   subtype PaymentGatewayPrimaryKey_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.PaymentGatewayPrimaryKey_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayPrimaryKey_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References."=";
   subtype PaymentGatewayPrimaryKey_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.PaymentGatewayPrimaryKey_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewayPrimaryKey_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References."=";
   subtype PaymentGatewayPrimaryKey_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.PaymentGatewayPrimaryKey_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayPrimaryKey_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References."=";
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   function "=" (Left, Right : TransformInfoInterface_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   function "=" (Left, Right : TransformInfoInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   procedure Initialize_Fields (This : in out PaymentGatewayViewAbstract'Class) is
   begin
      null;
      This.paymentGatewayPrimaryKey := null;
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentGatewayViewAbstract'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        TransformInfoHttpComposite_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        PaymentGatewayViewAbstract'Class (This).getFormData (HttpServletRequest_Access (PaymentGatewayViewAbstract'Class (This).getPageContext.getRequest));
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return PaymentGatewayViewAbstract_Access is
      This : constant PaymentGatewayViewAbstract_Access := new PaymentGatewayViewAbstract;
   begin
      PaymentGatewayViewAbstract_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   procedure getFormData (This : in out PaymentGatewayViewAbstract; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      request : constant HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
      storeName : Unbounded_String;
      gatewayName : Unbounded_String;
   begin
        storeName := PaymentGatewayViewAbstract'Class (This).getWeblisketSession.getStoreName;
        gatewayName := request.getParameter (PaymentGatewayData_Package.NAME.toString);
        PaymentGatewayViewAbstract'Class (This).setPaymentGatewayPrimaryKey (PaymentGatewayPrimaryKey_Package.Create (storeName, gatewayName));
   end getFormData;

   function getPaymentGatewayPrimaryKey (This : in out PaymentGatewayViewAbstract) return PaymentGatewayPrimaryKey_Access is
   begin
        return This.paymentGatewayPrimaryKey;
   end getPaymentGatewayPrimaryKey;

   procedure setPaymentGatewayPrimaryKey (This : in out PaymentGatewayViewAbstract; paymentGatewayPrimaryKey_Param : access PaymentGatewayPrimaryKey_Package.PaymentGatewayPrimaryKey'Class) is
      paymentGatewayPrimaryKey : constant PaymentGatewayPrimaryKey_Access := PaymentGatewayPrimaryKey_Access (paymentGatewayPrimaryKey_Param);
   begin
        This.paymentGatewayPrimaryKey := paymentGatewayPrimaryKey;
   end setPaymentGatewayPrimaryKey;

end views.admin.payment.gateway.PaymentGatewayViewAbstract_Package;


