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


package body org.allbinary.logic.visual.dhtml.html.input.HtmlLengthInput_Package is

   procedure Initialize_Fields (This : in out HtmlLengthInput'Class) is
   begin
      null;
      This.MAXLENGTH := To_Unbounded_String ("MAXLENGTH");
      This.SIZE := To_Unbounded_String ("SIZE");
      This.length := Null_Unbounded_String;
      This.size_Case := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out HtmlLengthInput'Class; before : Unbounded_String; type_Id : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String) is
   begin
        HtmlValueInput_Package.Initialize (This, before, type_Id, name, value, after);
        Initialize_Fields (This);
   end Initialize;

   function Create (before : Unbounded_String; type_Id : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String) return HtmlLengthInput_Access is
      This : constant HtmlLengthInput_Access := new HtmlLengthInput;
   begin
      HtmlLengthInput_Package.Initialize (This.all, before, type_Id, name, value, after);
      return This;
   end Create;

   procedure setMaxLength (This : in out HtmlLengthInput; length : Integer) is
   begin
        This'Length := Java_New_String (length);
        HtmlLengthInput'Class (This).addAttribute (This.MAXLENGTH, This'Length);
   end setMaxLength;

   procedure setSize (This : in out HtmlLengthInput; size_Case : Integer) is
   begin
        This.size_Case := Java_New_String (size_Case);
        HtmlLengthInput'Class (This).addAttribute (This.MAXLENGTH, This.size_Case);
   end setSize;

end org.allbinary.logic.visual.dhtml.html.input.HtmlLengthInput_Package;


