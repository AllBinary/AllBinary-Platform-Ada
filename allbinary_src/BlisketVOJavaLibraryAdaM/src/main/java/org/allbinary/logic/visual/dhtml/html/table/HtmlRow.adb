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


package body org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package is

   procedure Initialize_Fields (This : in out HtmlRow'Class) is
   begin
      null;
      This.END_Id := To_Unbounded_String (">");
      This.START := To_Unbounded_String ("<tr ");
      This.ENDTAG := To_Unbounded_String ("</tr>");
      This.numberOfColumns := 0;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out HtmlRow'Class; before : Unbounded_String; after : Unbounded_String) is
   begin
      HtmlTag_Package.Initialize (This);
      Initialize_Fields (This);
        This.before := Java_New_String (before);
        This.after := Java_New_String (after);
        This.htmlCellsVector := BasicArrayListD_Package.Create;
   end Initialize;

   function Create (before : Unbounded_String; after : Unbounded_String) return HtmlRow_Access is
      This : constant HtmlRow_Access := new HtmlRow;
   begin
      HtmlRow_Package.Initialize (This.all, before, after);
      return This;
   end Create;

   procedure addCell (This : in out HtmlRow; htmlCell_Param : access HtmlCell_Package.HtmlCell'Class) is
      htmlCell : constant HtmlCell_Access := HtmlCell_Access (htmlCell_Param);
   begin
        This.htmlCellsVector.add (htmlCell);
        This.numberOfColumns := This.numberOfColumns + 1;
   end addCell;

   function getNumberOfColumns (This : in out HtmlRow) return Integer is
   begin
        return This.numberOfColumns;
   end getNumberOfColumns;

   function toString (This : in out HtmlRow) return Unbounded_String is
      stringUtil : StringUtil_Access;
      result : Unbounded_String;
      attributeKeys : Java_Object_Access_Array_Access;
      attributeSize : Integer;
      cellSize : Integer;
      key : Unbounded_String;
      value : Unbounded_String;
      i : Integer;
   begin
        stringUtil := StringUtil_Package.getInstance;
        result := stringUtil.EMPTY_STRING;
        attributeKeys := This.otherAttributes.keySet.toArray;
        attributeSize := attributeKeys'Length;
        cellSize := This.htmlCellsVector.size;
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
        for i in 0 .. (cellSize) - 1 loop
            result := result & This.htmlCellsVector.get (i).toString;
            result := result & To_Unbounded_String (" ");
        end loop;
        result := result & This.ENDTAG;
        result := result & This.after;
        return result;
   end toString;

end org.allbinary.logic.visual.dhtml.html.table.HtmlRow_Package;


