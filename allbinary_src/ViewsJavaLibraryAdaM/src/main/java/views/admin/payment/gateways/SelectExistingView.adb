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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package; use org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package;
with org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package; use org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package;
with views.admin.payment.gateways.PaymentGatewaysView_Package; use views.admin.payment.gateways.PaymentGatewaysView_Package;

package body views.admin.payment.gateways.SelectExistingView_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package PaymentGatewayEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package;
   package PaymentGatewayEntityInterface_Package renames Standard.org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package;
   procedure Initialize_Fields (This : in out SelectExistingView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out SelectExistingView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        PaymentGatewayViewAbstract_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return SelectExistingView_Access is
      This : constant SelectExistingView_Access := new SelectExistingView;
   begin
      SelectExistingView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function view (This : in out SelectExistingView) return Unbounded_String is
      paymentGatewayEntityInterface : PaymentGatewayEntityInterface_Access;
      existingGateways : BasicArrayList_Access;
   begin
        begin
            paymentGatewayEntityInterface := PaymentGatewayEntityInterface_Access (PaymentGatewayEntityFactory_Package.getInstance);
            existingGateways := paymentGatewayEntityInterface.findPaymentTypeVectorByStore (SelectExistingView'Class (This).getPaymentGatewayPrimaryKey.getStoreName);
            return PaymentGatewaysView_Package.Create (SelectExistingView'Class (This).getTransformInfoInterface, existingGateways).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, SelectExistingView_Access'(This'Unchecked_Access), To_Unbounded_String ("view"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

end views.admin.payment.gateways.SelectExistingView_Package;


