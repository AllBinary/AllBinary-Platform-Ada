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


package body org.allbinary.graphics.form.item.validation.TextItemUserIdentifierVisitor_Package is

   procedure Initialize_Fields (This : in out TextItemUserIdentifierVisitor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out TextItemUserIdentifierVisitor'Class) is
   begin
      Visitor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TextItemUserIdentifierVisitor_Access is
      This : constant TextItemUserIdentifierVisitor_Access := new TextItemUserIdentifierVisitor;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function visit (This : in out TextItemUserIdentifierVisitor; anyType : Java_Object_Access) return Java_Object_Access is
      value : Unbounded_String;
      charValue : Character;
      stringValidationUtil : StringValidationUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        value := Unbounded_String (anyType);
        if (Length (value)) < (2) then
            charValue := Element (value, (0) + 1);
            stringValidationUtil := StringValidationUtil_Package.getInstance;
            if stringValidationUtil.isNumber (value) then
                return BooleanFactory_Package.getInstance.TRUE;
            elsif This.isLetter (charValue) then
                return BooleanFactory_Package.getInstance.TRUE;
            else
                begin
                    TextNotificationUtil_Package.getInstance.fireError (To_Unbounded_String ("Only Letters & Numbers Allowed"));
                exception
                    when e : others =>
                    commonStrings := CommonStrings_Package.getInstance;
                    This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.VISIT, e);
                end;
                return BooleanFactory_Package.getInstance.FALSE;
            end if;
        else
            return BooleanFactory_Package.getInstance.FALSE;
        end if;
   end visit;

   function isLetter (This : in out TextItemUserIdentifierVisitor; charValue : Character) return Boolean is
      value : Integer;
   begin
        value := Integer (Character'Pos (charValue));
        return ((((value) > (64)) and then ((value) < (91)))) or else ((((value) > (96)) and then ((value) < (123))));
   end isLetter;

   procedure visit (This : in out TextItemUserIdentifierVisitor; anyType : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := TextItemUserIdentifierVisitor'Class (This).visit (anyType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   procedure isLetter (This : in out TextItemUserIdentifierVisitor; charValue : Character) is
      Java_Result : constant Boolean := TextItemUserIdentifierVisitor'Class (This).isLetter (charValue);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLetter;

end org.allbinary.graphics.form.item.validation.TextItemUserIdentifierVisitor_Package;


