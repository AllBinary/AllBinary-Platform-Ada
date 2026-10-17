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


package body org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package is

   procedure Initialize_Fields (This : in out HtmlHiddenInput'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out HtmlHiddenInput'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return HtmlHiddenInput_Access is
      This : constant HtmlHiddenInput_Access := new HtmlHiddenInput;
   begin
      HtmlHiddenInput_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.logic.visual.dhtml.html.input.HtmlHiddenInput_Package;


