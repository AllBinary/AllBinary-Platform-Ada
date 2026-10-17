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


package body views.admin.payment.gateway.PaymentGatewayComponent_Package is

   procedure Initialize_Fields (This : in out PaymentGatewayComponent'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentGatewayComponent'Class; transformInfoInterface : TransformInfoInterface_Access; paymentGatewayInterface : PaymentGatewayInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.paymentGatewayInterface := paymentGatewayInterface;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; paymentGatewayInterface : PaymentGatewayInterface_Access) return PaymentGatewayComponent_Access is
      This : constant PaymentGatewayComponent_Access := new PaymentGatewayComponent;
   begin
      Initialize (This.all, transformInfoInterface, paymentGatewayInterface);
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
        This.addDomNodeInterface (domNodeInterface);
   end addDomNodeInterfaces;

   function view (This : in out PaymentGatewayComponent) return Unbounded_String is
      error : Unbounded_String;
   begin
        begin
            This.addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when e : others =>
            error := To_Unbounded_String ("Failed to view payment gateway");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            return error;
        end;
   end view;

   procedure view (This : in out PaymentGatewayComponent) is
      Java_Result : constant Unbounded_String := PaymentGatewayComponent'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

end views.admin.payment.gateway.PaymentGatewayComponent_Package;


