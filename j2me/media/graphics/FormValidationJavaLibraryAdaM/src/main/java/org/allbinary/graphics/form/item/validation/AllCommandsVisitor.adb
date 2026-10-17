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


package body org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package is

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

   function visit (This : in out AllCommandsVisitor; anyType : Java_Object_Access) return Java_Object_Access is
   begin
        return BooleanFactory_Package.getInstance.TRUE;
   end visit;

   procedure visit (This : in out AllCommandsVisitor; anyType : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := AllCommandsVisitor'Class (This).visit (anyType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package;


