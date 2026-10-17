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


package body org.allbinary.graphics.form.item.validation.TextFieldItemValidator_Package is

   procedure Initialize_Fields (This : in out TextFieldItemValidator'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out TextFieldItemValidator'Class; textFieldItem_Param : access ABTextFieldItem_Package.ABTextFieldItem'Class; min : Integer; max : Integer; allowOnEmpty : Boolean) is
      textFieldItem : constant ABTextFieldItem_Access := ABTextFieldItem_Access (textFieldItem_Param);
   begin
      ValidatorBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.textFieldItem := textFieldItem;
        This.min := min;
        This.max := max;
        This.allowOnEmpty := allowOnEmpty;
   end Initialize;

   function Create (textFieldItem_Param : access ABTextFieldItem_Package.ABTextFieldItem'Class; min : Integer; max : Integer; allowOnEmpty : Boolean) return TextFieldItemValidator_Access is
      This : constant TextFieldItemValidator_Access := new TextFieldItemValidator;
   begin
      TextFieldItemValidator_Package.Initialize (This.all, textFieldItem_Param, min, max, allowOnEmpty);
      return This;
   end Create;

   function isValid (This : in out TextFieldItemValidator) return Boolean is
      booleanFactory : BooleanFactory_Access;
      result : Boolean;
      string_Id : Unbounded_String;
      textLength : Integer;
   begin
        booleanFactory := BooleanFactory_Package.getInstance;
        result := booleanFactory.TRUE;
        string_Id := This.textFieldItem.getString;
        textLength := Length (string_Id);
        if ((((textLength) = (0)) and then (This.allowOnEmpty))) or else (((textLength) > (This.min)) and then ((textLength) < (This.max))) then
            null;
        else
            if (textLength) < (This.min) then
                result := booleanFactory.FALSE;
            elsif (textLength) > (This.max) then
                result := booleanFactory.FALSE;
            end if;
        end if;
        return result;
   end isValid;

   function toList (This : in out TextFieldItemValidator) return BasicArrayList_Access is
      list : BasicArrayList_Access;
      string_Id : Unbounded_String;
      textLength : Integer;
      label : Unbounded_String;
      name : Unbounded_String;
   begin
        list := BasicArrayListD_Package.Create;
        string_Id := This.textFieldItem.getString;
        textLength := Length (string_Id);
        if ((textLength) > (This.min)) and then ((textLength) < (This.max)) then
            null;
        else
            label := This.textFieldItem.getLabel;
            name := Unbounded_Slice (label, (0) + 1, (Length (label)) - (2));
            if (textLength) < (This.min) then
                list.add (StringMaker_Package.Create.append (name).append (To_Unbounded_String (" is to short")).toString);
            elsif (textLength) > (This.max) then
                list.add (StringMaker_Package.Create.append (name).append (To_Unbounded_String (" is to long")).toString);
            end if;
        end if;
        return list;
   end toList;

end org.allbinary.graphics.form.item.validation.TextFieldItemValidator_Package;


