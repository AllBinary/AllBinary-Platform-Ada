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



package body org.allbinary.logic.io.NullCloseable_Package is

   procedure Initialize_Fields (This : in out NullCloseable'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullCloseable'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullCloseable_Access is
      This : constant NullCloseable_Access := new NullCloseable;
   begin
      NullCloseable_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws IOException
   procedure close (This : in out NullCloseable) is
   begin
        null;
   end close;

begin
   null;
   NULL_CLOSEABLE := NullCloseable_Package.Create;

end org.allbinary.logic.io.NullCloseable_Package;


