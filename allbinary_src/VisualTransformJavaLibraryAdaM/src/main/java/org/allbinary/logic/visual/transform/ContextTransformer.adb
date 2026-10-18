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


with org.allbinary.data.tree.dom.BasicUriResolver_Package; use org.allbinary.data.tree.dom.BasicUriResolver_Package;
with org.allbinary.data.tree.dom.ContextUriResolver_Package; use org.allbinary.data.tree.dom.ContextUriResolver_Package;

package body org.allbinary.logic.visual.transform.ContextTransformer_Package is

   package BasicUriResolver_Package renames Standard.org.allbinary.data.tree.dom.BasicUriResolver_Package;
   package ContextUriResolver_Package renames Standard.org.allbinary.data.tree.dom.ContextUriResolver_Package;
   procedure Initialize_Fields (This : in out ContextTransformer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ContextTransformer'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        BasicTransformer_Package.Initialize (This, abeClientInformation, transformInfoInterface);
        ContextTransformer'Class (This).setURIResolver (URIResolver_Access (ContextUriResolver_Package.Create (BasicUriResolver_Access (ContextTransformer'Class (This).getURIResolver))));
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return ContextTransformer_Access is
      This : constant ContextTransformer_Access := new ContextTransformer;
   begin
      ContextTransformer_Package.Initialize (This.all, abeClientInformation_Param, transformInfoInterface_Param);
      return This;
   end Create;

end org.allbinary.logic.visual.transform.ContextTransformer_Package;


