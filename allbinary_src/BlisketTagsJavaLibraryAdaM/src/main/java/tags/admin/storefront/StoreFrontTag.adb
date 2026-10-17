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


package body tags.admin.storefront.StoreFrontTag_Package is

   procedure Initialize_Fields (This : in out StoreFrontTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontTag'Class) is
   begin
      StoreValidationTransformTag_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StoreFrontTag_Access is
      This : constant StoreFrontTag_Access := new StoreFrontTag;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws JspTagException
   function doStartTag (This : in out StoreFrontTag) return Integer is
   begin
        begin
            if (This.getCommand) /= (null) then
                if (This.getCommand.compareTo (This.commonStrings.INSERT)) = (0) then
                    This.setName (To_Unbounded_String ("Add Validation StoreFront View"));
                    This.setObjectFile (To_Unbounded_String ("views.admin.storefront.AddValidationStoreFrontView"));
                elsif (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEW)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                elsif (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.EDIT)) = (0) then
                    This.setName (To_Unbounded_String ("Edit Validation StoreFront View"));
                    This.setObjectFile (To_Unbounded_String ("views.admin.storefront.EditValidationStoreFrontView"));
                elsif (This.getCommand.compareTo (This.commonStrings.UPDATE)) = (0) then
                    This.setName (To_Unbounded_String ("Update Validation StoreFront View"));
                    This.setObjectFile (To_Unbounded_String ("views.admin.storefront.UpdateValidationStoreFrontView"));
                elsif (This.getCommand.compareTo (This.commonStrings.DELETE)) = (0) then
                    This.setName (To_Unbounded_String ("Delete Validation StoreFront View"));
                    This.setObjectFile (To_Unbounded_String ("views.admin.storefront.DeleteValidationStoreFrontView"));
                elsif (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.BACKUP)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                elsif (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.RESTORE)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                elsif (This.getCommand.compareTo (This.commonStrings.DROP)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                elsif (This.getCommand.compareTo (This.commonStrings.CREATE)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
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

   procedure doStartTag (This : in out StoreFrontTag) is
      Java_Result : constant Integer := StoreFrontTag'Class (This).doStartTag;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end doStartTag;

end tags.admin.storefront.StoreFrontTag_Package;


