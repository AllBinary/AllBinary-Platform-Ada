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
      BasicColorSetUtil_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setBasicColorP (This : in out BasicColorSetUtil; graphics_Param : access Graphics'Class; basicColor_Param : access BasicColor'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        graphics.setColor (basicColor.intValue);
   end setBasicColorP;

   procedure setBasicColorP3 (This : in out BasicColorSetUtil; graphics_Param : access Graphics'Class; basicColor_Param : access BasicColor'Class; value : Integer) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        graphics.setColor (value);
   end setBasicColorP3;

begin
   null;
   instance := BasicColorSetUtil_Package.Create;

end org.allbinary.graphics.color.BasicColorSetUtil_Package;


