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


package body org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package is

   procedure Initialize_Fields (This : in out TransformInfoCustomUriTransformer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoCustomUriTransformer'Class; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) is
      transformInfoObjectConfigInterface : TransformInfoObjectConfigInterface_Access;
   begin
        BasicTransformer_Package.Initialize (This, abeClientInformation, transformInfoInterface);
        transformInfoObjectConfigInterface := TransformInfoObjectConfigInterface_Access (TransformInfoObjectConfigAndManipulatorFactory_Package.getInstance.getInstance (abeClientInformation, transformInfoInterface));
        This.setURIResolver (URIResolver_Access (CustomUriResolver_Package.Create (transformInfoObjectConfigInterface.getImportUriPath, BasicUriResolver_Access (This.getURIResolver))));
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) return TransformInfoCustomUriTransformer_Access is
      This : constant TransformInfoCustomUriTransformer_Access := new TransformInfoCustomUriTransformer;
   begin
      Initialize (This.all, abeClientInformation, transformInfoInterface);
      return This;
   end Create;

end org.allbinary.logic.visual.transform.TransformInfoCustomUriTransformer_Package;


