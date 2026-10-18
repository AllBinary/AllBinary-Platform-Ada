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


with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;

package body org.allbinary.string_Id.CommonSeps_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;
   procedure Initialize_Fields (This : in out CommonSeps'Class) is
   begin
      null;
      This.NEW_LINE := To_Unbounded_String ("" & ASCII.LF & "");
      This.SEMICOLON := To_Unbounded_String (";");
      This.EQUALS := To_Unbounded_String ("=");
      This.SPACE := To_Unbounded_String (" ");
      This.COMMA := To_Unbounded_String (",");
      This.COLON := To_Unbounded_String (":");
      This.PERIOD := To_Unbounded_String (".");
      This.UNDERSCORE := To_Unbounded_String ("_");
      This.COLON_SEP := StringMaker_Package.Create.append (This.COLON).append (This.SPACE).toString;
      This.COMMA_SEP := StringMaker_Package.Create.append (This.COMMA).append (This.SPACE).toString;
      This.PARENTHESIS_OPEN := To_Unbounded_String ("(");
      This.PARENTHESIS_CLOSE := To_Unbounded_String (")");
      This.BRACE_OPEN := To_Unbounded_String ("{");
      This.BRACE_CLOSE := To_Unbounded_String ("}");
      This.BRACKET_OPEN := To_Unbounded_String ("[");
      This.BRACKET_CLOSE := To_Unbounded_String ("]");
      This.DASH := To_Unbounded_String ("-");
      This.PERCENT := To_Unbounded_String ("%");
      This.AMPERSAND := To_Unbounded_String ("&");
      This.FORWARD_SLASH := To_Unbounded_String ("/");
      This.BACK_SLASH := To_Unbounded_String ("\");
      This.QUESTION := To_Unbounded_String ("?");
      This.QUOTE := To_Unbounded_String ("""");
      This.QUOTE_END := To_Unbounded_String (""",");
      This.COMMENT := To_Unbounded_String ("//");
      This.INDENT := To_Unbounded_String ("    ");
   end Initialize_Fields;

   procedure Initialize (This : in out CommonSeps'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CommonSeps_Access is
      This : constant CommonSeps_Access := new CommonSeps;
   begin
      CommonSeps_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CommonSeps_Access is
   begin
        return CommonSeps_Package.instance;
   end getInstance;

begin
   null;
   instance := CommonSeps_Package.Create;

end org.allbinary.string_Id.CommonSeps_Package;


