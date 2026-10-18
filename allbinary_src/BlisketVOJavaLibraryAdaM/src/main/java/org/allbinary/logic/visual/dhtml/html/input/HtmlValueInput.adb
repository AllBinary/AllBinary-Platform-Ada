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


with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out HtmlValueInput'Class) is
   begin
      null;
      
      This.VALUE := To_Unbounded_String ("VALUE");
   end Initialize_Fields;


   procedure Initialize (This : in out HtmlValueInput'Class; before : Unbounded_String; type_Id : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String) is
      stringUtil : StringUtil_Access;
   begin
        HtmlInput_Package.Initialize (This, before, type_Id, name, after);
        Initialize_Fields (This);
        stringUtil := StringUtil_Package.getInstance;
        This.value_Case := stringUtil.EMPTY_STRING;
        HtmlValueInput'Class (This).addAttribute (This.VALUE, value);
   end Initialize;

   function Create (before : Unbounded_String; type_Id : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String) return HtmlValueInput_Access is
      This : constant HtmlValueInput_Access := new HtmlValueInput;
   begin
      HtmlValueInput_Package.Initialize (This.all, before, type_Id, name, value, after);
      return This;
   end Create;

end org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package;


