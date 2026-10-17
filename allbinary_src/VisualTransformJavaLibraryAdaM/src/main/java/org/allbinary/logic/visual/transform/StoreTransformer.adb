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


package body org.allbinary.logic.visual.transform.StoreTransformer_Package is

   procedure Initialize_Fields (This : in out StoreTransformer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreTransformer'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        BasicTransformer_Package.Initialize (This, abeClientInformation, transformInfoInterface);
        This.setURIResolver (URIResolver_Access (StoreUriResolver_Package.Create (This.getTransformInfoInterface, BasicUriResolver_Access (This.getURIResolver))));
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return StoreTransformer_Access is
      This : constant StoreTransformer_Access := new StoreTransformer;
   begin
      StoreTransformer_Package.Initialize (This.all, abeClientInformation_Param, transformInfoInterface_Param);
      return This;
   end Create;

end org.allbinary.logic.visual.transform.StoreTransformer_Package;


