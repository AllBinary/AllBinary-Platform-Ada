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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;

package body org.allbinary.logic.java.bool.BooleanUtil_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   procedure Initialize_Fields (This : in out BooleanUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return BooleanUtil_Access is
   begin
        return BooleanUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out BooleanUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BooleanUtil_Access is
      This : constant BooleanUtil_Access := new BooleanUtil;
   begin
      BooleanUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getFromString (This : in out BooleanUtil; booleanString : Unbounded_String) return Boolean is
      stringValidationUtil : StringValidationUtil_Access;
      booleanFactory : BooleanFactory_Access;
      booleanStringLowerCase : Unbounded_String;
   begin
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        booleanFactory := BooleanFactory_Package.getInstance;
        if stringValidationUtil.isEmpty (booleanString) then
            return False;
        end if;
        booleanStringLowerCase := Translate (booleanString, Ada.Strings.Maps.Constants.Lower_Case_Map);
        if (Java_Compare_To (booleanStringLowerCase, booleanFactory.TRUE_STRING)) = (0) then
            return True;
        elsif (Java_Compare_To (booleanStringLowerCase, booleanFactory.FALSE_STRING)) = (0) then
            return False;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Invalid booleanString - Must be true or false")));
        end if;
   end getFromString;

   --  throws Exception
   function isStringBoolean (This : in out BooleanUtil; booleanString : Unbounded_String) return Boolean is
      booleanFactory : BooleanFactory_Access;
      booleanStringLowerCase : Unbounded_String;
   begin
        booleanFactory := BooleanFactory_Package.getInstance;
        booleanStringLowerCase := Translate (booleanString, Ada.Strings.Maps.Constants.Lower_Case_Map);
        if ((Java_Compare_To (booleanStringLowerCase, booleanFactory.TRUE_STRING)) = (0)) or else ((Java_Compare_To (booleanStringLowerCase, booleanFactory.FALSE_STRING)) = (0)) then
            return True;
        end if;
        return False;
   end isStringBoolean;

   function toStringFromBooleanArray (This : in out BooleanUtil; booleanArray : Boolean_Array_Access) return Unbounded_String is
      stringMaker : StringMaker_Access;
      size : Integer;
      index : Integer;
   begin
        stringMaker := StringMaker_Package.Create;
        size := booleanArray'Length;
        for index in 0 .. (size) - 1 loop
            stringMaker.appendboolean (booleanArray (index));
        end loop;
        return stringMaker.toString;
   end toStringFromBooleanArray;

   procedure getFromString (This : in out BooleanUtil; booleanString : Unbounded_String) is
      Java_Result : constant Boolean := BooleanUtil'Class (This).getFromString (booleanString => booleanString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFromString;

   procedure isStringBoolean (This : in out BooleanUtil; booleanString : Unbounded_String) is
      Java_Result : constant Boolean := BooleanUtil'Class (This).isStringBoolean (booleanString => booleanString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isStringBoolean;

   procedure toStringFromBooleanArray (This : in out BooleanUtil; booleanArray : Boolean_Array_Access) is
      Java_Result : constant Unbounded_String := BooleanUtil'Class (This).toStringFromBooleanArray (booleanArray => booleanArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toStringFromBooleanArray;

begin
   null;
   instance := BooleanUtil_Package.Create;

end org.allbinary.logic.java.bool.BooleanUtil_Package;


