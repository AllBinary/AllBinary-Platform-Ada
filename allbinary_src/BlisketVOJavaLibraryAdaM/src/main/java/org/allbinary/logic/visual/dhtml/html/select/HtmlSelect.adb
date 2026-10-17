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


package body org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package is

   procedure Initialize_Fields (This : in out HtmlSelect'Class) is
   begin
      null;
      This.END_Id := To_Unbounded_String (">");
      This.STARTSELECT := To_Unbounded_String ("<SELECT ");
      This.ENDSELECT := To_Unbounded_String ("</SELECT>");
      This.SIZE := To_Unbounded_String ("SIZE=""");
      This.NAME := To_Unbounded_String ("NAME=""");
      This.STARTOPTION := To_Unbounded_String ("<OPTION");
      This.SELETED := To_Unbounded_String ("SELECTED");
      This.ENDOPTION := To_Unbounded_String ("</OPTION>");
      
      
      
      
      This.selected := Null_Unbounded_String;
      
      This.multiple := To_Unbounded_String ("multiple");
      This.isMultipleSelect := False;
   end Initialize_Fields;


   procedure Initialize (This : in out HtmlSelect'Class; before : Unbounded_String; size_Case : Unbounded_String; name_Case : Unbounded_String; after : Unbounded_String) is
   begin
      HtmlTag_Package.Initialize (This);
      Initialize_Fields (This);
        This.before := before;
        This.size_Case := size_Case;
        This.name_Case := name_Case;
        This.after := after;
        This.options := BasicArrayListD_Package.Create;
   end Initialize;

   function Create (before : Unbounded_String; size_Case : Unbounded_String; name_Case : Unbounded_String; after : Unbounded_String) return HtmlSelect_Access is
      This : constant HtmlSelect_Access := new HtmlSelect;
   begin
      Initialize (This.all, before, size_Case, name_Case, after);
      return This;
   end Create;

   procedure addOption (This : in out HtmlSelect; key : Unbounded_String) is
   begin
        This.options.add (key);
   end addOption;

   procedure addOptions (This : in out HtmlSelect; fileName : Unbounded_String) is
      lineReader : LineReader_Access;
      option : Unbounded_String;
   begin
        begin
            lineReader := LineReader_Package.Create (fileName);
            while lineReader.hasNext loop
                option := lineReader.next;
                This.addOption (option);
            end loop;
        exception
            when e : others =>
            This.addOption (To_Unbounded_String ("Error"));
        end;
   end addOptions;

   procedure setSelected (This : in out HtmlSelect; selected : Unbounded_String) is
   begin
        This.selected := selected;
   end setSelected;

   function isMultiple (This : in out HtmlSelect) return Boolean is
   begin
        return This.isMultipleSelect;
   end isMultiple;

   procedure setMultiple (This : in out HtmlSelect; value : Boolean) is
   begin
        This.isMultipleSelect := value;
   end setMultiple;

   function getOptions (This : in out HtmlSelect) return Unbounded_String is
      stringUtil : StringUtil_Access;
      result : Unbounded_String;
      optionsArray : Java_Object_Access_Array_Access;
      optionsSize : Integer;
      value : Unbounded_String;
      i : Integer;
   begin
        stringUtil := StringUtil_Package.getInstance;
        result := stringUtil.EMPTY_STRING;
        optionsArray := This.options.toArray;
        optionsSize := optionsArray'Length;
        for i in 0 .. (optionsSize) - 1 loop
            value := Unbounded_String (optionsArray (i));
            if ((value) /= (null)) and then ((value.compareTo (stringUtil.EMPTY_STRING)) /= (0)) then
                result := result & This.STARTOPTION;
                result := result & This.END_Id;
                result := result & value;
                result := result & This.ENDOPTION;
            end if;
        end loop;
        return result;
   end getOptions;

   function toString (This : in out HtmlSelect) return Unbounded_String is
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
        result := result & This.STARTSELECT;
        result := result & This.NAME;
        result := result & This.name_Case;
        result := result & To_Unbounded_String (""" ");
        result := result & This.SIZE;
        result := result & This.size_Case;
        result := result & To_Unbounded_String (""" ");
        for i in 0 .. (attributeSize) - 1 loop
            key := Unbounded_String (attributeKeys (i));
            value := Unbounded_String (This.otherAttributes.get (key));
            if ((value) /= (null)) and then ((value.compareTo (stringUtil.EMPTY_STRING)) /= (0)) then
                result := result & key;
                result := result & To_Unbounded_String ("=""");
                result := result & value;
                result := result & To_Unbounded_String (""" ");
            end if;
        end loop;
        if This.isMultiple then
            result := result & To_Unbounded_String (" ") & This.multiple & To_Unbounded_String (" ");
        end if;
        result := result & This.END_Id;
        result := result & This.getOptions;
        result := result & This.ENDSELECT;
        result := result & This.after;
        return result;
   end toString;

   procedure isMultiple (This : in out HtmlSelect) is
      Java_Result : constant Boolean := HtmlSelect'Class (This).isMultiple;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isMultiple;

   procedure getOptions (This : in out HtmlSelect) is
      Java_Result : constant Unbounded_String := HtmlSelect'Class (This).getOptions;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOptions;

   procedure toString (This : in out HtmlSelect) is
      Java_Result : constant Unbounded_String := HtmlSelect'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package;


