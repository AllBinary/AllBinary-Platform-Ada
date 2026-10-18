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



package body org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package is

   procedure Initialize_Fields (This : in out TransformInfoFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformInfoFactory_Access is
      This : constant TransformInfoFactory_Access := new TransformInfoFactory;
   begin
      TransformInfoFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (This : in out TransformInfoFactory) return TransformInfoInterface_Access is
   begin
        return null;
   end getInstance;

end org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package;


