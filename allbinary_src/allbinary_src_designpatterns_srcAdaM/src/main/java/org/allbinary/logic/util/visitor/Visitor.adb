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



package body org.allbinary.logic.util.visitor.Visitor_Package is

   procedure Initialize_Fields (This : in out Visitor'Class) is
   begin
      null;
      This.nullUtil := NullUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out Visitor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return Visitor_Access is
      This : constant Visitor_Access := new Visitor;
   begin
      Visitor_Package.Initialize (This.all);
      return This;
   end Create;


   function visit (This : in out Visitor; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        return This.nullUtil.NULL_OBJECT;
   end visit;

   function getInstance return Visitor_Access is
   begin
        return Visitor_Package.instance;
   end getInstance;

   procedure visit (This : in out Visitor; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := Visitor'Class (This).visit (anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   function visit (This : in out Visitor; Value : Unbounded_String) return Java_Object_Access is
   begin
      return Visitor'Class (This).visit (Java_Box (Value));
   end visit;

   procedure visit (This : in out Visitor; Value : Unbounded_String) is
      Java_Result : constant Java_Object_Access := Visitor'Class (This).visit (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

begin
   null;
   instance := Visitor_Package.Create;

end org.allbinary.logic.util.visitor.Visitor_Package;


