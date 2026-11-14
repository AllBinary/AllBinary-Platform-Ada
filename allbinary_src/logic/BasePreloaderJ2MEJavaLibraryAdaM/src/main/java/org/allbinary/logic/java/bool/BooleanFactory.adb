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



package body org.allbinary.logic.java.bool.BooleanFactory_Package is

   procedure Initialize_Fields (This : in out BooleanFactory'Class) is
   begin
      null;
      This.TRUE := True;
      This.FALSE := False;
      This.TRUE_STRING := To_Unbounded_String (Java_Image (This.TRUE));
      This.FALSE_STRING := To_Unbounded_String (Java_Image (This.FALSE));
      This.YES := To_Unbounded_String ("yes");
      This.NO := To_Unbounded_String ("no");
   end Initialize_Fields;

   procedure Initialize (This : in out BooleanFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BooleanFactory_Access is
      This : constant BooleanFactory_Access := new BooleanFactory;
   begin
      BooleanFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BooleanFactory_Access is
   begin
        return BooleanFactory_Package.instance;
   end getInstance;

   function toStringb (This : in out BooleanFactory; bool : Boolean) return Unbounded_String is
   begin
        if bool then
            return This.TRUE_STRING;
        else
            return This.FALSE_STRING;
        end if;
   end toStringb;

   procedure toStringb (This : in out BooleanFactory; bool : Boolean) is
      Java_Result : constant Unbounded_String := BooleanFactory'Class (This).toStringb (bool => bool);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toStringb;

begin
   null;
   instance := BooleanFactory_Package.Create;

end org.allbinary.logic.java.bool.BooleanFactory_Package;


