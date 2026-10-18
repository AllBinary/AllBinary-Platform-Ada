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


package body tags.generic_Id.shipping.ShippingMethodsTag_Package is

   procedure Initialize_Fields (This : in out ShippingMethodsTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ShippingMethodsTag'Class) is
   begin
      StoreValidationTransformTag_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ShippingMethodsTag_Access is
      This : constant ShippingMethodsTag_Access := new ShippingMethodsTag;
   begin
      ShippingMethodsTag_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws JspTagException
   function doStartTag (This : in out ShippingMethodsTag) return Integer is
   begin
        begin
            if (ShippingMethodsTag'Class (This).getCommand) /= (null) then
                ShippingMethodsTag'Class (This).setName (To_Unbounded_String ("Basic Shipping View"));
                ShippingMethodsTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.shipping.ValidationView"));
                if (ShippingMethodsTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEW)) = (0) then
                    null;
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (ShippingMethodsTag'Class (This).getCommand)));
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

end tags.generic_Id.shipping.ShippingMethodsTag_Package;


