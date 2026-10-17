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


package body views.generic_Id.address.billing.BillingAddressView_Package is

   procedure Initialize_Fields (This : in out BillingAddressView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.streetAddress := null;
   end Initialize_Fields;


   procedure Initialize (This : in out BillingAddressView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.request := HttpServletRequest_Access (This.getPageContext.getRequest);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return BillingAddressView_Access is
      This : constant BillingAddressView_Access := new BillingAddressView;
   begin
      BillingAddressView_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function getRequest (This : in out BillingAddressView) return HttpServletRequest_Access is
   begin
        return This.request;
   end getRequest;

   --  throws Exception
   function toXmlNode (This : in out BillingAddressView; document : Document_Access) return Node_Access is
      formNode : Node_Access;
   begin
        begin
            formNode := document.createElement (StreetAddressData_Package.FORM);
            formNode.appendChild (This.streetAddress.toXmlNode (document));
            return formNode;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XSLLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, To_Unbounded_String ("toXmlNode"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end toXmlNode;

   procedure addDomNodeInterfaces (This : in out BillingAddressView) is
   begin
        This.addDomNodeInterface (DomNodeInterface_Access (This'Unchecked_Access));
        This.addDomNodeInterface (DomNodeInterface_Access (StatesView_Package.Create));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out BillingAddressView) return Unbounded_String is
   begin
        begin
            This.addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   procedure toXmlNode (This : in out BillingAddressView; document : Document_Access) is
      Java_Result : constant Node_Access := BillingAddressView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.generic_Id.address.billing.BillingAddressView_Package;


