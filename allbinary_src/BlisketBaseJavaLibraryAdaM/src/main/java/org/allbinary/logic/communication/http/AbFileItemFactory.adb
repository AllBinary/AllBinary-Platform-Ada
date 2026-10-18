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



package body org.allbinary.logic.communication.http.AbFileItemFactory_Package is

   procedure Initialize_Fields (This : in out AbFileItemFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AbFileItemFactory'Class) is
   begin
        DefaultFileItemFactory_Package.Initialize (This);
   end Initialize;

   function Create return AbFileItemFactory_Access is
      This : constant AbFileItemFactory_Access := new AbFileItemFactory;
   begin
      AbFileItemFactory_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.logic.communication.http.AbFileItemFactory_Package;


