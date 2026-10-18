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


with org.allbinary.game.input.TextNotificationUtil_Package; use org.allbinary.game.input.TextNotificationUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.graphics.form.item.validation.TextItemNumberVisitor_Package is

   package TextNotificationUtil_Package renames Standard.org.allbinary.game.input.TextNotificationUtil_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out TextItemNumberVisitor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out TextItemNumberVisitor'Class) is
   begin
      Visitor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TextItemNumberVisitor_Access is
      This : constant TextItemNumberVisitor_Access := new TextItemNumberVisitor;
   begin
      TextItemNumberVisitor_Package.Initialize (This.all);
      return This;
   end Create;

   function visit (This : in out TextItemNumberVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      value : Unbounded_String;
      stringValidationUtil : StringValidationUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        value := Java_Unbox (anyType);
        if (Length (value)) < (2) then
            stringValidationUtil := StringValidationUtil_Package.getInstance;
            if stringValidationUtil.isNumber (value) then
                return BooleanFactory_Package.getInstance.TRUE;
            else
                begin
                    TextNotificationUtil_Package.getInstance.fireError (To_Unbounded_String ("Numbers Only"));
                exception
                    when Java_Occurrence : others =>
                        declare
                            e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                        begin
                    commonStrings := CommonStrings_Package.getInstance;
                    This.logUtil.put (commonStrings.EXCEPTION_Id, TextItemNumberVisitor_Access'(This'Unchecked_Access), commonStrings.VISIT, e);
                        end;
                end;
                return BooleanFactory_Package.getInstance.FALSE;
            end if;
        else
            return BooleanFactory_Package.getInstance.FALSE;
        end if;
   end visit;

   procedure visit (This : in out TextItemNumberVisitor; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := TextItemNumberVisitor'Class (This).visit (anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   function visit (This : in out TextItemNumberVisitor; Value : Unbounded_String) return Java_Object_Access is
   begin
      return TextItemNumberVisitor'Class (This).visit (Java_Box (Value));
   end visit;

   procedure visit (This : in out TextItemNumberVisitor; Value : Unbounded_String) is
      Java_Result : constant Java_Object_Access := TextItemNumberVisitor'Class (This).visit (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.graphics.form.item.validation.TextItemNumberVisitor_Package;


