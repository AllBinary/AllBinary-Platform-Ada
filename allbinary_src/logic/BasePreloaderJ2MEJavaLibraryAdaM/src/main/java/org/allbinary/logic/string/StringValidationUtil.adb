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



package body org.allbinary.logic.string_Id.StringValidationUtil_Package is

   procedure Initialize_Fields (This : in out StringValidationUtil'Class) is
   begin
      null;
      This.stringUtil := StringUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return StringValidationUtil_Access is
   begin
        return StringValidationUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out StringValidationUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StringValidationUtil_Access is
      This : constant StringValidationUtil_Access := new StringValidationUtil;
   begin
      StringValidationUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function containsSpaces (This : in out StringValidationUtil; value : Unbounded_String) return Boolean is
   begin
        if (Java_Index_Of (value, Java_Image (' '))) >= (0) then
            return True;
        end if;
        return False;
   end containsSpaces;

   function isNumber (This : in out StringValidationUtil; value : Unbounded_String) return Boolean is
      numberOfDecimalPoints : Integer;
      digit : Character;
      index : Integer;
   begin
        numberOfDecimalPoints := 0;
        for index in 0 .. (Length (value)) - 1 loop
            digit := Element (value, (index) + 1);
            if (not (StringValidationUtil'Class (This).isNumberFromChar (digit))) and then ((Integer (Character'Pos (digit))) /= (Integer (Character'Pos ('.')))) then
                return False;
            end if;
            if (Integer (Character'Pos (digit))) = (Integer (Character'Pos ('.'))) then
                numberOfDecimalPoints := numberOfDecimalPoints + 1;
                if (numberOfDecimalPoints) > (1) then
                    return False;
                end if;
            end if;
        end loop;
        return True;
   end isNumber;

   function isNumberFromChar (This : in out StringValidationUtil; digit : Character) return Boolean is
   begin
        if ((((((((((Integer (Character'Pos (digit))) /= (Integer (Character'Pos ('0')))) and then ((Integer (Character'Pos (digit))) /= (Integer (Character'Pos ('1'))))) and then ((Integer (Character'Pos (digit))) /= (Integer (Character'Pos ('2'))))) and then ((Integer (Character'Pos (digit))) /= (Integer (Character'Pos ('3'))))) and then ((Integer (Character'Pos (digit))) /= (Integer (Character'Pos ('4'))))) and then ((Integer (Character'Pos (digit))) /= (Integer (Character'Pos ('5'))))) and then ((Integer (Character'Pos (digit))) /= (Integer (Character'Pos ('6'))))) and then ((Integer (Character'Pos (digit))) /= (Integer (Character'Pos ('7'))))) and then ((Integer (Character'Pos (digit))) /= (Integer (Character'Pos ('8'))))) and then ((Integer (Character'Pos (digit))) /= (Integer (Character'Pos ('9')))) then
            return False;
        end if;
        return True;
   end isNumberFromChar;

   function isValidRequired (This : in out StringValidationUtil; value : Unbounded_String; min : Integer; max : Integer) return Boolean is
   begin
        if (((value) = (Null_Unbounded_String)) or else ((Length (value)) < (min))) or else ((Length (value)) > (max)) then
            return False;
        end if;
        return True;
   end isValidRequired;

   function isValidRequiredNumber (This : in out StringValidationUtil; value : Unbounded_String; min : Integer; max : Integer) return Boolean is
   begin
        if ((StringValidationUtil'Class (This).isEmpty (value)) or else ((Length (value)) < (min))) or else ((Length (value)) > (max)) then
            return False;
        end if;
        if not (StringValidationUtil'Class (This).isNumber (value)) then
            return False;
        end if;
        return True;
   end isValidRequiredNumber;

   function isValidNotRequired (This : in out StringValidationUtil; value : Unbounded_String; min : Integer; max : Integer) return Boolean is
   begin
        if (value) /= (Null_Unbounded_String) then
            if ((Length (value)) < (min)) or else ((Length (value)) > (max)) then
                return False;
            end if;
        end if;
        return True;
   end isValidNotRequired;

   function isValidNotRequiredNumber (This : in out StringValidationUtil; value : Unbounded_String; min : Integer; max : Integer) return Boolean is
   begin
        if (value) /= (Null_Unbounded_String) then
            if (((Java_Compare_To (value, This.stringUtil.NULL_STRING)) = (0)) or else ((Length (value)) < (min))) or else ((Length (value)) > (max)) then
                return False;
            end if;
            if not (StringValidationUtil'Class (This).isNumber (value)) then
                return False;
            end if;
        end if;
        return True;
   end isValidNotRequiredNumber;

   function isEmpty (This : in out StringValidationUtil; string_Id : Unbounded_String) return Boolean is
   begin
        if (((string_Id) /= (Null_Unbounded_String)) and then ((Java_Compare_To (string_Id, This.stringUtil.NULL_STRING)) /= (0))) and then ((Java_Compare_To (string_Id, This.stringUtil.EMPTY_STRING)) /= (0)) then
            return False;
        else
            return True;
        end if;
   end isEmpty;

   procedure containsSpaces (This : in out StringValidationUtil; value : Unbounded_String) is
      Java_Result : constant Boolean := StringValidationUtil'Class (This).containsSpaces (value => value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end containsSpaces;

   procedure isNumber (This : in out StringValidationUtil; value : Unbounded_String) is
      Java_Result : constant Boolean := StringValidationUtil'Class (This).isNumber (value => value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isNumber;

   procedure isNumberFromChar (This : in out StringValidationUtil; digit : Character) is
      Java_Result : constant Boolean := StringValidationUtil'Class (This).isNumberFromChar (digit => digit);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isNumberFromChar;

   procedure isValidRequired (This : in out StringValidationUtil; value : Unbounded_String; min : Integer; max : Integer) is
      Java_Result : constant Boolean := StringValidationUtil'Class (This).isValidRequired (value => value, min => min, max => max);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValidRequired;

   procedure isValidRequiredNumber (This : in out StringValidationUtil; value : Unbounded_String; min : Integer; max : Integer) is
      Java_Result : constant Boolean := StringValidationUtil'Class (This).isValidRequiredNumber (value => value, min => min, max => max);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValidRequiredNumber;

   procedure isValidNotRequired (This : in out StringValidationUtil; value : Unbounded_String; min : Integer; max : Integer) is
      Java_Result : constant Boolean := StringValidationUtil'Class (This).isValidNotRequired (value => value, min => min, max => max);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValidNotRequired;

   procedure isValidNotRequiredNumber (This : in out StringValidationUtil; value : Unbounded_String; min : Integer; max : Integer) is
      Java_Result : constant Boolean := StringValidationUtil'Class (This).isValidNotRequiredNumber (value => value, min => min, max => max);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValidNotRequiredNumber;

   procedure isEmpty (This : in out StringValidationUtil; string_Id : Unbounded_String) is
      Java_Result : constant Boolean := StringValidationUtil'Class (This).isEmpty (string_Id => string_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEmpty;

begin
   null;
   instance := StringValidationUtil_Package.Create;

end org.allbinary.logic.string_Id.StringValidationUtil_Package;


