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


package body views.admin.payment.gateway.GatewayView_Package is

   procedure Initialize_Fields (This : in out GatewayView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out GatewayView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        PaymentGatewayViewAbstract_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return GatewayView_Access is
      This : constant GatewayView_Access := new GatewayView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   procedure getFormData (This : in out GatewayView; request : HttpServletRequest_Access) is
   begin
        PaymentGatewayViewAbstract (This).getFormData (request);
        if StringValidationUtil_Package.getInstance.isEmpty (This.getPaymentGatewayPrimaryKey.getName) then
            This.getPaymentGatewayPrimaryKey.setName (This.getWeblisketSession.getPaymentMethod);
        end if;
   end getFormData;

   --  throws Exception
   function view (This : in out GatewayView) return Unbounded_String is
      paymentGatewayInterface : PaymentGatewayInterface_Access;
   begin
        begin
            paymentGatewayInterface := PaymentGatewayEntityFactory_Package.getInstance.getPaymentGatewayInterface (This.getPaymentGatewayPrimaryKey.getStoreName, BasicPaymentTypeUtil_Package.getInstance.get (This.getPaymentGatewayPrimaryKey.getName));
            return PaymentGatewayComponent_Package.Create (This.getTransformInfoInterface, paymentGatewayInterface).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("edit()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   procedure view (This : in out GatewayView) is
      Java_Result : constant Unbounded_String := GatewayView'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

end views.admin.payment.gateway.GatewayView_Package;


