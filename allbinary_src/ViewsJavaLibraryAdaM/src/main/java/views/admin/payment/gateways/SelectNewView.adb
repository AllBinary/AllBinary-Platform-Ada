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


package body views.admin.payment.gateways.SelectNewView_Package is

   procedure Initialize_Fields (This : in out SelectNewView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out SelectNewView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        PaymentGatewayViewAbstract_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return SelectNewView_Access is
      This : constant SelectNewView_Access := new SelectNewView;
   begin
      SelectNewView_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   function view (This : in out SelectNewView) return Unbounded_String is
      paymentGatewayEntityInterface : PaymentGatewayEntityInterface_Access;
      existingGateways : BasicArrayList_Access;
      allGatewaysLessExisting : BasicArrayList_Access;
   begin
        begin
            paymentGatewayEntityInterface := PaymentGatewayEntityFactory_Package.getInstance;
            existingGateways := paymentGatewayEntityInterface.findPaymentTypeVectorByStore (This.getPaymentGatewayPrimaryKey.getStoreName);
            allGatewaysLessExisting := BasicPaymentTypeUtil_Package.getInstance.difference (existingGateways);
            return PaymentGatewaysView_Package.Create (This.getTransformInfoInterface, allGatewaysLessExisting).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

end views.admin.payment.gateways.SelectNewView_Package;


