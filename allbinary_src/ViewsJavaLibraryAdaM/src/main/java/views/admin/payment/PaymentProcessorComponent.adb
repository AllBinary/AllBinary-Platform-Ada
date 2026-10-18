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


with org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package; use org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;

package body views.admin.payment.PaymentProcessorComponent_Package is

   package PaymentProcessorInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package;
   package PaymentProcessorInterfaceFactory_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   procedure Initialize_Fields (This : in out PaymentProcessorComponent'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentProcessorComponent'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return PaymentProcessorComponent_Access is
      This : constant PaymentProcessorComponent_Access := new PaymentProcessorComponent;
   begin
      PaymentProcessorComponent_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure addDomNodeInterfaces (This : in out PaymentProcessorComponent) is
      paymentProcessorInterface : PaymentProcessorInterface_Access;
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
   begin
        paymentProcessorInterface := PaymentProcessorInterface_Access (PaymentProcessorInterfaceFactory_Package.getInstance.getInstance (PaymentProcessorComponent'Class (This).getTransformInfoInterface));
        paymentProcessorInterface.process;
        httpTransformInfoInterface := TransformInfoHttpInterface_Access (PaymentProcessorComponent'Class (This).getTransformInfoInterface);
        httpTransformInfoInterface.getWeblisketSession.removeBasket;
        PaymentProcessorComponent'Class (This).addDomNodeInterface (DomNodeInterface_Access (paymentProcessorInterface));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out PaymentProcessorComponent) return Unbounded_String is
   begin
        begin
            PaymentProcessorComponent'Class (This).addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentProcessorComponent_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

end views.admin.payment.PaymentProcessorComponent_Package;


