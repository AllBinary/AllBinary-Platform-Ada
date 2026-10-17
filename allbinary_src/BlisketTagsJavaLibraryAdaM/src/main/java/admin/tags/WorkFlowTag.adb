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


package body admin.tags.WorkFlowTag_Package is

   procedure Initialize_Fields (This : in out WorkFlowTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out WorkFlowTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        This.setTagHelperFactory (WorkFlowHelperFactory_Package.Create);
        This.setTagRequestHelperFactory (WorkFlowHelperFactory_Package.Create);
   end Initialize;

   function Create return WorkFlowTag_Access is
      This : constant WorkFlowTag_Access := new WorkFlowTag;
   begin
      Initialize (This.all);
      return This;
   end Create;

end admin.tags.WorkFlowTag_Package;


