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


package body org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package is

   procedure Initialize_Fields (This : in out NumberTextFieldItemValidator'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out NumberTextFieldItemValidator'Class; textFieldItem_Param : access ABTextFieldItem_Package.ABTextFieldItem'Class; maxChars : Integer; min : Integer; max : Integer) is
      textFieldItem : constant ABTextFieldItem_Access := ABTextFieldItem_Access (textFieldItem_Param);
   begin
      ValidatorBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.textFieldItem := textFieldItem;
        This.min := min;
        This.max := max;
        This.maxChars := maxChars;
   end Initialize;

   function Create (textFieldItem_Param : access ABTextFieldItem_Package.ABTextFieldItem'Class; maxChars : Integer; min : Integer; max : Integer) return NumberTextFieldItemValidator_Access is
      This : constant NumberTextFieldItemValidator_Access := new NumberTextFieldItemValidator;
   begin
      NumberTextFieldItemValidator_Package.Initialize (This.all, textFieldItem_Param, maxChars, min, max);
      return This;
   end Create;

   function isNumberValid (This : in out NumberTextFieldItemValidator; value : Integer) return Boolean is
   begin
        return BooleanFactory_Package.getInstance.TRUE;
   end isNumberValid;

   function toNumberVector (This : in out NumberTextFieldItemValidator; value : Integer) return BasicArrayList_Access is
   begin
        return BasicArrayListD_Package.Create;
   end toNumberVector;

   function isValid (This : in out NumberTextFieldItemValidator) return Boolean is
      result : Boolean;
      string_Id : Unbounded_String;
      textLength : Integer;
   begin
        result := BooleanFactory_Package.getInstance.TRUE;
        string_Id := This.textFieldItem.getString;
        textLength := Length (string_Id);
        if ((textLength) > (0)) and then ((textLength) < (This.maxChars)) then
            begin
                Integer'Value (To_String (This.textFieldItem.getString));
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                result := BooleanFactory_Package.getInstance.FALSE;
                    end;
            end;
        else
            if (textLength) < (1) then
                result := BooleanFactory_Package.getInstance.FALSE;
            elsif (textLength) > (This.maxChars) then
                result := BooleanFactory_Package.getInstance.FALSE;
            end if;
        end if;
        return result;
   end isValid;

   function toList (This : in out NumberTextFieldItemValidator) return BasicArrayList_Access is
      list : BasicArrayList_Access;
      string_Id : Unbounded_String;
      textLength : Integer;
      label : Unbounded_String;
      name : Unbounded_String;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      stringMaker : StringMaker_Access;
      number : Integer;
   begin
        list := BasicArrayListD_Package.Create;
        string_Id := This.textFieldItem.getString;
        textLength := Length (string_Id);
        label := This.textFieldItem.getLabel;
        name := Unbounded_Slice (label, (0) + 1, (Length (label)) - (2));
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        stringMaker := StringMaker_Package.Create;
        if ((textLength) > (0)) and then ((textLength) < (This.maxChars)) then
            begin
                number := smallIntegerSingletonFactory.createInstance (Integer'Value (To_String (This.textFieldItem.getString)));
                if (Integer (number)) > (This.min) then
                    stringMaker.delete (0, stringMaker.length);
                    list.add (stringMaker.append (name).append (To_Unbounded_String (" is to small")).toString);
                elsif (Integer (number)) > (This.max) then
                    stringMaker.delete (0, stringMaker.length);
                    list.add (stringMaker.append (name).append (To_Unbounded_String (" is to large")).toString);
                end if;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                stringMaker.delete (0, stringMaker.length);
                list.add (stringMaker.append (name).append (To_Unbounded_String (" is not a number")).toString);
                    end;
            end;
        else
            if (textLength) < (1) then
                stringMaker.delete (0, stringMaker.length);
                list.add (stringMaker.append (name).append (To_Unbounded_String (" is to short")).toString);
            elsif (textLength) > (This.maxChars) then
                stringMaker.delete (0, stringMaker.length);
                list.add (stringMaker.append (name).append (To_Unbounded_String (" is to long")).toString);
            end if;
        end if;
        return list;
   end toList;

   procedure isNumberValid (This : in out NumberTextFieldItemValidator; value : Integer) is
      Java_Result : constant Boolean := NumberTextFieldItemValidator'Class (This).isNumberValid (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isNumberValid;

   procedure toNumberVector (This : in out NumberTextFieldItemValidator; value : Integer) is
      Java_Result : constant BasicArrayList_Access := NumberTextFieldItemValidator'Class (This).toNumberVector (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toNumberVector;

end org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package;


