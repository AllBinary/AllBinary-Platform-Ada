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


package body org.allbinary.logic.visual.dhtml.html.input.HtmlRadioInput_Package is

   procedure Initialize_Fields (This : in out HtmlRadioInput'Class) is
   begin
      null;
      This.CHECKED := To_Unbounded_String ("checked");
   end Initialize_Fields;


   procedure Initialize (This : in out HtmlRadioInput'Class; before : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String) is
   begin
        HtmlValueInput_Package.Initialize (This, before, HtmlInputData_Package.getInstance.RADIO, name, value, after);
        Initialize_Fields (This);
   end Initialize;

   function Create (before : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String) return HtmlRadioInput_Access is
      This : constant HtmlRadioInput_Access := new HtmlRadioInput;
   begin
      HtmlRadioInput_Package.Initialize (This.all, before, name, value, after);
      return This;
   end Create;

   procedure setSelected (This : in out HtmlRadioInput) is
   begin
        HtmlValueInput (This).addAttribute (This.CHECKED, BooleanFactory_Package.getInstance.TRUE_STRING);
   end setSelected;

end org.allbinary.logic.visual.dhtml.html.input.HtmlRadioInput_Package;


