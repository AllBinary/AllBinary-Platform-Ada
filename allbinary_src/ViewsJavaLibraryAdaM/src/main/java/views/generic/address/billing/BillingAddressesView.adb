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


package body views.generic_Id.address.billing.BillingAddressesView_Package is

   procedure Initialize_Fields (This : in out BillingAddressesView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.streetAddresses := null;
   end Initialize_Fields;


   procedure Initialize (This : in out BillingAddressesView'Class; transformInfoInterface : TransformInfoInterface_Access) is
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        httpTransformInfoInterface := TransformInfoHttpInterface_Access (This.getTransformInfoInterface);
        This.request := HttpServletRequest_Access (httpTransformInfoInterface.getPageContext.getRequest);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return BillingAddressesView_Access is
      This : constant BillingAddressesView_Access := new BillingAddressesView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function getRequest (This : in out BillingAddressesView) return HttpServletRequest_Access is
   begin
        return This.request;
   end getRequest;

   function toXmlNode (This : in out BillingAddressesView; document : Document_Access) return Node_Access is
      billingAddressesNode : Node_Access;
      size : Integer;
      streetAddress : StreetAddress_Access;
      index : Integer;
   begin
        begin
            billingAddressesNode := document.createElement (BillingAddressData_Package.MULTIPLE);
            size := This.streetAddresses.size;
            for index in 0 .. (size) - 1 loop
                streetAddress := StreetAddress_Access (This.streetAddresses.get (index));
                billingAddressesNode.appendChild (streetAddress.toXmlNode (document));
            end loop;
            billingAddressesNode.appendChild (ModDomHelper_Package.createNameValueNodes (document, StreetAddressData_Package.NUMBEROFADDRESSES, This.streetAddresses.size.toString));
            return billingAddressesNode;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XSLLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, To_Unbounded_String ("toXmlNode"), e);
            end if;
            return null;
        end;
   end toXmlNode;

   procedure addDomNodeInterfaces (This : in out BillingAddressesView) is
   begin
        This.addDomNodeInterface (DomNodeInterface_Access (This'Unchecked_Access));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out BillingAddressesView) return Unbounded_String is
   begin
        begin
            This.addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
        end;
   end view;

   procedure getRequest (This : in out BillingAddressesView) is
      Java_Result : constant HttpServletRequest_Access := BillingAddressesView'Class (This).getRequest;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRequest;

   procedure toXmlNode (This : in out BillingAddressesView; document : Document_Access) is
      Java_Result : constant Node_Access := BillingAddressesView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure view (This : in out BillingAddressesView) is
      Java_Result : constant Unbounded_String := BillingAddressesView'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

end views.generic_Id.address.billing.BillingAddressesView_Package;


