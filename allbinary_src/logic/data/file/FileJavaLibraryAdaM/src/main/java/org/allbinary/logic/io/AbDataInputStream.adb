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


   procedure Initialize (This : in out AbDataInputStream'Class; out_Id_Param : access InputStream_Package.InputStream'Class) is
      out_Id : constant InputStream_Access := InputStream_Access (out_Id_Param);
   begin
        DataInputStream_Package.Initialize (This, out_Id);
   end Initialize;

   function Create (out_Id_Param : access InputStream_Package.InputStream'Class) return AbDataInputStream_Access is
      This : constant AbDataInputStream_Access := new AbDataInputStream;
   begin
      AbDataInputStream_Package.Initialize (This.all, out_Id_Param);
      return This;
   end Create;

end org.allbinary.logic.io.AbDataInputStream_Package;


