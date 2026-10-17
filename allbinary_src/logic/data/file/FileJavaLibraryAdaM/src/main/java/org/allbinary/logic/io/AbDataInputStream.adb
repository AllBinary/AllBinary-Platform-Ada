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


package body org.allbinary.logic.io.AbDataInputStream_Package is

   procedure Initialize_Fields (This : in out AbDataInputStream'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AbDataInputStream'Class; out_Id : InputStream_Access) is
   begin
        DataInputStream_Package.Initialize (This, out_Id);
   end Initialize;

   function Create (out_Id : InputStream_Access) return AbDataInputStream_Access is
      This : constant AbDataInputStream_Access := new AbDataInputStream;
   begin
      Initialize (This.all, out_Id);
      return This;
   end Create;

end org.allbinary.logic.io.AbDataInputStream_Package;


