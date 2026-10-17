-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.animation.text.TextChangeListener_Package is

   procedure Initialize_Fields (This : in out TextChangeListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TextChangeListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TextChangeListener_Access is
      This : constant TextChangeListener_Access := new TextChangeListener;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return TextChangeListener_Access is
   begin
        return TextChangeListener_Package.instance;
   end getInstance;

   procedure onMeasure (This : in out TextChangeListener) is
   begin
        null;
   end onMeasure;

   procedure getInstance is
      Java_Result : constant TextChangeListener_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TextChangeListener_Package.Create;

end org.allbinary.animation.text.TextChangeListener_Package;


