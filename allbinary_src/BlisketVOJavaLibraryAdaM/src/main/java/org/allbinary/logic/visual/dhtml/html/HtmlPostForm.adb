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


package body org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package is

   procedure Initialize_Fields (This : in out HtmlPostForm'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out HtmlPostForm'Class; action : Unbounded_String) is
   begin
        HtmlForm_Package.Initialize (This, action);
        This.setPost;
   end Initialize;

   function Create (action : Unbounded_String) return HtmlPostForm_Access is
      This : constant HtmlPostForm_Access := new HtmlPostForm;
   begin
      Initialize (This.all, action);
      return This;
   end Create;

end org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package;


