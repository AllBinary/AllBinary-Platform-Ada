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


package body tags.generic_Id.basket.MiniBasketTag_Package is

   procedure Initialize_Fields (This : in out MiniBasketTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MiniBasketTag'Class) is
   begin
      StoreValidationTransformTag_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MiniBasketTag_Access is
      This : constant MiniBasketTag_Access := new MiniBasketTag;
   begin
      MiniBasketTag_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws JspTagException
   function doStartTag (This : in out MiniBasketTag) return Integer is
   begin
        begin
            MiniBasketTag'Class (This).setName (To_Unbounded_String ("Mini Basket View"));
            MiniBasketTag'Class (This).setObjectFile (To_Unbounded_String ("views.generic.basket.mini.ValidationView"));
            if (MiniBasketTag'Class (This).getCommand) /= (null) then
                if (MiniBasketTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEW)) = (0) then
                    null;
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (MiniBasketTag'Class (This).getCommand)));
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

end tags.generic_Id.basket.MiniBasketTag_Package;


