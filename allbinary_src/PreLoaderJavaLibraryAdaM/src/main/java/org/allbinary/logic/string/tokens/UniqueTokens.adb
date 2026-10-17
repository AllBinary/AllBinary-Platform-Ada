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


package body org.allbinary.logic.string_Id.tokens.UniqueTokens_Package is

   procedure Initialize_Fields (This : in out UniqueTokens'Class) is
   begin
      null;
      This.specialCharacters := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out UniqueTokens'Class) is
   begin
      Initialize_Fields (This);
        This.specialCharacters.add (To_Unbounded_String ("!"));
        This.specialCharacters.add (To_Unbounded_String ("@"));
        This.specialCharacters.add (CommonPhoneStrings_Package.getInstance.POUND);
        This.specialCharacters.add (To_Unbounded_String ("$"));
        This.specialCharacters.add (To_Unbounded_String ("%"));
        This.specialCharacters.add (To_Unbounded_String ("^"));
        This.specialCharacters.add (CommonSeps_Package.getInstance.AMPERSAND);
        This.specialCharacters.add (CommonPhoneStrings_Package.getInstance.STAR);
        This.specialCharacters.add (To_Unbounded_String ("("));
        This.specialCharacters.add (To_Unbounded_String (")"));
        This.specialCharacters.add (To_Unbounded_String ("-"));
        This.specialCharacters.add (To_Unbounded_String ("_"));
        This.specialCharacters.add (To_Unbounded_String ("+"));
        This.specialCharacters.add (To_Unbounded_String ("="));
        This.specialCharacters.add (To_Unbounded_String ("\"));
        This.specialCharacters.add (To_Unbounded_String ("|"));
        This.specialCharacters.add (AbPathData_Package.getInstance.EXTENSION_SEP);
        This.specialCharacters.add (To_Unbounded_String (","));
        This.specialCharacters.add (To_Unbounded_String ("<"));
        This.specialCharacters.add (To_Unbounded_String (">"));
        This.specialCharacters.add (To_Unbounded_String ("?"));
        This.specialCharacters.add (To_Unbounded_String ("/"));
        This.specialCharacters.add (To_Unbounded_String ("~"));
        This.specialCharacters.add (To_Unbounded_String ("`"));
   end Initialize;

   function Create return UniqueTokens_Access is
      This : constant UniqueTokens_Access := new UniqueTokens;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getWhithoutDashesAndSkipNumberOnlyTokens (This : in out UniqueTokens; stringVector : BasicArrayList_Access) return HashSet_Access is
      hashSet : HashSet_Access;
      index : Integer;
      commonSeps : CommonSeps_Access;
      keywords : Unbounded_String;
      tokenizer : Tokenizer_Access;
      keywordVector : BasicArrayList_Access;
      cleanString : Unbounded_String;
      spaceTokenizer : Tokenizer_Access;
      subKeywordVector : BasicArrayList_Access;
      subCleanString : Unbounded_String;
      spaceIndex : Integer;
      forIndex : Integer;
   begin
        begin
            hashSet := HashSet_Package.Create;
            index := 0;
            commonSeps := CommonSeps_Package.getInstance;
            while (index) < (stringVector.size) loop
                keywords := Unbounded_String (stringVector.get (index));
                tokenizer := Tokenizer_Package.Create (commonSeps.COMMA);
                keywordVector := tokenizer.getTokensFromString (keywords, BasicArrayListD_Package.Create);
                for forIndex in 0 .. (keywordVector.size) - 1 loop
                    cleanString := Unbounded_String (keywordVector.get (forIndex));
                    cleanString := Trim (cleanString, Ada.Strings.Both);
                    if ((Index (cleanString, To_String ('-')) - 1)) /= (-(1)) then
                        cleanString := Replace_Package.Create (To_Unbounded_String ("-"), commonSeps.SPACE).all_Id (cleanString);
                    end if;
                    hashSet.add (cleanString);
                    if ((Index (cleanString, To_String (' ')) - 1)) /= (-(1)) then
                        spaceTokenizer := Tokenizer_Package.Create (commonSeps.SPACE);
                        subKeywordVector := spaceTokenizer.getTokensFromString (cleanString, BasicArrayListD_Package.Create);
                        for spaceIndex in 0 .. (subKeywordVector.size) - 1 loop
                            subCleanString := Unbounded_String (subKeywordVector.get (spaceIndex));
                            if (not (This.isSpecialCharacter (subCleanString))) and then (not (This.numberOnly (subCleanString))) then
                                hashSet.add (subCleanString);
                            end if;
                        end loop;
                    end if;
                end loop;
                index := index + 1;
            end loop;
            return hashSet;
        exception
            when e : others =>
            Java_Throw (e);
        end;
   end getWhithoutDashesAndSkipNumberOnlyTokens;

   function numberOnly (This : in out UniqueTokens; subCleaningString : Unbounded_String) return Boolean is
   begin
        begin
            Integer'Value (To_String (subCleaningString));
            return True;
        exception
            when e : others =>
            return False;
        end;
   end numberOnly;

   function isSpecialCharacter (This : in out UniqueTokens; subCleaningString : Unbounded_String) return Boolean is
      index : Integer;
   begin
        for index in 0 .. (This.specialCharacters.size) - 1 loop
            if (subCleaningString.compareTo (Unbounded_String (This.specialCharacters.get (index)))) = (0) then
                return True;
            end if;
        end loop;
        return False;
   end isSpecialCharacter;

   procedure getWhithoutDashesAndSkipNumberOnlyTokens (This : in out UniqueTokens; stringVector : BasicArrayList_Access) is
      Java_Result : constant HashSet_Access := UniqueTokens'Class (This).getWhithoutDashesAndSkipNumberOnlyTokens (stringVector);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWhithoutDashesAndSkipNumberOnlyTokens;

   procedure numberOnly (This : in out UniqueTokens; subCleaningString : Unbounded_String) is
      Java_Result : constant Boolean := UniqueTokens'Class (This).numberOnly (subCleaningString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end numberOnly;

   procedure isSpecialCharacter (This : in out UniqueTokens; subCleaningString : Unbounded_String) is
      Java_Result : constant Boolean := UniqueTokens'Class (This).isSpecialCharacter (subCleaningString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSpecialCharacter;

end org.allbinary.logic.string_Id.tokens.UniqueTokens_Package;


