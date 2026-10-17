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


package body org.allbinary.graphics.form.item.validation.TextItemVisitor_Package is

   procedure Initialize_Fields (This : in out TextItemVisitor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TextItemVisitor'Class) is
   begin
      Visitor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TextItemVisitor_Access is
      This : constant TextItemVisitor_Access := new TextItemVisitor;
   begin
      TextItemVisitor_Package.Initialize (This.all);
      return This;
   end Create;

   function visit (This : in out TextItemVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      value : Unbounded_String;
   begin
        value := Unbounded_String (anyType);
        if (Length (value)) < (2) then
            return BooleanFactory_Package.getInstance.TRUE;
        else
            return BooleanFactory_Package.getInstance.FALSE;
        end if;
   end visit;

   procedure visit (This : in out TextItemVisitor; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := TextItemVisitor'Class (This).visit (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.graphics.form.item.validation.TextItemVisitor_Package;


