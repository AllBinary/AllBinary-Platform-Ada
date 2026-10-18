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


with org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package; use org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package; use org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;

package body views.admin.payment.gateway.PaymentGatewayComponent_Package is

   package PaymentGatewayDomNodeFactoryInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package;
   package BasicPaymentType_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
   package BasicPaymentTypeUtil_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   procedure Initialize_Fields (This : in out PaymentGatewayComponent'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentGatewayComponent'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      paymentGatewayInterface : constant PaymentGatewayInterface_Access := PaymentGatewayInterface_Access (paymentGatewayInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.paymentGatewayInterface := paymentGatewayInterface;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) return PaymentGatewayComponent_Access is
      This : constant PaymentGatewayComponent_Access := new PaymentGatewayComponent;
   begin
      PaymentGatewayComponent_Package.Initialize (This.all, transformInfoInterface_Param, paymentGatewayInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure addDomNodeInterfaces (This : in out PaymentGatewayComponent) is
      paymentType : BasicPaymentType_Access;
      paymentGatewayDomNodeFactoryInterface : PaymentGatewayDomNodeFactoryInterface_Access;
      domNodeInterface : DomNodeInterface_Access;
   begin
        paymentType := BasicPaymentTypeUtil_Package.getInstance.get (This.paymentGatewayInterface.getName);
        paymentGatewayDomNodeFactoryInterface := paymentType.getPaymentGatewayDomNodeFactoryInterface;
        domNodeInterface := DomNodeInterface_Access (paymentGatewayDomNodeFactoryInterface.getInstance (This.paymentGatewayInterface));
        PaymentGatewayComponent'Class (This).addDomNodeInterface (domNodeInterface);
   end addDomNodeInterfaces;

   function view (This : in out PaymentGatewayComponent) return Unbounded_String is
      error : Unbounded_String;
   begin
        begin
            PaymentGatewayComponent'Class (This).addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to view payment gateway");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentGatewayComponent_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            return error;
                end;
        end;
   end view;

end views.admin.payment.gateway.PaymentGatewayComponent_Package;


