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


with org.allbinary.business.user.commerce.money.payment.PaymentData_Package; use org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package body tags.generic_Id.payment.PaymentTag_Package is

   package PaymentData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   procedure Initialize_Fields (This : in out PaymentTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentTag'Class) is
   begin
      StoreValidationTransformTag_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PaymentTag_Access is
      This : constant PaymentTag_Access := new PaymentTag;
   begin
      PaymentTag_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws JspTagException
   function doStartTag (This : in out PaymentTag) return Integer is
   begin
        begin
            PaymentTag'Class (This).setName (To_Unbounded_String ("Basic Payment View"));
            PaymentTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.payment.ValidationView"));
            if (PaymentTag'Class (This).getCommand) /= (null) then
                if (((PaymentTag'Class (This).getCommand.compareTo (PaymentData_Package.VIEW)) = (0)) or else ((PaymentTag'Class (This).getCommand.compareTo (PaymentData_Package.CHANGE)) = (0))) or else ((PaymentTag'Class (This).getCommand.compareTo (PaymentData_Package.ADDNEW)) = (0)) then
                    null;
                elsif (PaymentTag'Class (This).getCommand.compareTo (This.commonStrings.INSERT)) = (0) then
                    null;
                elsif (PaymentTag'Class (This).getCommand.compareTo (This.commonStrings.DELETE)) = (0) then
                    return This.EVAL_BODY_INCLUDE;
                elsif (PaymentTag'Class (This).getCommand.compareTo (PaymentData_Package.SELECT_Id)) = (0) then
                    return This.EVAL_BODY_INCLUDE;
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (PaymentTag'Class (This).getCommand)));
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

end tags.generic_Id.payment.PaymentTag_Package;


