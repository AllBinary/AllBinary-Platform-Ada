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



package body org.allbinary.data.tree.dom.DomData_Package is

   procedure Initialize_Fields (This : in out DomData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DomData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DomData_Access is
      This : constant DomData_Access := new DomData;
   begin
      DomData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   ID := To_Unbounded_String ("id");
   CHILD := To_Unbounded_String ("child");
   NAME := To_Unbounded_String ("name");
   VALUE := To_Unbounded_String ("value");
   INDEX := To_Unbounded_String ("index");

end org.allbinary.data.tree.dom.DomData_Package;


