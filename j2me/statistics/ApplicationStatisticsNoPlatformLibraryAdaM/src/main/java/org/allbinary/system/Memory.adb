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


package body org.allbinary.system.Memory_Package is

   procedure Initialize_Fields (This : in out Memory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out Memory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return Memory_Access is
      This : constant Memory_Access := new Memory;
   begin
      Memory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInfo return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getInfo;

end org.allbinary.system.Memory_Package;


