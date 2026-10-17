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


package body tags.generic_Id.address.shipping.ShippingAddressTag_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   --  throws JspTagException
   function doStartTag (This : in out ShippingAddressTag) return Integer is
   begin
        begin
            if (This.getCommand) /= (null) then
                if (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEW)) = (0) then
                    This.setName (To_Unbounded_String ("Basic Shipping Address View"));
                    This.setObjectFile (To_Unbounded_String ("views.generic.address.shipping.ViewShippingAddressesView"));
                elsif (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.EDIT)) = (0) then
                    This.setName (To_Unbounded_String ("Basic Shipping Address View"));
                    This.setObjectFile (To_Unbounded_String ("views.generic.address.shipping.EditShippingAddressesView"));
                elsif (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.NEW_Id)) = (0) then
                    This.setName (To_Unbounded_String ("Basic Shipping Address View"));
                    This.setObjectFile (To_Unbounded_String ("views.generic.address.shipping.NewShippingAddressesView"));
                elsif (This.getCommand.compareTo (This.commonStrings.INSERT)) = (0) then
                    This.setName (To_Unbounded_String ("Basic Shipping Address View"));
                    This.setObjectFile (To_Unbounded_String ("views.generic.address.shipping.AddShippingAddressesView"));
                elsif (This.getCommand.compareTo (This.commonStrings.DELETE)) = (0) then
                    This.setName (To_Unbounded_String ("Basic Shipping Address View"));
                    This.setObjectFile (To_Unbounded_String ("views.generic.address.shipping.DeleteShippingAddressesView"));
                elsif (This.getCommand.compareTo (ShippingAddressData_Package.SELECT_Id)) = (0) then
                    This.setName (To_Unbounded_String ("Basic Shipping Address View"));
                    This.setObjectFile (To_Unbounded_String ("views.generic.address.shipping.SelectShippingAddressesView"));
                elsif (This.getCommand.compareTo (ShippingAddressData_Package.SETTOBILLINGADDRESS)) = (0) then
                    This.setName (To_Unbounded_String ("Basic Shipping Address View"));
                    This.setObjectFile (To_Unbounded_String ("views.generic.address.shipping.SetShippingAddressesView"));
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (This.getCommand)));
                end if;
                return StoreValidationTransformTag (This).doStartTag;
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Command Null")));
        exception
            when e : others =>
            AbResponseHandler_Package.sendJspTagLicensingRedirect (This.pageContext, e);
            return SKIP_BODY;
        end;
   end doStartTag;

   procedure doStartTag (This : in out ShippingAddressTag) is
      Java_Result : constant Integer := ShippingAddressTag'Class (This).doStartTag;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end doStartTag;

end tags.generic_Id.address.shipping.ShippingAddressTag_Package;


