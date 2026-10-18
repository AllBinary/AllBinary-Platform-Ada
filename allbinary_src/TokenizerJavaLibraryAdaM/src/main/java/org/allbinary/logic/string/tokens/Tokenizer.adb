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


with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.logic.string_Id.tokens.Tokenizer_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out Tokenizer'Class) is
   begin
      null;
      
      This.endSep := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   procedure Initialize (This : in out Tokenizer'Class; sep : Unbounded_String) is
   begin
      Initialize_Fields (This);
        if ((sep) = (Null_Unbounded_String)) or else ((TsUtil_Package.getInstance.compareTo (sep, StringUtil_Package.getInstance.EMPTY_STRING)) = (0)) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Sep provided is not valid")));
        end if;
        This.sep := sep;
   end Initialize;

   function Create (sep : Unbounded_String) return Tokenizer_Access is
      This : constant Tokenizer_Access := new Tokenizer;
   begin
      Tokenizer_Package.Initialize (This.all, sep);
      return This;
   end Create;

   procedure setSep (This : in out Tokenizer; sep : Unbounded_String) is
   begin
        This.sep := sep;
   end setSep;

   procedure setEndSep (This : in out Tokenizer; endSep : Unbounded_String) is
   begin
        This.endSep := endSep;
   end setEndSep;

   function getInsideSep (This : in out Tokenizer; string_Id : Unbounded_String) return BasicArrayList_Access is
      tokenList : BasicArrayList_Access;
      index : Integer;
      size : Integer;
      end_Id : Integer;
   begin
        tokenList := BasicArrayList_Access (BasicArrayListD_Package.Create);
        index := 0;
        size := Length (string_Id);
        while (index) < (size) loop
            index := Java_Index_Of (string_Id, Java_Image (This.sep), index);
            if (index) /= (-(1)) then
                end_Id := Java_Index_Of (string_Id, Java_Image (This.endSep), (index) + (Length (This.sep)));
                if (end_Id) /= (-(1)) then
                    tokenList.add (Unbounded_Slice (string_Id, ((index) + (Length (This.sep))) + 1, (end_Id) - (((Length (This.endSep)) - (1)))));
                    index := (end_Id) + (Length (This.endSep));
                else
                    null;
                end if;
            else
                exit;
            end if;
        end loop;
        return tokenList;
   end getInsideSep;

   function getTokensFromString (This : in out Tokenizer; string_Id : Unbounded_String; tokenVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      tokenVector : constant BasicArrayList_Access := BasicArrayList_Access (tokenVector_Param);
      index : Integer;
      end_Id : Integer;
   begin
        index := 0;
        end_Id := 0;
        while (index) < (Length (string_Id)) loop
            end_Id := Java_Index_Of (string_Id, Java_Image (This.sep), index);
            if (end_Id) /= (-(1)) then
                tokenVector.add (Unbounded_Slice (string_Id, (index) + 1, end_Id));
                index := (end_Id) + (Length (This.sep));
            else
                tokenVector.add (Unbounded_Slice (string_Id, (index) + 1, Length (string_Id)));
                exit;
            end if;
        end loop;
        return tokenVector;
   end getTokensFromString;

   function getTokens (This : in out Tokenizer; stringVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return ABHashtable_Access is
      stringVector : constant BasicArrayList_Access := BasicArrayList_Access (stringVector_Param);
      tokenHashtable : ABHashtable_Access;
      string_Id : Unbounded_String;
      end_Id : Integer;
      size : Integer;
      index : Integer;
   begin
        tokenHashtable := StdUtil_Package.getInstance.createHashtable;
        string_Id := StringUtil_Package.getInstance.EMPTY_STRING;
        end_Id := 0;
        size := stringVector.size;
        for index in 0 .. (size) - 1 loop
            string_Id := Java_Unbox (stringVector.objectArray (index));
            end_Id := Java_Index_Of (string_Id, Java_Image (This.sep));
            if (end_Id) >= (0) then
                tokenHashtable.put (Unbounded_Slice (string_Id, (0) + 1, end_Id), Unbounded_Slice (string_Id, ((end_Id) + (1)) + 1, Length (string_Id)));
            end if;
        end loop;
        return tokenHashtable;
   end getTokens;

   procedure getInsideSep (This : in out Tokenizer; string_Id : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := Tokenizer'Class (This).getInsideSep (string_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInsideSep;

   procedure getTokensFromString (This : in out Tokenizer; string_Id : Unbounded_String; tokenVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := Tokenizer'Class (This).getTokensFromString (string_Id, tokenVector_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTokensFromString;

   procedure getTokens (This : in out Tokenizer; stringVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant ABHashtable_Access := Tokenizer'Class (This).getTokens (stringVector_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTokens;

end org.allbinary.logic.string_Id.tokens.Tokenizer_Package;


