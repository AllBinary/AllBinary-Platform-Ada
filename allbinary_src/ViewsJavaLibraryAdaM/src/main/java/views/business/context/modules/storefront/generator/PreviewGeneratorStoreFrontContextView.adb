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


package body views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package is

   procedure Initialize_Fields (This : in out PreviewGeneratorStoreFrontContextView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out PreviewGeneratorStoreFrontContextView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        GeneratorStoreFrontContextView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return PreviewGeneratorStoreFrontContextView_Access is
      This : constant PreviewGeneratorStoreFrontContextView_Access := new PreviewGeneratorStoreFrontContextView;
   begin
      PreviewGeneratorStoreFrontContextView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function view (This : in out PreviewGeneratorStoreFrontContextView) return Unbounded_String is
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
   begin
        begin
            httpTransformInfoInterface := TransformInfoHttpInterface_Access (This.getTransformInfoInterface);
            httpTransformInfoInterface.getPropertiesHashMap.put (TransformInfoData_Package.getInstance.PARTIAL, (CommonSeps_Package.getInstance.SPACE) + (TransformInfosData_Package.getInstance.PREVIEW));
            return This.view (TransformInfosData_Package.getInstance.PREVIEW);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PreviewGeneratorStoreFrontContextView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

end views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView_Package;


