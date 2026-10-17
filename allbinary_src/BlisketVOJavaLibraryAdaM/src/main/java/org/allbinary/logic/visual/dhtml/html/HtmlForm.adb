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


package body org.allbinary.logic.visual.dhtml.html.HtmlForm_Package is

   procedure Initialize_Fields (This : in out HtmlForm'Class) is
   begin
      null;
      This.FORMBEGIN := To_Unbounded_String ("<form ");
      This.END_Id := To_Unbounded_String (">");
      This.FORMEND := To_Unbounded_String ("</form>");
      This.ACTION := To_Unbounded_String ("ACTION=""");
      This.GET := To_Unbounded_String ("GET""");
      This.POST := To_Unbounded_String ("POST""");
      This.METHODS := new Unbounded_String_Array'(This.GET, This.POST);
      This.METHOD := To_Unbounded_String ("METHOD=""");
      This.method_Case := Null_Unbounded_String;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out HtmlForm'Class; action_Case : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.action_Case := action_Case;
        This.inputs := BasicArrayListD_Package.Create;
   end Initialize;

   function Create (action_Case : Unbounded_String) return HtmlForm_Access is
      This : constant HtmlForm_Access := new HtmlForm;
   begin
      HtmlForm_Package.Initialize (This.all, action_Case);
      return This;
   end Create;

   procedure setPost (This : in out HtmlForm) is
   begin
        This.method_Case := This.POST;
   end setPost;

   procedure setGet (This : in out HtmlForm) is
   begin
        This.method_Case := This.GET;
   end setGet;

   procedure addInput (This : in out HtmlForm; htmlInput_Param : access HtmlInput_Package.HtmlInput'Class) is
      htmlInput : constant HtmlInput_Access := HtmlInput_Access (htmlInput_Param);
   begin
        This.inputs.add (htmlInput);
   end addInput;

   procedure addTable (This : in out HtmlForm; htmlTable_Param : access HtmlTable_Package.HtmlTable'Class) is
      htmlTable : constant HtmlTable_Access := HtmlTable_Access (htmlTable_Param);
   begin
        This.inputs.add (htmlTable);
   end addTable;

   function toString (This : in out HtmlForm) return Unbounded_String is
      stringUtil : StringUtil_Access;
      result : Unbounded_String;
      inputArray : Java_Object_Access_Array_Access;
      inputSize : Integer;
      i : Integer;
   begin
        stringUtil := StringUtil_Package.getInstance;
        result := stringUtil.EMPTY_STRING;
        inputArray := This.inputs.toArray;
        inputSize := inputArray'Length;
        result := This.FORMBEGIN;
        result := result & This.METHOD;
        result := result & This.method_Case;
        result := result & To_Unbounded_String (""" ");
        result := result & This.ACTION;
        result := result & This.action_Case;
        result := result & To_Unbounded_String (""" ");
        result := result & This.END_Id;
        for i in 0 .. (inputSize) - 1 loop
            result := result & inputArray (i).toString;
            result := result & To_Unbounded_String (" ");
        end loop;
        result := result & This.FORMEND;
        return result;
   end toString;

end org.allbinary.logic.visual.dhtml.html.HtmlForm_Package;


