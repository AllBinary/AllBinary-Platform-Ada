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


package body views.generic_Id.payment.PaymentView_Package is

   procedure Initialize_Fields (This : in out PaymentView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return PaymentView_Access is
      This : constant PaymentView_Access := new PaymentView;
   begin
      PaymentView_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out PaymentView; document : Document_Access) return Node_Access is
      paymentNode : Node_Access;
      paymentVector : BasicArrayList_Access;
      size : Integer;
      payment : Payment_Access;
      index : Integer;
   begin
        begin
            paymentNode := document.createElement (PaymentData_Package.PAYMENT);
            document.appendChild (paymentNode);
            paymentVector := PaymentEntityFactory_Package.getInstance.getPaymentEntityInstance.get (This.getWeblisketSession.getUserName);
            size := paymentVector.size;
            for index in 0 .. (size) - 1 loop
                payment := Payment_Access (paymentVector.get (index));
                paymentNode.appendChild (payment.toXmlNode (document));
            end loop;
            return paymentNode;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, To_Unbounded_String ("toXmlNode"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end toXmlNode;

   procedure addDomNodeInterfaces (This : in out PaymentView) is
   begin
        This.addDomNodeInterface (DomNodeInterface_Access (This'Unchecked_Access));
   end addDomNodeInterfaces;

   function view (This : in out PaymentView) return Unbounded_String is
      error : Unbounded_String;
   begin
        begin
            This.addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to view Payment");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            return error;
                end;
        end;
   end view;

   procedure toXmlNode (This : in out PaymentView; document : Document_Access) is
      Java_Result : constant Node_Access := PaymentView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.generic_Id.payment.PaymentView_Package;


