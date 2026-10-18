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



package body org.allbinary.graphics.threed.RatioProcessor_Package is

   procedure Initialize_Fields (This : in out RatioProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out RatioProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RatioProcessor_Access is
      This : constant RatioProcessor_Access := new RatioProcessor;
   begin
      RatioProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   procedure setCustom (This : in out RatioProcessor; width : Integer; height : Integer; ratio : Float) is
   begin
        null;
   end setCustom;

end org.allbinary.graphics.threed.RatioProcessor_Package;


