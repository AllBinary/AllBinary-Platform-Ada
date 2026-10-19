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


with org.allbinary.business.user.address.ShippingAddressData_Package; use org.allbinary.business.user.address.ShippingAddressData_Package;
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.address.StreetAddressData_Package; use org.allbinary.business.user.address.StreetAddressData_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;

package body views.generic_Id.address.shipping.ShippingAddressesView_Package is

   package ShippingAddressData_Package renames Standard.org.allbinary.business.user.address.ShippingAddressData_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package StreetAddressData_Package renames Standard.org.allbinary.business.user.address.StreetAddressData_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   procedure Initialize_Fields (This : in out ShippingAddressesView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.streetAddressList := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ShippingAddressesView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        httpTransformInfoInterface := TransformInfoHttpInterface_Access (ShippingAddressesView'Class (This).getTransformInfoInterface);
        This.request := HttpServletRequest_Access (httpTransformInfoInterface.getPageContext.getRequest);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return ShippingAddressesView_Access is
      This : constant ShippingAddressesView_Access := new ShippingAddressesView;
   begin
      ShippingAddressesView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function getRequest (This : in out ShippingAddressesView) return HttpServletRequest_Access is
   begin
        return This.request;
   end getRequest;

   --  throws Exception
   function toXmlNode (This : in out ShippingAddressesView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      billingAddressesNode : Node_Access;
      size : Integer;
      streetAddress : StreetAddress_Access;
      index : Integer;
   begin
        begin
            billingAddressesNode := document.createElement (ShippingAddressData_Package.MULTIPLE);
            size := This.streetAddressList.size;
            for index in 0 .. (size) - 1 loop
                streetAddress := StreetAddress_Access (This.streetAddressList.get (index));
                billingAddressesNode.appendChild (streetAddress.toXmlNode (document));
            end loop;
            billingAddressesNode.appendChild (ModDomHelper_Package.createNameValueNodes (document, StreetAddressData_Package.NUMBEROFADDRESSES, This.streetAddressList.size.toString));
            return billingAddressesNode;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XSLLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, ShippingAddressesView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end toXmlNode;

   procedure addDomNodeInterfaces (This : in out ShippingAddressesView) is
   begin
        ShippingAddressesView'Class (This).addDomNodeInterface (DomNodeInterface_Access (ShippingAddressesView_Access'(This'Unchecked_Access)));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out ShippingAddressesView) return Unbounded_String is
   begin
        begin
            ShippingAddressesView'Class (This).addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, ShippingAddressesView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   procedure toXmlNode (This : in out ShippingAddressesView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := ShippingAddressesView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.generic_Id.address.shipping.ShippingAddressesView_Package;


