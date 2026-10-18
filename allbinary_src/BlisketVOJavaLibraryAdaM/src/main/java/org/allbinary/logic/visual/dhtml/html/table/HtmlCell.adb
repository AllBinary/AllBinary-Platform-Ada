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

package body org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out HtmlCell'Class) is
   begin
      null;
      This.END_Id := To_Unbounded_String (">");
      This.START := To_Unbounded_String ("<td ");
      This.ENDTAG := To_Unbounded_String ("</td>");
      This.HEIGHT := To_Unbounded_String ("height");
      This.WIDTH := To_Unbounded_String ("width");
      
      
      
      This.body_Id := Null_Unbounded_String;
      
   end Initialize_Fields;


   procedure Initialize (This : in out HtmlCell'Class; before : Unbounded_String; width : Unbounded_String; height : Unbounded_String; after : Unbounded_String) is
   begin
      HtmlTag_Package.Initialize (This);
      Initialize_Fields (This);
        This.before := Java_New_String (before);
        This.after := Java_New_String (after);
        This.height_Case := Java_New_String (height);
        This.width_Case := Java_New_String (width);
        HtmlCell'Class (This).addAttribute (This.HEIGHT, This.height_Case);
        HtmlCell'Class (This).addAttribute (This.WIDTH, This.width_Case);
   end Initialize;

   function Create (before : Unbounded_String; width : Unbounded_String; height : Unbounded_String; after : Unbounded_String) return HtmlCell_Access is
      This : constant HtmlCell_Access := new HtmlCell;
   begin
      HtmlCell_Package.Initialize (This.all, before, width, height, after);
      return This;
   end Create;

   procedure addText (This : in out HtmlCell; body_Id : Unbounded_String) is
   begin
        This.body_Id := body_Id;
   end addText;

   function toString (This : in out HtmlCell) return Unbounded_String is
      stringUtil : StringUtil_Access;
      result : Unbounded_String;
      attributeKeys : Java_Object_Access_Array_Access;
      attributeSize : Integer;
      key : Unbounded_String;
      value : Unbounded_String;
      i : Integer;
   begin
        stringUtil := StringUtil_Package.getInstance;
        result := stringUtil.EMPTY_STRING;
        attributeKeys := This.otherAttributes.keySet.toArray;
        attributeSize := attributeKeys'Length;
        result := This.before;
        result := result & This.START;
        result := result & To_Unbounded_String (" ");
        for i in 0 .. (attributeSize) - 1 loop
            key := Java_Unbox (attributeKeys (i));
            value := Java_Unbox (This.otherAttributes.get (key));
            if ((value) /= (Null_Unbounded_String)) and then ((Java_Compare_To (value, stringUtil.EMPTY_STRING)) /= (0)) then
                result := result & key;
                result := result & To_Unbounded_String ("=""");
                result := result & value;
                result := result & To_Unbounded_String (""" ");
            end if;
        end loop;
        result := result & This.END_Id;
        result := result & This.body_Id;
        result := result & This.ENDTAG;
        result := result & This.after;
        return result;
   end toString;

end org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package;


