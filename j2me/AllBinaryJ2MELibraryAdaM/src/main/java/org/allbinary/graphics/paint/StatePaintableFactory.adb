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


package body org.allbinary.graphics.paint.StatePaintableFactory_Package is

   procedure Initialize_Fields (This : in out StatePaintableFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out StatePaintableFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return StatePaintableFactory_Access is
      This : constant StatePaintableFactory_Access := new StatePaintableFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return StatePaintable_Access is
   begin
        return StatePaintableFactory_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant StatePaintable_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := StatePaintable_Package.Create;

end org.allbinary.graphics.paint.StatePaintableFactory_Package;


