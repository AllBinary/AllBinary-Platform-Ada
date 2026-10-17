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


package body views.admin.payment.PaymentProcessorComponent_Package is

   procedure Initialize_Fields (This : in out PaymentProcessorComponent'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentProcessorComponent'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return PaymentProcessorComponent_Access is
      This : constant PaymentProcessorComponent_Access := new PaymentProcessorComponent;
   begin
      PaymentProcessorComponent_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   procedure addDomNodeInterfaces (This : in out PaymentProcessorComponent) is
      paymentProcessorInterface : PaymentProcessorInterface_Access;
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
   begin
        paymentProcessorInterface := PaymentProcessorInterfaceFactory_Package.getInstance.getInstance (This.getTransformInfoInterface);
        paymentProcessorInterface.process;
        httpTransformInfoInterface := TransformInfoHttpInterface_Access (This.getTransformInfoInterface);
        httpTransformInfoInterface.getWeblisketSession.removeBasket;
        This.addDomNodeInterface (DomNodeInterface_Access (paymentProcessorInterface));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out PaymentProcessorComponent) return Unbounded_String is
   begin
        begin
            This.addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

end views.admin.payment.PaymentProcessorComponent_Package;


