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


package body org.allbinary.logic.visual.dhtml.html.input.HtmlInput_Package is

   procedure Initialize_Fields (This : in out HtmlInput'Class) is
   begin
      null;
      This.END_Id := To_Unbounded_String (">");
      This.STARTINPUT := To_Unbounded_String ("<INPUT ");
      This.ENDINPUT := To_Unbounded_String ("</INPUT>");
      This.TYPE_Id := To_Unbounded_String ("TYPE=""");
      This.NAME := To_Unbounded_String ("NAME=""");
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out HtmlInput'Class; before : Unbounded_String; type_Case_Id : Unbounded_String; name_Case : Unbounded_String; after : Unbounded_String) is
   begin
      HtmlTag_Package.Initialize (This);
      Initialize_Fields (This);
        This.before := before;
        This.type_Case_Id := type_Case_Id;
        This.name_Case := name_Case;
        This.after := after;
   end Initialize;

   function Create (before : Unbounded_String; type_Case_Id : Unbounded_String; name_Case : Unbounded_String; after : Unbounded_String) return HtmlInput_Access is
      This : constant HtmlInput_Access := new HtmlInput;
   begin
      Initialize (This.all, before, type_Case_Id, name_Case, after);
      return This;
   end Create;

   function toString (This : in out HtmlInput) return Unbounded_String is
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
        result := result & This.STARTINPUT;
        result := result & This.TYPE_Id;
        result := result & This.type_Case_Id;
        result := result & To_Unbounded_String (""" ");
        result := result & This.NAME;
        result := result & This.name_Case;
        result := result & To_Unbounded_String (""" ");
        for i in 0 .. (attributeSize) - 1 loop
            key := Unbounded_String (attributeKeys (i));
            value := Unbounded_String (This.otherAttributes.get (key));
            if ((value) /= (Null_Unbounded_String)) and then ((value.compareTo (stringUtil.EMPTY_STRING)) /= (0)) then
                result := result & key;
                result := result & To_Unbounded_String ("=""");
                result := result & value;
                result := result & To_Unbounded_String (""" ");
            end if;
        end loop;
        result := result & This.END_Id;
        result := result & This.ENDINPUT;
        result := result & This.after;
        return result;
   end toString;

   procedure toString (This : in out HtmlInput) is
      Java_Result : constant Unbounded_String := HtmlInput'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.logic.visual.dhtml.html.input.HtmlInput_Package;


