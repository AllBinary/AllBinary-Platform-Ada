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


package body org.allbinary.data.CamelCaseUtil_Package is

   procedure Initialize_Fields (This : in out CamelCaseUtil'Class) is
   begin
      null;
      This.commonSeps := CommonSeps_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out CamelCaseUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CamelCaseUtil_Access is
      This : constant CamelCaseUtil_Access := new CamelCaseUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return CamelCaseUtil_Access is
   begin
        return CamelCaseUtil_Package.instance;
   end getInstance;

   --  throws Exception
   function getAsCamelCase (This : in out CamelCaseUtil; string_Id : Unbounded_String; stringBuilder : StringMaker_Access) return Unbounded_String is
      stringValidationUtil : StringValidationUtil_Access;
      list : BasicArrayList_Access;
      tokenizer : Tokenizer_Access;
      size : Integer;
      word : Unbounded_String;
      i : Integer;
   begin
        if (string_Id) = (Null_Unbounded_String) then
            return StringUtil_Package.getInstance.EMPTY_STRING;
        end if;
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        stringBuilder.delete (0, stringBuilder.length);
        list := BasicArrayListD_Package.Create;
        tokenizer := Tokenizer_Package.Create (This.commonSeps.UNDERSCORE);
        tokenizer.getTokensFromString (string_Id, list);
        size := list.size;
        word := Null_Unbounded_String;
        for i in 0 .. (size) - 1 loop
            word := Unbounded_String (list.get (i));
            word := (if stringValidationUtil.isEmpty (word) then word else StringMaker_Package.Create.appendchar (Ada.Characters.Handling.To_Upper (Element (word, (0) + 1))).append (Translate (Unbounded_Slice (word, (1) + 1, Length (word)), Ada.Strings.Maps.Constants.Lower_Case_Map)).toString);
            stringBuilder.append (word);
        end loop;
        return stringBuilder.toString;
   end getAsCamelCase;

   procedure getInstance is
      Java_Result : constant CamelCaseUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getAsCamelCase (This : in out CamelCaseUtil; string_Id : Unbounded_String; stringBuilder : StringMaker_Access) is
      Java_Result : constant Unbounded_String := CamelCaseUtil'Class (This).getAsCamelCase (string_Id, stringBuilder);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAsCamelCase;

begin
   null;
   instance := CamelCaseUtil_Package.Create;

end org.allbinary.data.CamelCaseUtil_Package;


