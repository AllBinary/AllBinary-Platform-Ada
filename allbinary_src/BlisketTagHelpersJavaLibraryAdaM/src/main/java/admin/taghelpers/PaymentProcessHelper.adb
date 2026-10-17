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


package body admin.taghelpers.PaymentProcessHelper_Package is

   procedure Initialize_Fields (This : in out PaymentProcessHelper'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentProcessHelper'Class; propertiesHashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) is
      propertiesHashMap : HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : PageContext_Access := PageContext_Access (pageContext_Param);
      transformInfoInterface : TransformInfoHttpInterface_Access;
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        transformInfoInterface := TransformInfoHttpInterface_Access (TransformInfoHttpFactory_Package.getInstance (propertiesHashMap, pageContext));
        This.paymentProcessorComponent := PaymentProcessorComponent_Package.Create (transformInfoInterface);
   end Initialize;

   function Create (propertiesHashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return PaymentProcessHelper_Access is
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


