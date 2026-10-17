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


package body org.allbinary.init.NoLicense_Package is

   procedure Initialize_Fields (This : in out NoLicense'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NoLicense'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NoLicense_Access is
      This : constant NoLicense_Access := new NoLicense;
   begin
      NoLicense_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (classLoader : ClassLoader_Access; pathString : Unbounded_String) is
   begin
        Globals_Package.init (classLoader, pathString);
   end init;

end org.allbinary.init.NoLicense_Package;


