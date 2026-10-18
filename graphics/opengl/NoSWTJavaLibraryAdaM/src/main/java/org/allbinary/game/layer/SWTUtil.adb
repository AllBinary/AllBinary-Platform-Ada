-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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



package body org.allbinary.game.layer.SWTUtil_Package is

   procedure Initialize_Fields (This : in out SWTUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SWTUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SWTUtil_Access is
      This : constant SWTUtil_Access := new SWTUtil;
   begin
      SWTUtil_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   isSWT := False;
   SWT := To_Unbounded_String ("SWT");

end org.allbinary.game.layer.SWTUtil_Package;


