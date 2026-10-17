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


package body org.allbinary.logic.io.AbDataOutputStream_Package is

   procedure Initialize_Fields (This : in out AbDataOutputStream'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AbDataOutputStream'Class; out_Id : OutputStream_Access) is
   begin
        DataOutputStream_Package.Initialize (This, out_Id);
   end Initialize;

   function Create (out_Id : OutputStream_Access) return AbDataOutputStream_Access is
      This : constant AbDataOutputStream_Access := new AbDataOutputStream;
   begin
      AbDataOutputStream_Package.Initialize (This.all, out_Id);
      return This;
   end Create;

end org.allbinary.logic.io.AbDataOutputStream_Package;


