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


with taghelpers.transform.info.TransformInfoHelperFactory_Package; use taghelpers.transform.info.TransformInfoHelperFactory_Package;

package body tags.transform.info.TransformInfoTableTag_Package is

   package TransformInfoHelperFactory_Package renames Standard.taghelpers.transform.info.TransformInfoHelperFactory_Package;
   procedure Initialize_Fields (This : in out TransformInfoTableTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoTableTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        TransformInfoTableTag'Class (This).setTagHelperFactory (TransformInfoHelperFactory_Package.Create);
   end Initialize;

   function Create return TransformInfoTableTag_Access is
      This : constant TransformInfoTableTag_Access := new TransformInfoTableTag;
   begin
      TransformInfoTableTag_Package.Initialize (This.all);
      return This;
   end Create;

end tags.transform.info.TransformInfoTableTag_Package;


