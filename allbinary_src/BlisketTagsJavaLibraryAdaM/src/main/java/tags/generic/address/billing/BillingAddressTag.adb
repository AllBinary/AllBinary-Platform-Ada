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


package body tags.generic_Id.address.billing.BillingAddressTag_Package is

   procedure Initialize_Fields (This : in out BillingAddressTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BillingAddressTag'Class) is
   begin
      StoreValidationTransformTag_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BillingAddressTag_Access is
      This : constant BillingAddressTag_Access := new BillingAddressTag;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws JspTagException
   function doStartTag (This : in out BillingAddressTag) return Integer is
   begin
        begin
            if (This.getCommand) /= (null) then
                if (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEW)) = (0) then
                    This.setName (To_Unbounded_String ("Basic Billing Address View"));
                    This.setObjectFile (To_Unbounded_String ("views.generic.address.billing.ValidationView"));
                elsif (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.EDIT)) = (0) then
                    This.setName (To_Unbounded_String ("Basic Billing Address View"));
                    This.setObjectFile (To_Unbounded_String ("views.generic.address.billing.EditValidationView"));
                elsif (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.NEW_Id)) = (0) then
                    This.setName (To_Unbounded_String ("Basic Billing Address View"));
                    This.setObjectFile (To_Unbounded_String ("views.generic.address.billing.NewValidationView"));
                elsif (This.getCommand.compareTo (This.commonStrings.INSERT)) = (0) then
                    This.setName (To_Unbounded_String ("Basic Billing Address View"));
                    This.setObjectFile (To_Unbounded_String ("views.generic.address.billing.AddValidationView"));
                elsif (This.getCommand.compareTo (This.commonStrings.DELETE)) = (0) then
                    This.setName (To_Unbounded_String ("Basic Billing Address View"));
                    This.setObjectFile (To_Unbounded_String ("views.generic.address.billing.DeleteValidationView"));
                elsif (This.getCommand.compareTo (BillingAddressData_Package.SELECT_Id)) = (0) then
                    This.setName (To_Unbounded_String ("Basic Billing Address View"));
                    This.setObjectFile (To_Unbounded_String ("views.generic.address.billing.SelectValidationView"));
                elsif (This.getCommand.compareTo (BillingAddressData_Package.SETTOSHIPPINGADDRESS)) = (0) then
                    This.setName (To_Unbounded_String ("Basic Billing Address View"));
                    This.setObjectFile (To_Unbounded_String ("views.generic.address.billing.SetValidationView"));
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

   procedure doStartTag (This : in out BillingAddressTag) is
      Java_Result : constant Integer := BillingAddressTag'Class (This).doStartTag;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end doStartTag;

end tags.generic_Id.address.billing.BillingAddressTag_Package;


