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


package body org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package is

   procedure Initialize_Fields (This : in out TransformInfoHttpComposite'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoHttpComposite'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & transformInfoInterface.getName, TransformInfoHttpComposite_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        This.transformInfoInterface := TransformInfoHttpInterface_Access (transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return TransformInfoHttpComposite_Access is
      This : constant TransformInfoHttpComposite_Access := new TransformInfoHttpComposite;
   begin
      TransformInfoHttpComposite_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function getTransformInfoInterface (This : in out TransformInfoHttpComposite) return TransformInfoInterface_Access is
   begin
        return This.transformInfoInterface;
   end getTransformInfoInterface;

   function getWeblisketSession (This : in out TransformInfoHttpComposite) return WeblisketSession_Access is
   begin
        return WeblisketSession_Package.Create (This.getPropertiesHashMap, This.getPageContext);
   end getWeblisketSession;

   function getPageContext (This : in out TransformInfoHttpComposite) return PageContext_Access is
   begin
        return This.transformInfoInterface.getPageContext;
   end getPageContext;

   function getPropertiesHashMap (This : in out TransformInfoHttpComposite) return HashMap_Access is
   begin
        return This.transformInfoInterface.getPropertiesHashMap;
   end getPropertiesHashMap;

end org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package;


