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


package body org.allbinary.view.ViewPositionFactory_Package is

   procedure Initialize_Fields (This : in out ViewPositionFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ViewPositionFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ViewPositionFactory_Access is
      This : constant ViewPositionFactory_Access := new ViewPositionFactory;
   begin
      ViewPositionFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out ViewPositionFactory) return ViewPositionBase_Access is
   begin
        return ViewPosition_Package.getInstanceD;
   end getInstance;

end org.allbinary.view.ViewPositionFactory_Package;


