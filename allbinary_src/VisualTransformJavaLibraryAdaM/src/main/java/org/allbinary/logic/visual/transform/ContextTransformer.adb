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


package body org.allbinary.logic.visual.transform.ContextTransformer_Package is

   procedure Initialize_Fields (This : in out ContextTransformer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ContextTransformer'Class; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        BasicTransformer_Package.Initialize (This, abeClientInformation, transformInfoInterface);
        This.setURIResolver (URIResolver_Access (ContextUriResolver_Package.Create (BasicUriResolver_Access (This.getURIResolver))));
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) return ContextTransformer_Access is
      This : constant ContextTransformer_Access := new ContextTransformer;
   begin
      Initialize (This.all, abeClientInformation, transformInfoInterface);
      return This;
   end Create;

end org.allbinary.logic.visual.transform.ContextTransformer_Package;


