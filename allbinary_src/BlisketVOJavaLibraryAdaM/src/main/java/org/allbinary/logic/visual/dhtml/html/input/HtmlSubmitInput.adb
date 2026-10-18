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


with org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package; use org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package;

package body org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package is

   procedure Initialize_Fields (This : in out HtmlSubmitInput'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out HtmlSubmitInput'Class; before : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String) is
   begin
        HtmlValueInput_Package.Initialize (This, before, HtmlInputData_Package.getInstance.SUBMIT, name, value, after);
   end Initialize;

   function Create (before : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String) return HtmlSubmitInput_Access is
      This : constant HtmlSubmitInput_Access := new HtmlSubmitInput;
   begin
      HtmlSubmitInput_Package.Initialize (This.all, before, name, value, after);
      return This;
   end Create;

end org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package;


