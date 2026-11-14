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


with org.allbinary.business.user.address.BillingAddressData_Package; use org.allbinary.business.user.address.BillingAddressData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;
with org.allbinary.globals.GLOBALS2_Package; use org.allbinary.globals.GLOBALS2_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with tags.ModifyTag_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with tags.transform.info.TransformInfoTag_Package;
with tags.TransformTag_Package;
with tags.ValidationTransformTag_Package;

package body tags.generic_Id.address.billing.BillingAddressTag_Package is

   package BillingAddressData_Package renames Standard.org.allbinary.business.user.address.BillingAddressData_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package GLOBALS2_Package renames Standard.org.allbinary.globals.GLOBALS2_Package;
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
      BillingAddressTag_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws JspTagException
   function doStartTag (This : in out BillingAddressTag) return Integer is
   begin
        begin
            if (BillingAddressTag'Class (This).getCommand) /= (null) then
                if (BillingAddressTag'Class (This).getCommand.compareTo (GLOBALS2_Package.VIEW)) = (0) then
                    BillingAddressTag'Class (This).setName (To_Unbounded_String ("Basic Billing Address View"));
                    BillingAddressTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.address.billing.ValidationView"));
                elsif (BillingAddressTag'Class (This).getCommand.compareTo (GLOBALS2_Package.EDIT)) = (0) then
                    BillingAddressTag'Class (This).setName (To_Unbounded_String ("Basic Billing Address View"));
                    BillingAddressTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.address.billing.EditValidationView"));
                elsif (BillingAddressTag'Class (This).getCommand.compareTo (GLOBALS2_Package.NEW_Id)) = (0) then
                    BillingAddressTag'Class (This).setName (To_Unbounded_String ("Basic Billing Address View"));
                    BillingAddressTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.address.billing.NewValidationView"));
                elsif (BillingAddressTag'Class (This).getCommand.compareTo (This.commonStrings.INSERT)) = (0) then
                    BillingAddressTag'Class (This).setName (To_Unbounded_String ("Basic Billing Address View"));
                    BillingAddressTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.address.billing.AddValidationView"));
                elsif (BillingAddressTag'Class (This).getCommand.compareTo (This.commonStrings.DELETE)) = (0) then
                    BillingAddressTag'Class (This).setName (To_Unbounded_String ("Basic Billing Address View"));
                    BillingAddressTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.address.billing.DeleteValidationView"));
                elsif (BillingAddressTag'Class (This).getCommand.compareTo (BillingAddressData_Package.SELECT_Id)) = (0) then
                    BillingAddressTag'Class (This).setName (To_Unbounded_String ("Basic Billing Address View"));
                    BillingAddressTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.address.billing.SelectValidationView"));
                elsif (BillingAddressTag'Class (This).getCommand.compareTo (BillingAddressData_Package.SETTOSHIPPINGADDRESS)) = (0) then
                    BillingAddressTag'Class (This).setName (To_Unbounded_String ("Basic Billing Address View"));
                    BillingAddressTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.address.billing.SetValidationView"));
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (BillingAddressTag'Class (This).getCommand)));
                end if;
                return StoreValidationTransformTag_Package.StoreValidationTransformTag (This).doStartTag;
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

end tags.generic_Id.address.billing.BillingAddressTag_Package;


