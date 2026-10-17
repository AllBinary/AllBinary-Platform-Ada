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


package body org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package is

   procedure Initialize_Fields (This : in out OverrideStoreTransformInfoObjectConfig'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out OverrideStoreTransformInfoObjectConfig'Class; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        GenericStoreTransformInfoObjectConfig_Package.Initialize (This, abeClientInformation, transformInfoInterface);
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) return OverrideStoreTransformInfoObjectConfig_Access is
      This : constant OverrideStoreTransformInfoObjectConfig_Access := new OverrideStoreTransformInfoObjectConfig;
   begin
      OverrideStoreTransformInfoObjectConfig_Package.Initialize (This.all, abeClientInformation, transformInfoInterface);
      return This;
   end Create;

   procedure Initialize (This : in out OverrideStoreTransformInfoObjectConfig'Class; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; document : Document_Access) is
   begin
        GenericStoreTransformInfoObjectConfig_Package.Initialize (This, abeClientInformation, transformInfoInterface, document);
        This.setDocument (This.generate (This.toXmlDoc));
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; document : Document_Access) return OverrideStoreTransformInfoObjectConfig_Access is
      This : constant OverrideStoreTransformInfoObjectConfig_Access := new OverrideStoreTransformInfoObjectConfig;
   begin
      OverrideStoreTransformInfoObjectConfig_Package.Initialize (This.all, abeClientInformation, transformInfoInterface, document);
      return This;
   end Create;

   procedure Initialize (This : in out OverrideStoreTransformInfoObjectConfig'Class; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; name : Unbounded_String; type_Id : Unbounded_String) is
   begin
        GenericStoreTransformInfoObjectConfig_Package.Initialize (This, abeClientInformation, transformInfoInterface, name, type_Id);
        This.setDocument (This.generate (This.toXmlDoc));
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; name : Unbounded_String; type_Id : Unbounded_String) return OverrideStoreTransformInfoObjectConfig_Access is
      This : constant OverrideStoreTransformInfoObjectConfig_Access := new OverrideStoreTransformInfoObjectConfig;
   begin
      OverrideStoreTransformInfoObjectConfig_Package.Initialize (This.all, abeClientInformation, transformInfoInterface, name, type_Id);
      return This;
   end Create;

   --  throws Exception
   function generate (This : in out OverrideStoreTransformInfoObjectConfig; objectConfigDocument : Document_Access) return Document_Access is
      newObjectConfigDocument : Document_Access;
   begin
        newObjectConfigDocument := GenericStoreTransformInfoObjectConfig (This).generate (objectConfigDocument);
        return newObjectConfigDocument;
   end generate;

   procedure generate (This : in out OverrideStoreTransformInfoObjectConfig; objectConfigDocument : Document_Access) is
      Java_Result : constant Document_Access := OverrideStoreTransformInfoObjectConfig'Class (This).generate (objectConfigDocument);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end generate;

end org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package;


