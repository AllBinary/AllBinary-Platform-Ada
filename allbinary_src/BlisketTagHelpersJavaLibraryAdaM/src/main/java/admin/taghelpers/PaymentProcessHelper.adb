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


with org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;

package body admin.taghelpers.PaymentProcessHelper_Package is

   package TransformInfoHttpFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   procedure Initialize_Fields (This : in out PaymentProcessHelper'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentProcessHelper'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      transformInfoInterface : TransformInfoHttpInterface_Access;
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        transformInfoInterface := TransformInfoHttpInterface_Access (TransformInfoHttpFactory_Package.getInstance (propertiesHashMap, pageContext));
        This.paymentProcessorComponent := PaymentProcessorComponent_Package.Create (transformInfoInterface);
   end Initialize;

   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return PaymentProcessHelper_Access is
      This : constant PaymentProcessHelper_Access := new PaymentProcessHelper;
   begin
      PaymentProcessHelper_Package.Initialize (This.all, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   --  throws Exception
   function process (This : in out PaymentProcessHelper) return Unbounded_String is
   begin
        return This.paymentProcessorComponent.view;
   end process;

end admin.taghelpers.PaymentProcessHelper_Package;


