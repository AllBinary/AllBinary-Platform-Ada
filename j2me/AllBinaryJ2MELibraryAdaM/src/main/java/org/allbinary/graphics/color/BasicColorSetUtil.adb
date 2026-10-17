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


package body org.allbinary.graphics.color.BasicColorSetUtil_Package is

   procedure Initialize_Fields (This : in out BasicColorSetUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return BasicColorSetUtil_Access is
   begin
        return BasicColorSetUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out BasicColorSetUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicColorSetUtil_Access is
      This : constant BasicColorSetUtil_Access := new BasicColorSetUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure setBasicColorP (This : in out BasicColorSetUtil; graphics : Graphics_Access; basicColor : BasicColor_Access) is
   begin
        graphics.setColor (basicColor.intValue);
   end setBasicColorP;

   procedure setBasicColorP3 (This : in out BasicColorSetUtil; graphics : Graphics_Access; basicColor : BasicColor_Access; value : Integer) is
   begin
        graphics.setColor (value);
   end setBasicColorP3;

   procedure getInstance is
      Java_Result : constant BasicColorSetUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := BasicColorSetUtil_Package.Create;

end org.allbinary.graphics.color.BasicColorSetUtil_Package;


