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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;

package body org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   procedure Initialize_Fields (This : in out HtmlTable'Class) is
   begin
      null;
      This.END_Id := To_Unbounded_String (">");
      This.START := To_Unbounded_String ("<table ");
      This.ENDTAG := To_Unbounded_String ("</table>");
      This.CLASS := To_Unbounded_String ("class");
      This.DIRECTION := To_Unbounded_String ("dir");
      This.ID := To_Unbounded_String ("id");
      This.LANG := To_Unbounded_String ("lang");
      This.UNITS := To_Unbounded_String ("units");
      This.BORDER := To_Unbounded_String ("border");
      This.CELLPADDING := To_Unbounded_String ("cellpadding");
      This.CELLSPACING := To_Unbounded_String ("cellspacing");
      This.COLS := To_Unbounded_String ("cols");
      This.FLOAT_Id := To_Unbounded_String ("float");
      This.FRAME := To_Unbounded_String ("frame");
      This.RULES := To_Unbounded_String ("rules");
      This.STYLE := To_Unbounded_String ("style");
      This.BORDERCOLLAPSE := To_Unbounded_String ("border-collapse: collapse");
      This.numberOfColumns := 0;
      
      This.border_Case := Null_Unbounded_String;
      
      
      This.style_Case := Null_Unbounded_String;
      This.name := Null_Unbounded_String;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out HtmlTable'Class; before : Unbounded_String; cellpadding : Unbounded_String; cellspacing : Unbounded_String; after : Unbounded_String) is
   begin
      HtmlTag_Package.Initialize (This);
      Initialize_Fields (This);
        This.before := before;
        This.cellpadding_Case := cellpadding;
        This.cellspacing_Case := cellspacing;
        This.after := after;
        This.htmlRowsVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        HtmlTable'Class (This).addAttribute (This.BORDER, CommonPhoneStrings_Package.getInstance.ZERO);
        HtmlTable'Class (This).addAttribute (This.CELLPADDING, This.cellpadding_Case);
        HtmlTable'Class (This).addAttribute (This.CELLSPACING, This.cellspacing_Case);
        HtmlTable'Class (This).addAttribute (This.STYLE, This.BORDERCOLLAPSE);
   end Initialize;

   function Create (before : Unbounded_String; cellpadding : Unbounded_String; cellspacing : Unbounded_String; after : Unbounded_String) return HtmlTable_Access is
      This : constant HtmlTable_Access := new HtmlTable;
   begin
      HtmlTable_Package.Initialize (This.all, before, cellpadding, cellspacing, after);
      return This;
   end Create;

   procedure addRow (This : in out HtmlTable; htmlRow_Param : access HtmlRow_Package.HtmlRow'Class) is
      htmlRow : constant HtmlRow_Access := HtmlRow_Access (htmlRow_Param);
   begin
        if (This.numberOfColumns) < (htmlRow.getNumberOfColumns) then
            This.numberOfColumns := htmlRow.getNumberOfColumns;
        end if;
        This.htmlRowsVector.add (Java_Object_Access (htmlRow));
   end addRow;

   function toString (This : in out HtmlTable) return Unbounded_String is
      stringUtil : StringUtil_Access;
      result : Unbounded_String;
      attributeKeys : Java_Object_Access_Array_Access;
      key : Unbounded_String;
      value : Unbounded_String;
      i : Integer;
      size : Integer;
   begin
        stringUtil := StringUtil_Package.getInstance;
        result := stringUtil.EMPTY_STRING;
        attributeKeys := This.otherAttributes.keySet.toArray;
        result := This.before;
        result := result & This.START;
        result := result & To_Unbounded_String (" ");
        for i in 0 .. (attributeKeys'Length) - 1 loop
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
        size := This.htmlRowsVector.size;
        for i in 0 .. (size) - 1 loop
            result := result & This.htmlRowsVector.get (i).toString;
            result := result & To_Unbounded_String (" ");
        end loop;
        result := result & This.ENDTAG;
        result := result & This.after;
        return result;
   end toString;

end org.allbinary.logic.visual.dhtml.html.table.HtmlTable_Package;


