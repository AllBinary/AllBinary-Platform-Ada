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


with org.allbinary.globals.AppUrlGlobals_Package; use org.allbinary.globals.AppUrlGlobals_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;

package body org.allbinary.logic.string_Id.regex.replace.Replace_Package is

   package AppUrlGlobals_Package renames Standard.org.allbinary.globals.AppUrlGlobals_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   procedure Initialize_Fields (This : in out Replace'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.j2seUtil := J2SEUtil_Package.getInstance;
      This.REPLACERS_U := To_Unbounded_String ("Replacers: ");
      This.ALL_Field_Id := To_Unbounded_String ("all");
      This.FOUND_KEY := To_Unbounded_String ("found key total: ");
      
   end Initialize_Fields;


   procedure Initialize (This : in out Replace'Class; key : Unbounded_String; value : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.hashMap := StdUtil_Package.getInstance.createHashMap;
        This.hashMap.put (new Unbounded_String_Array'(0 => key), new Unbounded_String_Array'(0 => value));
   end Initialize;

   function Create (key : Unbounded_String; value : Unbounded_String) return Replace_Access is
      This : constant Replace_Access := new Replace;
   begin
      Replace_Package.Initialize (This.all, key, value);
      return This;
   end Create;

   procedure Initialize (This : in out Replace'Class; keys : Unbounded_String_Array_Access; values : Unbounded_String_Array_Access) is
   begin
      Initialize_Fields (This);
        This.hashMap := StdUtil_Package.getInstance.createHashMap;
        This.hashMap.put (keys, values);
   end Initialize;

   function Create (keys : Unbounded_String_Array_Access; values : Unbounded_String_Array_Access) return Replace_Access is
      This : constant Replace_Access := new Replace;
   begin
      Replace_Package.Initialize (This.all, keys, values);
      return This;
   end Create;

   procedure Initialize (This : in out Replace'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Initialize_Fields (This);
        This.hashMap := hashMap;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return Replace_Access is
      This : constant Replace_Access := new Replace;
   begin
      Replace_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   function all_Id (This : in out Replace; replace_Var : Unbounded_String) return Unbounded_String is
   begin
        return Replace'Class (This).upTo (replace_Var, Integer'First);
   end all_Id;

   function upTo (This : in out Replace; replace_Var_Param : Unbounded_String; total : Integer) return Unbounded_String is
      replace_Var : Unbounded_String := replace_Var_Param;
      newStringBuffer : StringMaker_Access;
      totalNumberOfReplaces : Integer;
      keys : Unbounded_String_Array_Access;
      values : Unbounded_String_Array_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      foundTotal : Long_Long_Integer;
      index : Integer;
      nextKey : Unbounded_String;
      end_Id : Integer;
      nextSecondKey : Unbounded_String;
      begin2 : Integer;
      begin_Id : Integer;
      end2 : Integer;
      index2 : Integer;
   begin
        newStringBuffer := StringMaker_Package.Create;
        totalNumberOfReplaces := 0;
        keys := null;
        values := null;
        keyArray := This.j2seUtil.getHashMapAsArray (This.hashMap);
        size := keyArray'Length;
        for index2 in 0 .. (size) - 1 loop
            keys := Unbounded_String_Array_Access (keyArray (index2));
            values := Unbounded_String_Array_Access (This.hashMap.get (keys));
            foundTotal := 0;
            index := 0;
            nextKey := Null_Unbounded_String;
            end_Id := 0;
            nextSecondKey := Null_Unbounded_String;
            begin2 := 0;
            while (index) < (Length (replace_Var)) loop
                begin_Id := Java_Index_Of (replace_Var, Java_Image (keys (0)), index);
                if (begin_Id) /= (-(1)) then
                    foundTotal := foundTotal + 1;
                    if ((foundTotal) rem (100)) = (0) then
                        Ada.Text_IO.Put_Line (Java_Image (This.FOUND_KEY & Java_Image (foundTotal)));
                    end if;
                    nextKey := keys (0);
                    end_Id := (begin_Id) + (Length (nextKey));
                    newStringBuffer.delete (0, newStringBuffer.length);
                    newStringBuffer.append (Unbounded_Slice (replace_Var, (0) + 1, begin_Id));
                    newStringBuffer.append (values (0));
                    index := newStringBuffer.length;
                    newStringBuffer.append (Unbounded_Slice (replace_Var, (end_Id) + 1, Length (replace_Var)));
                    replace_Var := newStringBuffer.toString;
                    if (keys'Length) > (1) then
                        nextSecondKey := keys (1);
                        begin2 := Java_Index_Of (replace_Var, Java_Image (nextSecondKey), index);
                        if (begin2) /= (-(1)) then
                            end2 := (begin2) + (Length (nextSecondKey));
                            newStringBuffer.delete (0, newStringBuffer.length);
                            newStringBuffer.append (Unbounded_Slice (replace_Var, (0) + 1, begin2));
                            newStringBuffer.append (values (1));
                            index := newStringBuffer.length;
                            newStringBuffer.append (Unbounded_Slice (replace_Var, (end2) + 1, Length (replace_Var)));
                            replace_Var := newStringBuffer.toString;
                        end if;
                    end if;
                    totalNumberOfReplaces := totalNumberOfReplaces + 1;
                    if ((total) /= (Integer'First)) and then ((totalNumberOfReplaces) >= (total)) then
                        exit;
                    end if;
                else
                    exit;
                end if;
            end loop;
        end loop;
        if (totalNumberOfReplaces) > (0) then
            if LogConfigTypes_Package.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.REPLACE_Var) then
                This.logUtil.putF (To_Unbounded_String ("Total Number Of Replaces: ") & Java_Image (totalNumberOfReplaces), Replace_Access'(This'Unchecked_Access), This.ALL_Field_Id);
            end if;
        end if;
        return replace_Var;
   end upTo;

   function line (This : in out Replace; replace_Var_Param : Unbounded_String) return Unbounded_String is
      replace_Var : Unbounded_String := replace_Var_Param;
      newStringBuffer : StringMaker_Access;
      totalNumberOfReplaces : Integer;
      key : Unbounded_String;
      value : Unbounded_String;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      index : Integer;
      begin_Id : Integer;
      end_Id : Integer;
      index2 : Integer;
   begin
        newStringBuffer := StringMaker_Package.Create;
        totalNumberOfReplaces := 0;
        key := Null_Unbounded_String;
        value := Null_Unbounded_String;
        keyArray := This.j2seUtil.getHashMapAsArray (This.hashMap);
        size := keyArray'Length;
        for index2 in 0 .. (size) - 1 loop
            key := Java_Unbox (keyArray (index2));
            value := Java_Unbox (This.hashMap.get (Java_Box (key)));
            index := 0;
            while (index) < (Length (replace_Var)) loop
                newStringBuffer.delete (0, newStringBuffer.length);
                begin_Id := Java_Index_Of (replace_Var, Java_Image (key), index);
                if (begin_Id) /= (-(1)) then
                    Ada.Text_IO.Put_Line (Java_Image (This.FOUND_KEY));
                    end_Id := (Java_Index_Of (replace_Var, Java_Image (ASCII.LF), (begin_Id) + (Length (key)))) + (1);
                    if (end_Id) >= (0) then
                        newStringBuffer.append (Unbounded_Slice (replace_Var, (0) + 1, begin_Id));
                        index := newStringBuffer.length;
                        newStringBuffer.append (Unbounded_Slice (replace_Var, (end_Id) + 1, Length (replace_Var)));
                        replace_Var := newStringBuffer.toString;
                        totalNumberOfReplaces := totalNumberOfReplaces + 1;
                    end if;
                else
                    exit;
                end if;
            end loop;
        end loop;
        if LogConfigTypes_Package.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.REPLACE_Var) then
            This.logUtil.putF (To_Unbounded_String ("Total Number Of Replaces: ") & Java_Image (totalNumberOfReplaces), Replace_Access'(This'Unchecked_Access), This.ALL_Field_Id);
        end if;
        return replace_Var;
   end line;

   procedure main (args : Unbounded_String_Array_Access) is
      stringUtil : StringUtil_Access;
      appUrlGlobals : AppUrlGlobals_Access;
      testString : Unbounded_String;
      replace_Var : Replace_Access;
      replaceCat : Replace_Access;
   begin
        begin
            stringUtil := StringUtil_Package.getInstance;
            appUrlGlobals := AppUrlGlobals_Package.Create;
            appUrlGlobals.setWebappPath (To_Unbounded_String ("G:/mnt/bc/mydev/work/allbinary_src/ToolsJavaLibrary/tools"));
            URLGLOBALS_Package.init (appUrlGlobals);
            testString := To_Unbounded_String ("""super gun"" big tank ""goodgunriflegun");
            replace_Var := Replace_Package.Create (To_Unbounded_String ("gun"), To_Unbounded_String ("abcdefghijklmnopqrstuxwxyzabcdefghijklmnopqrstuxwxyz"));
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("Old String: ") & testString));
            testString := replace_Var.all_Id (testString);
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("New String: ") & testString));
            replaceCat := Replace_Package.Create (To_Unbounded_String ("abcdefghijklmnopqrstuxwxyzabcdefghijklmnopqrstuxwxyz"), stringUtil.EMPTY_STRING);
            testString := replaceCat.all_Id (testString);
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("New String: ") & testString));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            null;
                end;
        end;
   end main;

   procedure all_Id (This : in out Replace; replace_Var : Unbounded_String) is
      Java_Result : constant Unbounded_String := Replace'Class (This).all_Id (replace_Var => replace_Var);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end all_Id;

   procedure upTo (This : in out Replace; replace_Var_Param : Unbounded_String; total : Integer) is
      Java_Result : constant Unbounded_String := Replace'Class (This).upTo (replace_Var_Param => replace_Var_Param, total => total);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end upTo;

   procedure line (This : in out Replace; replace_Var_Param : Unbounded_String) is
      Java_Result : constant Unbounded_String := Replace'Class (This).line (replace_Var_Param => replace_Var_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end line;

end org.allbinary.logic.string_Id.regex.replace.Replace_Package;


