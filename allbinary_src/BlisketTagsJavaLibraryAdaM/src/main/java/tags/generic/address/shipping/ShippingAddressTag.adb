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
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package body tags.generic_Id.address.shipping.ShippingAddressTag_Package is

   package ShippingAddressData_Package renames Standard.org.allbinary.business.user.address.ShippingAddressData_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   procedure Initialize_Fields (This : in out ShippingAddressTag'Class) is
   begin
      null;
      This.value := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out ShippingAddressTag'Class) is
   begin
      StoreValidationTransformTag_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ShippingAddressTag_Access is
      This : constant ShippingAddressTag_Access := new ShippingAddressTag;
   begin
      ShippingAddressTag_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws JspTagException
   function doStartTag (This : in out ShippingAddressTag) return Integer is
   begin
        begin
            if (ShippingAddressTag'Class (This).getCommand) /= (null) then
                if (ShippingAddressTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEW)) = (0) then
                    ShippingAddressTag'Class (This).setName (To_Unbounded_String ("Basic Shipping Address View"));
                    ShippingAddressTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.address.shipping.ViewShippingAddressesView"));
                elsif (ShippingAddressTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.EDIT)) = (0) then
                    ShippingAddressTag'Class (This).setName (To_Unbounded_String ("Basic Shipping Address View"));
                    ShippingAddressTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.address.shipping.EditShippingAddressesView"));
                elsif (ShippingAddressTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.NEW_Id)) = (0) then
                    ShippingAddressTag'Class (This).setName (To_Unbounded_String ("Basic Shipping Address View"));
                    ShippingAddressTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.address.shipping.NewShippingAddressesView"));
                elsif (ShippingAddressTag'Class (This).getCommand.compareTo (This.commonStrings.INSERT)) = (0) then
                    ShippingAddressTag'Class (This).setName (To_Unbounded_String ("Basic Shipping Address View"));
                    ShippingAddressTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.address.shipping.AddShippingAddressesView"));
                elsif (ShippingAddressTag'Class (This).getCommand.compareTo (This.commonStrings.DELETE)) = (0) then
                    ShippingAddressTag'Class (This).setName (To_Unbounded_String ("Basic Shipping Address View"));
                    ShippingAddressTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.address.shipping.DeleteShippingAddressesView"));
                elsif (ShippingAddressTag'Class (This).getCommand.compareTo (ShippingAddressData_Package.SELECT_Id)) = (0) then
                    ShippingAddressTag'Class (This).setName (To_Unbounded_String ("Basic Shipping Address View"));
                    ShippingAddressTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.address.shipping.SelectShippingAddressesView"));
                elsif (ShippingAddressTag'Class (This).getCommand.compareTo (ShippingAddressData_Package.SETTOBILLINGADDRESS)) = (0) then
                    ShippingAddressTag'Class (This).setName (To_Unbounded_String ("Basic Shipping Address View"));
                    ShippingAddressTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.address.shipping.SetShippingAddressesView"));
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (ShippingAddressTag'Class (This).getCommand)));
                end if;
                return StoreValidationTransformTag (This).doStartTag;
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Command Null")));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            AbResponseHandler_Package.sendJspTagLicensingRedirect (This.pageContext, e);
            return SKIP_BODY;
                end;
        end;
   end doStartTag;

end tags.generic_Id.address.shipping.ShippingAddressTag_Package;


