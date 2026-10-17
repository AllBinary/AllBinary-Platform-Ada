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


package body org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package is

   procedure Initialize_Fields (This : in out TransformDocumentFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformDocumentFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformDocumentFactory_Access is
      This : constant TransformDocumentFactory_Access := new TransformDocumentFactory;
   begin
      TransformDocumentFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance return TransformDocumentInterface_Access is
   begin
        return TransformDocumentInterface_Access (TransformDocument_Package.Create);
   end getInstance;

end org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package;


