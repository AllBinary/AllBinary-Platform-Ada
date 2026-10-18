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



package body org.allbinary.logic.io.AbIOSystem_Package is

   procedure Initialize_Fields (This : in out AbIOSystem'Class) is
   begin
      null;
      This.type_Id := To_Unbounded_String ("java.io");
   end Initialize_Fields;

   procedure Initialize (This : in out AbIOSystem'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AbIOSystem_Access is
      This : constant AbIOSystem_Access := new AbIOSystem;
   begin
      AbIOSystem_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AbIOSystem_Access is
   begin
        return AbIOSystem_Package.instance;
   end getInstance;

   function getType (This : in out AbIOSystem) return Unbounded_String is
   begin
        return This.type_Id;
   end getType;

   function isType (This : in out AbIOSystem; type_Id : Unbounded_String) return Boolean is
   begin
        if (Java_Compare_To (This.type_Id, type_Id)) = (0) then
            return True;
        else
            return False;
        end if;
   end isType;

   procedure isType (This : in out AbIOSystem; type_Id : Unbounded_String) is
      Java_Result : constant Boolean := AbIOSystem'Class (This).isType (type_Id => type_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isType;

begin
   null;
   instance := AbIOSystem_Package.Create;

end org.allbinary.logic.io.AbIOSystem_Package;


