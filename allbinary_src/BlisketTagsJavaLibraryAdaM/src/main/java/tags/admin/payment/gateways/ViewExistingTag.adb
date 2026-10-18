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


with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;

package body tags.admin.payment.gateways.ViewExistingTag_Package is

   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   procedure Initialize_Fields (This : in out ViewExistingTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ViewExistingTag'Class) is
   begin
      StoreValidationTransformTag_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ViewExistingTag_Access is
      This : constant ViewExistingTag_Access := new ViewExistingTag;
   begin
      ViewExistingTag_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws JspTagException
   function doStartTag (This : in out ViewExistingTag) return Integer is
   begin
        begin
            if (ViewExistingTag'Class (This).getCommand) /= (null) then
                if (ViewExistingTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEW)) = (0) then
                    ViewExistingTag'Class (This).setName (To_Unbounded_String ("Validation User View"));
                    ViewExistingTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.payment.gateways.SelectExistingValidationView"));
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (ViewExistingTag'Class (This).getCommand)));
                end if;
                return StoreValidationTransformTag (This).doStartTag;
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Command Null")));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            AbResponseHandler_Package.sendJspTagRedirect (This.pageContext, e);
            return SKIP_BODY;
                end;
        end;
   end doStartTag;

end tags.admin.payment.gateways.ViewExistingTag_Package;


