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


package body org.allbinary.logic.visual.dhtml.html.input.HtmlTextInput_Package is

   procedure Initialize_Fields (This : in out HtmlTextInput'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out HtmlTextInput'Class; before : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String) is
   begin
        HtmlLengthInput_Package.Initialize (This, before, HtmlInputData_Package.getInstance.TEXT, name, value, after);
        HtmlTextInput'Class (This).setSize (19);
        HtmlTextInput'Class (This).setMaxLength (60);
   end Initialize;

   function Create (before : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String) return HtmlTextInput_Access is
      This : constant HtmlTextInput_Access := new HtmlTextInput;
   begin
      HtmlTextInput_Package.Initialize (This.all, before, name, value, after);
      return This;
   end Create;

end org.allbinary.logic.visual.dhtml.html.input.HtmlTextInput_Package;


