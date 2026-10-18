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


with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;

package body org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package is

   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   procedure Initialize_Fields (This : in out AllCommandsVisitor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AllCommandsVisitor'Class) is
   begin
      Visitor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AllCommandsVisitor_Access is
      This : constant AllCommandsVisitor_Access := new AllCommandsVisitor;
   begin
      AllCommandsVisitor_Package.Initialize (This.all);
      return This;
   end Create;

   function visit (This : in out AllCommandsVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        return BooleanFactory_Package.getInstance.TRUE;
   end visit;

   procedure visit (This : in out AllCommandsVisitor; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := AllCommandsVisitor'Class (This).visit (anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   function visit (This : in out AllCommandsVisitor; Value : Unbounded_String) return Java_Object_Access is
   begin
      return AllCommandsVisitor'Class (This).visit (Java_Box (Value));
   end visit;

   procedure visit (This : in out AllCommandsVisitor; Value : Unbounded_String) is
      Java_Result : constant Java_Object_Access := AllCommandsVisitor'Class (This).visit (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package;


