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


package body org.allbinary.logic.string_Id.StringUtil_Package is

   procedure Initialize_Fields (This : in out StringUtil'Class) is
   begin
      null;
      This.INIT_STRING := Java_New_String (To_Unbounded_String (""));
      This.NULL_STRING := To_Unbounded_String ("null");
      This.EMPTY_STRING := To_Unbounded_String ("");
      This.ONE_EMPTY_STRING_ARRAY := new Unbounded_String_Array'(0 => This.EMPTY_STRING);
      This.stringArray := new Unbounded_String_Array'(0 .. (0) - 1 => Null_Unbounded_String);
   end Initialize_Fields;


   function getInstance return StringUtil_Access is
   begin
        return StringUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out StringUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StringUtil_Access is
      This : constant StringUtil_Access := new StringUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getNonNull (This : in out StringUtil; string_Id : Unbounded_String) return Unbounded_String is
   begin
        if (string_Id) = (Null_Unbounded_String) then
            return This.EMPTY_STRING;
        else
            return string_Id;
        end if;
   end getNonNull;

   function getArrayInstance (This : in out StringUtil) return Unbounded_String_Array_Access is
   begin
        return This.stringArray;
   end getArrayInstance;

   function count (This : in out StringUtil; string_Id : Unbounded_String; aChar : Character) return Integer is
      count : Integer;
      size : Integer;
      index : Integer;
   begin
        count := 0;
        size := Length (string_Id);
        for index in 0 .. (size) - 1 loop
            if (Element (string_Id, (index) + 1)) = (aChar) then
                count := count + 1;
            end if;
        end loop;
        return count;
   end count;

   function toString (This : in out StringUtil; anyType : Java_Object_Access) return Unbounded_String is
   begin
        if (anyType) /= (null) then
            return anyType.toString;
        else
            return This.NULL_STRING;
        end if;
   end toString;

   procedure getInstance is
      Java_Result : constant StringUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getNonNull (This : in out StringUtil; string_Id : Unbounded_String) is
      Java_Result : constant Unbounded_String := StringUtil'Class (This).getNonNull (string_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNonNull;

   procedure getArrayInstance (This : in out StringUtil) is
      Java_Result : constant Unbounded_String_Array_Access := StringUtil'Class (This).getArrayInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getArrayInstance;

   procedure count (This : in out StringUtil; string_Id : Unbounded_String; aChar : Character) is
      Java_Result : constant Integer := StringUtil'Class (This).count (string_Id, aChar);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end count;

   procedure toString (This : in out StringUtil; anyType : Java_Object_Access) is
      Java_Result : constant Unbounded_String := StringUtil'Class (This).toString (anyType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   instance := StringUtil_Package.Create;

end org.allbinary.logic.string_Id.StringUtil_Package;


