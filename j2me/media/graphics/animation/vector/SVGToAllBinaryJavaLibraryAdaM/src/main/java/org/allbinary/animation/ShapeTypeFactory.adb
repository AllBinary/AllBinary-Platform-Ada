-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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


package body org.allbinary.animation.ShapeTypeFactory_Package is

   procedure Initialize_Fields (This : in out ShapeTypeFactory'Class) is
   begin
      null;
      This.KEY_LINE := To_Unbounded_String ("line");
      This.KEY_CIRCLE := To_Unbounded_String ("circle");
      This.KEY_RECTANGLE := To_Unbounded_String ("rectangle");
      This.KEY_RECT := To_Unbounded_String ("rect");
      This.LINE := ShapeType_Package.Create (This.KEY_LINE);
      This.CIRCLE := ShapeType_Package.Create (This.KEY_CIRCLE);
      This.RECTANGLE := ShapeType_Package.Create (This.KEY_RECTANGLE);
   end Initialize_Fields;

   procedure Initialize (This : in out ShapeTypeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ShapeTypeFactory_Access is
      This : constant ShapeTypeFactory_Access := new ShapeTypeFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ShapeTypeFactory_Access is
   begin
        return ShapeTypeFactory_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant ShapeTypeFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := ShapeTypeFactory_Package.Create;

end org.allbinary.animation.ShapeTypeFactory_Package;


