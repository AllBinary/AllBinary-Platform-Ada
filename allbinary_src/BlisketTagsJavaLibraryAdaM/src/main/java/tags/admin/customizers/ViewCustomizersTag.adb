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


package body tags.admin.customizers.ViewCustomizersTag_Package is

   procedure Initialize_Fields (This : in out ViewCustomizersTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ViewCustomizersTag'Class) is
   begin
      StoreValidationTransformTag_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ViewCustomizersTag_Access is
      This : constant ViewCustomizersTag_Access := new ViewCustomizersTag;
   begin
      ViewCustomizersTag_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws JspTagException
   function doStartTag (This : in out ViewCustomizersTag) return Integer is
   begin
        begin
            This.setName (To_Unbounded_String ("Add Validation Customizers View"));
            This.setObjectFile (To_Unbounded_String ("views.admin.customizers.CustomizersValidationView"));
            return StoreValidationTransformTag (This).doStartTag;
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

end tags.admin.customizers.ViewCustomizersTag_Package;


